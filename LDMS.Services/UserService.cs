using Dapper;
using LDMS.Core;
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
                            user.Token = GenerateJWT(user);
                            System.Security.Principal.GenericIdentity userIdentity = new System.Security.Principal.GenericIdentity(user.EmployeeID);
                            userIdentity.AddClaim(new Claim(ClaimTypes.Role, user.LDMS_M_UserRole.ID_Role.ToString()));
                            userIdentity.AddClaim(new Claim(ClaimTypes.NameIdentifier, user.EmployeeID));
                            HttpContext.User = new ClaimsPrincipal(userIdentity); ;
                            user.LDMS_M_UserRole.Password = null;
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
            //var isAuthenticated = HttpContext.User.Identity.IsAuthenticated;
            //if (!isAuthenticated)
            //    return new List<NavigationMenu>(); 
            return BuildUserMenu(/*GetUserId(HttpContext.User)*/1).AsList();
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
            /*
             var list = connection.Query<Order, OrderDetail, Order>(
                 sql,
                 (order, orderDetail) =>
                 {
                     Order orderEntry;

                     if (!orderDictionary.TryGetValue(order.OrderID, out orderEntry))
                     {
                         orderEntry = order;
                         orderEntry.OrderDetails = new List<OrderDetail>();
                         orderDictionary.Add(orderEntry.OrderID, orderEntry);
                     }

                     orderEntry.OrderDetails.Add(orderDetail);
                     return orderEntry;
                 },
                 splitOn: "OrderDetailID")
             .Distinct()
             .ToList();*/
        }
        private string GenerateJWT(LDMS_M_User authenticatedUser)
        {
            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_jwtSettings.JwtKey));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256Signature);
            List<Claim> claims = new List<Claim>
            {
                new Claim(JwtRegisteredClaimNames.Sub, authenticatedUser.EmployeeID),
                new Claim(ClaimTypes.GivenName, authenticatedUser.Name),
                new Claim(ClaimTypes.Surname, authenticatedUser.Surname),
                new Claim(ClaimTypes.Email, authenticatedUser.Email),
                new Claim(ClaimTypes.NameIdentifier, authenticatedUser.EmployeeID),
                new Claim(ClaimTypes.Name, authenticatedUser.EmployeeID),
                new Claim("ID_Division", authenticatedUser.ID_Division.ToString()),
                new Claim("ID_Center", authenticatedUser.ID_Center.ToString()),
                new Claim("ID_Department", authenticatedUser.ID_Department.ToString()),
                new Claim("ID_Section", authenticatedUser.ID_Section.ToString()),
                new Claim(ClaimTypes.Role, authenticatedUser.LDMS_M_UserRole!=null? authenticatedUser.LDMS_M_UserRole.ID_Role.ToString():"0"),
            };
            var token = new JwtSecurityToken(_jwtSettings.JwtIssuer, _jwtSettings.JwtIssuer,
              claims,
              expires: DateTime.Now.AddMinutes(120),
              signingCredentials: credentials);
            return new JwtSecurityTokenHandler().WriteToken(token);
        }
    }
}