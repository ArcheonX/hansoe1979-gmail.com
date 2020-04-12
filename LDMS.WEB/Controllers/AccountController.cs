using LDMS.Services;
using LDMS.ViewModels;
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
            var user = (UserService.Authenticattion(userModel.Username, userModel.Password).Data as LDMS_M_User);
            if (user != null && !string.IsNullOrEmpty(user.Token))
            {
                return RedirectToAction("Index", "Home"); 
            }
            else
            {
                ViewBag.error = "Invalid Account";
                return View("Index");
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
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Logout")]
        [Route("Account/Logout")]      
        public async Task<IActionResult> Logout()
        { 
            return RedirectToAction("Index");
        }
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Account/UserManagement")] 
        public async Task<IActionResult> UserManagement()
        {
            return View();
        }
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Account/SearchEmployee")] 
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
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]  
        [HttpGet]
        [Route("Account/ReadEmployee")]
        public async Task<IActionResult> ReadEmployee(string employeeId)
        {
            var user = (UserService.GetUserByEmployeeId(employeeId).Data as LDMS_M_User);
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
        [HttpPost]
        [Route("Account/CreateEmployee")]
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
        [HttpPost]
        [Route("Account/UpdateEmployee")]
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
        [HttpPost]
        [Route("Account/RemoveEmployee")]
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

        [HttpPost]
        [Route("Account/ResetPassword")]
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

    }
}
