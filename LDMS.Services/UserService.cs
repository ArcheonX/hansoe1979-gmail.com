using Dapper;
using LDMS.Core;
using LDMS.Identity;
using LDMS.ViewModels;
using LDMS.ViewModels.Menu;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace LDMS.Services
{
    //public interface IUserService
    //{
    //    UserApplicationUser Authenticate(string username, string password);
    //    IEnumerable<UserApplicationUser> GetAll();
    //}
    public class UserService : ILDMSService
    {
        private readonly JwtSettings _jwtSettings;
        private readonly ILogger<UserService> _logger;
        protected IHttpContextAccessor HttpContextAccessor { get; private set; }
        protected HttpContext HttpContext { get; private set; }
        private readonly LDAPAuthenticationService _ldAPAuthenticationService;
        private readonly LocalAuthenticationService _localAuthenticationService;
        public UserService(
            JwtSettings jwtSettings, ILogger<UserService> logger,
            LDAPAuthenticationService ldAPAuthenticationService,
            LocalAuthenticationService localAuthenticationService,
            ILDMSConnection iLDMSConnection, IHttpContextAccessor httpContextAccessor) : base(iLDMSConnection)
        {
            HttpContextAccessor = httpContextAccessor;
            HttpContext = httpContextAccessor.HttpContext;
            _jwtSettings = jwtSettings;
            _logger = logger;
            _ldAPAuthenticationService = ldAPAuthenticationService;
            _localAuthenticationService = localAuthenticationService;
        }
        public IEnumerable<LDMS_M_User> GetAll()
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var items = Connection.Query<LDMS_M_User, LDMS_M_UserRole, LDMS_M_Role, LDMS_M_Department, LDMS_M_Plant, LDMS_M_User>
                (_schema + ".[usp_User_READ_ALL]",
                  map: (user, userRole, role, depart, plant) =>
                  {
                      if (userRole != null)
                      {
                          userRole.LDMS_M_Role = role;
                          userRole.Password = null;
                      }
                      user.LDMS_M_UserRole = userRole;
                      if (depart != null)
                      {
                          user.LDMS_M_Department = depart;
                      }
                      if (plant != null)
                      {
                          user.LDMS_M_Plant = plant;
                      }
                      return user;
                  },
                  splitOn: "UserRoleId,RoleId,ID_Department,ID_Plant");
                var user = items.ToList();
                return user;
            }
        }
        public LDMS_M_User Authenticate(string username, string password)
        {
            try
            {
                bool isAuthenPass = _ldAPAuthenticationService.Authenticate(username, password);
                if (!isAuthenPass)
                {
                    isAuthenPass = _localAuthenticationService.Authenticate(username, password);
                }
                if (isAuthenPass)
                {
                    using (System.Data.IDbConnection conn = Connection)
                    {
                        var items = Connection.Query<LDMS_M_User, LDMS_M_UserRole, LDMS_M_Role, LDMS_M_Department, LDMS_M_Plant, LDMS_M_User>
                        (_schema + ".[usp_User_READ_BY_EmployeeId] @param_EmployeeId",
                          map: (user, userRole, role, depart, plant) =>
                          {
                              if (userRole != null)
                              {
                                  userRole.LDMS_M_Role = role;
                              }
                              user.LDMS_M_UserRole = userRole;
                              user.LDMS_M_Department = depart;
                              user.LDMS_M_Plant = plant;
                              return user;
                          },
                          splitOn: "UserRoleId,RoleId,ID_Department,ID_Plant",
                            param: new { @param_EmployeeId = username });

                        var user = items.FirstOrDefault();
                        if (user != null)
                        {
                            user.Token = JwtManager.GenerateJWT(HttpContext, user, _jwtSettings);
                            System.Security.Principal.GenericIdentity userIdentity = new System.Security.Principal.GenericIdentity(user.EmployeeID);
                            userIdentity.AddClaim(new Claim(ClaimTypes.Role, user.LDMS_M_UserRole.ID_Role.ToString()));
                            userIdentity.AddClaim(new Claim(ClaimTypes.NameIdentifier, user.EmployeeID));
                            HttpContext.User = new ClaimsPrincipal(userIdentity); ;
                            user.LDMS_M_UserRole.Password = null; 
                            HttpContext.Response.Set("FIRSNAME", user.Name, 120);
                            HttpContext.Response.Set("LASTNAME", user.Surname, 120);
                            HttpContext.Response.Set("FULLNAME", string.Format("{0} {1}",user.Name, user.Surname), 120);
                            HttpContext.Response.Set("EMPLOYEEID", user.EmployeeID, 120);
                            HttpContext.Response.Set("JOINDATE", user.JoinDate.HasValue ? string.Format("{0:dd-MMM-yyyy", user.JoinDate.Value) : "", 120);
                            HttpContext.Response.Set("DEPARTMENT", user.LDMS_M_Department != null ? string.Format("{0} {1}", user.LDMS_M_Department.DepartmentID,"" /*user.LDMS_M_Department.DepartmentName_EN*/) : "", 120);
                            HttpContext.Response.Set("FACEIMAGE", "~/assets/images/users/1.jpg", 120);
                            return user;
                        }
                        else
                        {
                            throw new Exception("Unauthorized");
                        }
                    }
                }
                else
                {
                    throw new Exception("Unauthorized");
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Unauthorized");
            }
        }

        public async Task<List<NavigationMenu>> GetMenuItemsAsync()
        {
            var validateToken = new TokenValidationParameters
            {
                ValidateIssuer = true,
                ValidateAudience = true,
                ValidateLifetime = true,
                ValidateIssuerSigningKey = true,
                ValidIssuer = _jwtSettings.JwtIssuer ?? string.Empty,
                ValidAudience = _jwtSettings.JwtAudience ?? string.Empty,
                IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_jwtSettings.JwtKey ?? string.Empty))
            };
            var token = JwtManager.GetToken(HttpContext.Request, validateToken);
            if (!JwtManager.IsTokenValid(token, validateToken))
            {
                throw new Exception("Unauthorized");
            }
            var cliams = JwtManager.GetClaims(token, validateToken).ToList();
            Claim claim = cliams.FirstOrDefault(o => o.Type.ToUpper() == ClaimTypes.Role.ToUpper());
            if (claim == null) throw new Exception("Unauthorized");
            int rolId = 0;
            int.TryParse(claim.Value, out rolId);
            return BuildUserMenu(rolId).AsList();
        }

        public string GetUserId(ClaimsPrincipal user)
        {
            return ((ClaimsIdentity)user.Identity).FindFirst(ClaimTypes.NameIdentifier)?.Value;
        }

        private IEnumerable<NavigationMenu> BuildUserMenu(int roleId)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var items = Connection.Query<LDMS_M_SubModule, LDMS_M_Module, LDMS_M_RolePermission, LDMS_M_Role, LDMS_M_SubModule>
                (_schema + ".[usp_RoleMenu_READ_By_Role] @paramRoleId",
                  map: (submodule, module, rolepermission, role) =>
                  {
                      submodule.LDMS_M_Module = module;
                      submodule.LDMS_M_RolePermission = rolepermission;
                      if (rolepermission != null)
                      {
                          submodule.LDMS_M_RolePermission.LDMS_M_Role = role;
                      }
                      return submodule;
                  },
                  splitOn: "ID_Module,RolePermissionId,RoleId",
                  param: new { @paramRoleId = roleId });

                var groupMenu = items.OrderBy(e => e.LDMS_M_Module.Module_Sequence).GroupBy(e => e.LDMS_M_Module.ID_Module);
                foreach (var item in groupMenu)
                {
                    var module = items.Where(e => e.LDMS_M_Module.ID_Module == item.Key).Select(e => e.LDMS_M_Module).FirstOrDefault() ;
                    yield return new NavigationMenu()
                    {
                        ActionName = "",
                        CadWrite = true,
                        CanRead = true,
                        ControllerName = "",
                        MenuIco = "",
                        MenuID = module.ModuleID,
                        MenuName = module.ModuleName_EN,
                        MenuUrl = module.Module_URL,
                        SubMenus = item.OrderBy(e => e.Sequence).Select(e => new SubNavigationMenu()
                        {
                            MenuUrl = e.URL,
                            ActionName = "",
                            CadWrite = true,
                            CanRead = true,
                            ControllerName = "",
                            MenuIco = "",
                            MenuID = e.SubModuleID,
                            MenuName = e.SubModuleName_EN
                        }).ToList()
                    };
                }
            } 
        } 
    }
}