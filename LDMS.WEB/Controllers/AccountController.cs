using LDMS.Core;
using LDMS.Services;
using LDMS.ViewModels;
using LDMS.WEB.Filters;
using LDMS.WEB.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LDMS.WEB.Controllers
{
    public class AccountController : BaseController
    {
        private readonly UserService UserService;
        // GET: /<controller>/
        private readonly ILogger<AccountController> _logger;
        public AccountController(ILogger<AccountController> logger, UserService userService)
        {
            UserService = userService;
            _logger = logger;
        }

        [HttpPost]
        [AllowAnonymous]
        [Route("Login")]
        [Route("Account/Login")]
        public async Task<IActionResult> Login(LoginViewModel userModel)
        {
            if (!ModelState.IsValid)
            {
                return View(userModel);
            }
            var user = (await UserService.Authenticattion(userModel.Username, userModel.Password)).Data as LDMS_M_User;
            if (user != null && !string.IsNullOrEmpty(user.Token))
            {
                return Response(new ServiceResult(HttpContext.Request.Get("REDIRECTPAGE"))); 
            }
            else
            {
                return Response(new ServiceResult(new UnauthorizedAccessException("Invalid Account")));
            }
        }

        [Route("")]
        [Route("Account")]
        [Route("Account/Index")]
        [AllowAnonymous]
        public async Task<IActionResult> Index()
        {
            return View();
        }

        [Route("Account/ForceChange")] 
        [AuthorizeRole(UserRole.All)]
        public async Task<IActionResult> ForceChangePassword()
        {
            return View();
        }


        [AuthorizeRole(UserRole.All)]
        [Route("Account/Privacy")]        
        public IActionResult Privacy()
        {
            return View();
        }

        [AuthorizeRole(UserRole.All)]
        [HttpGet]
        [Route("Logout")]
        [Route("Account/Logout")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> Logout()
        {
            return RedirectToAction("Index");
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR)]
        [HttpGet]
        [Route("Account/UserManagement")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> UserManagement()
        {
            ViewData["Title"] = "I-Manage LDMS";
            ViewData["MainTitle"] = "I-Manage";
            return View();
        }
        [AuthorizeRole(UserRole.All)]
        [Route("Account/MyProfile")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> MyProfile()
        {
            return View();
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR)]
        [HttpGet]
        [Route("Account/SearchEmployee")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> SearchEmployee(SearchEmployeeModel model)
        {
            int[] departments = new int[0];
            if (model.Departments != null && model.Departments.Any())
            {
                departments = model.Departments.Split(",").Select(int.Parse).ToArray();
            }
            var users = (await UserService.GetAll(model.EmployeeId, model.EmployeeName, departments.ToList())).Data as List<LDMS_M_User>;
            //ViewData["Employees"] = users;
            //return Response(users);
            return PartialView("_ViewAllUser", users);
        }

        [AuthorizeRole(UserRole.All)]
        [HttpGet]
        [Route("Account/ReadEmployee")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> ReadEmployee(string employeeId)
        {
            var user = (await UserService.GetUserByEmployeeId(employeeId)).Data as LDMS_M_User;
            if (user != null)
            {
                var userView = new Models.Employee.EmployeeModel()
                {
                    CenterId = user.ID_Center.GetValueOrDefault(),
                    DepartmentId = user.LDMS_M_Department != null ? user.LDMS_M_Department.ID_Department : 0,
                    DivisionId = user.ID_Division.GetValueOrDefault(),
                    Email = user.Email,
                    EmployeeId = user.EmployeeID,
                    EmployeeName = user.Name,
                    EmployeeSurName = user.Surname,
                    Gender = user.Gender,
                    JobGradeId = user.ID_JobGrade.GetValueOrDefault(),
                    JobTitleId = user.ID_JobTitle.GetValueOrDefault(),
                    Nationality = user.Nationality,
                    Password = user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.Password : "",
                    PhoneNumber = user.PhoneNumber,
                    Remark = user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.Remark : "",
                    RoleId = user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.ID_Role : 0,
                    SectionId = user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.ID_Section.GetValueOrDefault() : 0,
                    IsInstructer = user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.IsInstructor == 1 : false,
                    IsSectionHead = user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.IsSectionHead == 1 : false,
                    IsAD = user.IsAD == 1
                };
                return Response(new ServiceResult(userView));
            }
            else
            {
                return Response(new ServiceResult(new Models.Employee.EmployeeModel()));
            }
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR)]
        [HttpPost]
        [Route("Account/CreateEmployee")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> SaveEmployee(Models.Employee.EmployeeModel model)
        {
            try
            {
                LDMS_M_User user = new LDMS_M_User()
                {
                    Email = model.Email,
                    Name = model.EmployeeName,
                    Nationality = model.Nationality,
                    PhoneNumber = model.PhoneNumber,
                    Surname = model.EmployeeSurName,
                    IsAD = 1,
                    EmployeeID = model.EmployeeId,
                    Gender = model.Gender,
                    ID_Center = model.CenterId,
                    ID_Department = model.DepartmentId,
                    ID_Division = model.DivisionId,
                    ID_JobGrade = model.JobGradeId,
                    ID_JobTitle = model.JobTitleId,
                    IsActive = 1
                };
                LDMS_M_UserRole userRole = new LDMS_M_UserRole()
                {
                    EmployeeID = model.EmployeeId,
                    IsActive = 1,
                    ID_Role = model.RoleId,
                    ID_Section = model.SectionId,
                    IsInstructor = model.IsInstructer ? 1 : 0,
                    IsSectionHead = model.IsSectionHead ? 1 : 0,
                    Password = model.Password,
                    Remark = model.Remark
                };
                return Response(await UserService.CreateUser(user, userRole));
            }
            catch (Exception exp)
            {
                return Response(new ServiceResult(exp));
            }
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR)]
        [HttpPost]
        [Route("Account/UpdateEmployee")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> UpdateEmployee(Models.Employee.EmployeeModel model)
        {
            try
            {
                LDMS_M_User user = new LDMS_M_User()
                {
                    Email = model.Email,
                    Name = model.EmployeeName,
                    Nationality = model.Nationality,
                    PhoneNumber = model.PhoneNumber,
                    Surname = model.EmployeeSurName,
                    IsAD = 1,
                    EmployeeID = model.EmployeeId,
                    Gender = model.Gender,
                    ID_Center = model.CenterId,
                    ID_Department = model.DepartmentId,
                    ID_Division = model.DivisionId,
                    ID_JobGrade = model.JobGradeId,
                    ID_JobTitle = model.JobTitleId,
                    IsActive = 1
                };
                LDMS_M_UserRole userRole = new LDMS_M_UserRole()
                {
                    EmployeeID = model.EmployeeId,
                    IsActive = 1,
                    ID_Role = model.RoleId,
                    ID_Section = model.SectionId,
                    IsInstructor = model.IsInstructer ? 1 : 0,
                    IsSectionHead = model.IsSectionHead ? 1 : 0,
                    Password = model.Password,
                    Remark = model.Remark
                };
                return Response(await UserService.UpdateUser(user, userRole));
            }
            catch (Exception exp)
            {
                return Response(new ServiceResult(exp));
            }
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR)]
        [HttpDelete]
        [Route("Account/RemoveEmployee")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> RemoveEmployee(string employeeId)
        {
            try
            {
                return Response(await UserService.DeleteUser(employeeId));
            }
            catch (Exception exp)
            {
                return Response(new ServiceResult(exp));
            }
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR)]
        [HttpPost]
        [Route("Account/ResetPassword")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> ResetPassword(string employeeId)
        {
            try
            {
                return Response(await UserService.ResetPassword(employeeId));
            }
            catch (Exception exp)
            {
                return Response(new ServiceResult(exp));
            }
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR, UserRole.AdminDepartment, UserRole.UserAdmin)]
        [HttpGet]
        [Route("Account/EmployeeByDepartment")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> ReadEmployeeByDepartment(int departmentId)
        {
            return Response(new ServiceResult((await UserService.GetAllEmployeeByDepartmentId(departmentId))));
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR, UserRole.AdminDepartment, UserRole.UserAdmin)]
        [HttpGet]
        [Route("Account/EmployeeBySection")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> ReadEmployeeBySection(int sectionId)
        {
            return Response(new ServiceResult((await UserService.GetAllEmployeeBySectionId(sectionId))));
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR, UserRole.AdminDepartment, UserRole.UserAdmin)]
        [HttpGet]
        [Route("Account/SearchEmployeeName")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<ActionResult> SearchEmployeeName(string EmployeeName)
        {
            var users = await UserService.GetAll(null, EmployeeName, null);
            return Json(users);
        }
    }
}
