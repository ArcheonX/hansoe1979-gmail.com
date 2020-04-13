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

        public async Task<ServiceResult> GetAll()
        {
            try
            {
                return new ServiceResult(await GetAll(null, null, null));
            }
            catch (Exception x)
            {
                return new ServiceResult(x);
            }
        }
        public async Task<ServiceResult> GetAll(string employeeId = null, string employeeName = null, List<int> departments = null)
        {
            try
            {
                using (System.Data.IDbConnection conn = Connection)
                {
                    var items = Connection.Query<LDMS_M_User, LDMS_M_UserRole, LDMS_M_Role, LDMS_M_Department, LDMS_M_Plant, LDMS_M_User>
                    (_schema + ".[usp_User_READ_ALL] @paramEmployeeId,@paramEmployeeName,@paramdepartments",
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
                              user.ID_Department = depart.ID_Department;
                          }
                          if (plant != null)
                          {
                              user.LDMS_M_Plant = plant;
                          }
                          return user;
                      },
                      splitOn: "UserRoleId,RoleId,ID_Department,ID_Plant",
                      param: new { @paramEmployeeId = employeeId, @paramEmployeeName = employeeName, @paramdepartments = departments != null ? string.Join(",", departments) : null });
                    var user = items.ToList();
                    return new ServiceResult(user);
                }
            }
            catch (Exception x)
            {
                return new ServiceResult(x);
            }
        }
        public async Task<ServiceResult> GetUserByEmployeeId(string employeeId)
        {
            try
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
                             if (plant != null)
                             {
                                 user.LDMS_M_Plant = plant;
                             }
                             if (depart != null)
                             {
                                 user.LDMS_M_Department = depart;
                                 user.ID_Department = depart.ID_Department;
                             }
                             return user;
                         },
                         splitOn: "UserRoleId,RoleId,ID_Department,ID_Plant",
                           param: new { @param_EmployeeId = employeeId });

                    var user = items.FirstOrDefault();
                    return new ServiceResult(user);
                }
            }
            catch (Exception x)
            {
                return new ServiceResult(x);
            }
        }
        public async Task<ServiceResult> GetAllEmployeeByDepartmentId(int departmentId)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var items = Connection.Query<LDMS_M_User, LDMS_M_UserRole, LDMS_M_Role, LDMS_M_Department, LDMS_M_Plant, LDMS_M_User>
                   (_schema + ".[usp_User_READ_BY_DepartmentId] @param_DepartmentId",
                     map: (user, userRole, role, depart, plant) =>
                     {
                         if (userRole != null)
                         {
                             userRole.LDMS_M_Role = role;
                         }
                         user.LDMS_M_UserRole = userRole;
                         if (plant != null)
                         {
                             user.LDMS_M_Plant = plant;
                         }
                         if (depart != null)
                         {
                             user.LDMS_M_Department = depart;
                             user.ID_Department = depart.ID_Department;
                         }
                         return user;
                     },
                     splitOn: "UserRoleId,RoleId,ID_Department,ID_Plant",
                       param: new { @param_DepartmentId = departmentId });
                var user = items.ToList();
                return new ServiceResult(user);
            }
        }
        public async Task<ServiceResult> GetAllEmployeeBySectionId(int sectionId)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var items = Connection.Query<LDMS_M_User, LDMS_M_UserRole, LDMS_M_Role, LDMS_M_Department, LDMS_M_Plant, LDMS_M_User>
                   (_schema + ".[usp_User_READ_BY_SectionId] @param_SectionId",
                     map: (user, userRole, role, depart, plant) =>
                     {
                         if (userRole != null)
                         {
                             userRole.LDMS_M_Role = role;
                         }
                         user.LDMS_M_UserRole = userRole;
                         if (plant != null)
                         {
                             user.LDMS_M_Plant = plant;
                         }
                         if (depart != null)
                         {
                             user.LDMS_M_Department = depart;
                             user.ID_Department = depart.ID_Department;
                         }
                         return user;
                     },
                     splitOn: "UserRoleId,RoleId,ID_Department,ID_Plant",
                       param: new { @param_SectionId = sectionId });
                var user = items.ToList();
                return new ServiceResult(user);
            }
        }

        public async Task<ServiceResult> Authenticattion(string username, string password)
        {
            try
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
                    if (user == null)
                    {
                        throw new Exception("Unauthorized");
                    }
                    bool isAuthenPass = _ldAPAuthenticationService.Authenticate(username, password);
                    if (!isAuthenPass)
                    {
                        var passwordHash = PasswordHelper.GenerateSaltedHash(password, user.LDMS_M_UserRole.passwordSalt);
                        isAuthenPass = _localAuthenticationService.Authenticate(username, passwordHash);
                    }
                    if (!isAuthenPass) { throw new Exception("Unauthorized"); }
                    List<Claim> claims = new List<Claim>
                        {
                            new Claim(JwtRegisteredClaimNames.Sub, user.EmployeeID),
                            new Claim(ClaimTypes.GivenName, string.IsNullOrEmpty(user.Name)?"":user.Name),
                            new Claim(ClaimTypes.Surname, string.IsNullOrEmpty(user.Surname)?"":user.Surname),
                            new Claim(ClaimTypes.Email, string.IsNullOrEmpty(user.Email)?"":user.Email),
                            new Claim(ClaimTypes.NameIdentifier, user.EmployeeID),
                            new Claim(ClaimTypes.Name, user.EmployeeID),
                            new Claim("ID_Division", user.ID_Division.GetValueOrDefault().ToString()),
                            new Claim("ID_Center", user.ID_Center.GetValueOrDefault().ToString()),
                            new Claim("ID_Department", user.ID_Department.GetValueOrDefault().ToString()),
                            new Claim("ID_Section",user.LDMS_M_UserRole!=null? user.LDMS_M_UserRole.ID_Section.ToString():""),
                            new Claim(ClaimTypes.Role, user.LDMS_M_UserRole!=null? user.LDMS_M_UserRole.ID_Role.ToString():"0"),
                        };
                    user.Token = JwtManager.Instance.GenerateJWT(claims);
                    user.RefreshToken = JwtManager.Instance.GenerateRefreshToken();
                    System.Security.Principal.GenericIdentity userIdentity = new System.Security.Principal.GenericIdentity(user.EmployeeID);
                    userIdentity.AddClaim(new Claim(ClaimTypes.Role, user.LDMS_M_UserRole.ID_Role.ToString()));
                    userIdentity.AddClaim(new Claim(ClaimTypes.NameIdentifier, user.EmployeeID));
                    HttpContext.User = new ClaimsPrincipal(userIdentity);
                    user.LDMS_M_UserRole.Password = null;
                    HttpContext.Response.Set("FIRSNAME", user.Name, 120);
                    HttpContext.Response.Set("LASTNAME", user.Surname, 120);
                    HttpContext.Response.Set("FULLNAME", string.Format("{0} {1}", user.Name, user.Surname), 120);
                    HttpContext.Response.Set("EMPLOYEEID", user.EmployeeID, 120);
                    HttpContext.Response.Set("JOINDATE", user.JoinDate.HasValue ? string.Format("{0:dd-MMM-yyyy}", user.JoinDate.GetValueOrDefault()) : "", 120);
                    HttpContext.Response.Set("DEPARTMENT", user.LDMS_M_Department != null ? string.Format("{0}", user.LDMS_M_Department.DepartmentID) : "", 120);
                    HttpContext.Response.Set("PLANTID", user.ID_Plant.ToString(), 120);

                    HttpContext.Response.Set("DIVISIONID", string.Format("{0}", user.ID_Division), 120);

                    HttpContext.Response.Set("DEPARTMENTID", user.LDMS_M_Department != null ? string.Format("{0}", user.LDMS_M_Department.ID_Department) : "", 120);
                    HttpContext.Response.Set("SECTIONTID", user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.ID_Section.GetValueOrDefault().ToString() : "0", 120);
                    HttpContext.Response.Set("FACEIMAGE", "~/assets/images/users/1.jpg", 120);
                    HttpContext.Response.Set("JWToken", user.Token, 120);
                    HttpContext.Session.SetString("JWToken", user.Token);
                    return new ServiceResult(user);
                }

            }
            catch (Exception ex)
            {
                return new ServiceResult(new Exception("Unauthorized"));
            }
        }

        public async Task<List<NavigationMenu>> GetMenuItemsAsync()
        {
            try
            {
                var token = JwtManager.Instance.GetToken(HttpContext.Request);
                if (!JwtManager.Instance.IsTokenValid(token))
                {
                    throw new Exception("Unauthorized");
                }
                var cliams = JwtManager.Instance.GetClaims(token).ToList();
                Claim claim = cliams.FirstOrDefault(o => o.Type.ToUpper() == ClaimTypes.Role.ToUpper());
                if (claim == null) throw new Exception("Unauthorized");
                int rolId = 0;
                int.TryParse(claim.Value, out rolId);
                return BuildUserMenu(rolId).AsList();
            }
            catch
            {
                throw new Exception("Unauthorized");
            }
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
                    var module = items.Where(e => e.LDMS_M_Module.ID_Module == item.Key).Select(e => e.LDMS_M_Module).FirstOrDefault();
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
                            MenuUrl = e.SubModule_URL,
                            ActionName = e.SubModule_URL.Split('/').Length > 1 ? e.SubModule_URL.Split('/')[1] : "",
                            CadWrite = true,
                            CanRead = true,
                            ControllerName = e.SubModule_URL.Split('/').Length > 0 ? e.SubModule_URL.Split('/')[0] : "",
                            MenuIco = "",
                            MenuID = e.SubModuleID,
                            MenuName = e.SubModuleName_EN
                        }).ToList()
                    };
                }
            }
        }

        public async Task<ServiceResult> DeleteUser(string employeeId)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var items = Connection.Query<SQLError>(_schema + ".[usp_User_Delete] @paramEmployeeId,@paramUpdateBy",
                    new
                    {
                        @paramEmployeeId = employeeId,
                        @paramUpdateBy = JwtManager.Instance.GetUserId(HttpContext.Request)
                    });
                if (items != null && items.Any())
                {
                    return new ServiceResult(new Exception(items.FirstOrDefault().ErrorMessage));
                }
                return new ServiceResult();
            }
        }

        public async Task<ServiceResult> ResetPassword(string employeeId)
        {
            var passsalt = PasswordHelper.CreateSalt();
            var newHaspass = PasswordHelper.GenerateSaltedHash(employeeId, passsalt);
            using (System.Data.IDbConnection conn = Connection)
            {
                var items = Connection.Query<SQLError>(_schema + ".[usp_User_ResetPassword] @EmployeeId,@Password,@PasswordSalt,@UpdateBy",
                    new
                    {
                        @EmployeeId = employeeId,
                        @Password = newHaspass,
                        @PasswordSalt = passsalt,
                        @UpdateBy = JwtManager.Instance.GetUserId(HttpContext.Request)
                    });
                if (items != null && items.Any())
                {
                    return new ServiceResult(new Exception(items.FirstOrDefault().ErrorMessage));
                }
                return new ServiceResult();
            }
        }

        public async Task<ServiceResult> CreateUser(LDMS_M_User user, LDMS_M_UserRole userRole)
        {
            try
            {
                using (System.Data.IDbConnection conn = Connection)
                {
                    var passsalt = PasswordHelper.CreateSalt();
                    var items = Connection.Query<SQLError>(_schema + ".[usp_User_Create] @EmployeeId, @EmployeeName ,@EmployeeSurName, @JobGradeId,@JobTitleId,@CenterId ,@DivisionId,@DepartmentId , @SectionId, @RoleId, @IsInstructer, @IsSectionHead,@Nationality,@Gender,@Password,@PasswordSalt ,@Remark,@PhoneNumber, @Email ,@CreateBy",
                        new
                        {
                            @EmployeeId = user.EmployeeID,
                            @EmployeeName = user.Name,
                            @EmployeeSurName = user.Surname,
                            @JobGradeId = user.ID_JobGrade,
                            @JobTitleId = user.ID_JobTitle,
                            @CenterId = user.ID_Center,
                            @DivisionId = user.ID_Division,
                            @DepartmentId = user.ID_Department,
                            @SectionId = userRole.ID_Section,
                            @RoleId = userRole.ID_Role,
                            @IsInstructer = userRole.IsInstructor,
                            @IsSectionHead = userRole.IsSectionHead,
                            @Nationality = user.Nationality,
                            @Gender = user.Gender,
                            @PasswordSalt = passsalt,
                            @Password = PasswordHelper.GenerateSaltedHash(user.EmployeeID, passsalt),
                            @Remark = userRole.Remark,
                            @PhoneNumber = user.PhoneNumber,
                            @Email = user.Email,
                            @CreateBy = JwtManager.Instance.GetUserId(HttpContext.Request)
                        });
                    if (items != null && items.Any())
                    {
                        return new ServiceResult(new Exception(items.FirstOrDefault().ErrorMessage));
                    }
                    return await GetUserByEmployeeId(user.EmployeeID);
                }
            }
            catch (Exception ex)
            {
                return new ServiceResult(ex);
            }
        }

        public async Task<ServiceResult> UpdateUser(LDMS_M_User user, LDMS_M_UserRole userRole)
        {
            try
            {
                using (System.Data.IDbConnection conn = Connection)
                {
                    var items = Connection.Query<SQLError>(_schema + ".[usp_User_Update] @EmployeeId, @EmployeeName ,@EmployeeSurName, @JobGradeId,@JobTitleId,@CenterId ,@DivisionId,@DepartmentId , @SectionId, @RoleId, @IsInstructer, @IsSectionHead,@Nationality,@Gender,@Remark,@PhoneNumber, @Email ,@UpdateBy",
                        new
                        {
                            @EmployeeId = user.EmployeeID,
                            @EmployeeName = user.Name,
                            @EmployeeSurName = user.Surname,
                            @JobGradeId = user.ID_JobGrade,
                            @JobTitleId = user.ID_JobTitle,
                            @CenterId = user.ID_Center,
                            @DivisionId = user.ID_Division,
                            @DepartmentId = user.ID_Department,
                            @SectionId = userRole.ID_Section,
                            @RoleId = userRole.ID_Role,
                            @IsInstructer = userRole.IsInstructor,
                            @IsSectionHead = userRole.IsSectionHead,
                            @Nationality = user.Nationality,
                            @Gender = user.Gender,
                            @Remark = userRole.Remark,
                            @PhoneNumber = user.PhoneNumber,
                            @Email = user.Email,
                            @UpdateBy = JwtManager.Instance.GetUserId(HttpContext.Request)
                        });
                    if (items != null && items.Any())
                    {
                        return new ServiceResult(new Exception(items.FirstOrDefault().ErrorMessage));
                    }
                    return await GetUserByEmployeeId(user.EmployeeID);
                }
            }
            catch (Exception ex)
            {
                return new ServiceResult(ex);
            }
        }

        public async Task<ServiceResult> ChangePassword(string employeeId, string oldPassword, string newPassword)
        {
            try
            {
                var emp = await GetUserByEmployeeId(employeeId);

                using (System.Data.IDbConnection conn = Connection)
                {
                    var passsalt = PasswordHelper.CreateSalt();
                    var newHaspass = PasswordHelper.GenerateSaltedHash(newPassword, passsalt);
                    var oldPasshash = PasswordHelper.GenerateSaltedHash(oldPassword, (emp.Data as LDMS_M_User).LDMS_M_UserRole.passwordSalt);

                    var items = Connection.Query<SQLError>(_schema + ".[usp_User_ChangePassword] @EmployeeId, @OldPassword, @Password,@PasswordSalt,@UpdateBy",
                        new
                        {
                            @EmployeeId = employeeId,
                            @OldPassword = oldPasshash,
                            @Password = newHaspass,
                            @PasswordSalt = passsalt,
                            @UpdateBy = JwtManager.Instance.GetUserId(HttpContext.Request)
                        });
                    if (items != null && items.Any())
                    {
                        return new ServiceResult(new Exception(items.FirstOrDefault().ErrorMessage));
                    }
                    return emp;
                }
            }
            catch (Exception ex)
            {
                return new ServiceResult(ex);
            }
        }
    }
}