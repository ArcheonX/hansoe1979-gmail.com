using LDMS.Services;
using LDMS.ViewModels;
using LDMS.WEB.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
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

        [Route("")]
        [Route("Account")]
        [Route("Account/Index")]
        [AllowAnonymous] 
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [Route("Login")]
        [Route("Account/Login")]
        public IActionResult Login(LoginViewModel userModel)
        {
            if (!ModelState.IsValid)
            {
                return View(userModel);
            }
            var user = UserService.Authenticattion(userModel.Username, userModel.Password);
            if (user != null && !string.IsNullOrEmpty(user.Token))
            {
                return RedirectToAction("Index", "Home");
               // return RedirectToAction("UserManagement");
            }
            else
            {
                ViewBag.error = "Invalid Account";
                return View("Index");
            }
        }

        [HttpGet]
        [Route("Logout")]
        [Route("Account/Logout")]      
        public IActionResult Logout()
        {
            // HttpContext.Session.Remove("username");
            //await HttpContext.SignOutAsync(IdentityConstants.ApplicationScheme);
            return RedirectToAction("Index");
        }


        [HttpGet]
        [Route("Account/UserManagement")] 
        public IActionResult UserManagement()
        { 
            return View();
        }
      
        [HttpGet]
        [Route("Account/SearchEmployee")] 
        public async Task<ActionResult> SearchEmployee(SearchEmployeeModel model)
        {
            int[] departments = new int[0];
            if (model.Departments != null && model.Departments.Any())
            {
                departments = model.Departments.Split(",").Select(int.Parse).ToArray();
            }
            var users = await UserService.GetAll(model.EmployeeId, model.EmployeeName, departments.ToList());
            return PartialView("_ViewAllUser", users);
        }

        [HttpPost]
        [Route("Account/CreateEmployee")]
        public async Task<ActionResult> SaveEmployee(Models.Employee.EmployeeModel model)
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
                UserService.CreateUser(user, userRole);
                return Ok(model);
            }
            catch(Exception exp)
            {
                return BadRequest();
            }
        }
        [HttpPost]
        [Route("Account/UpdateEmployee")]
        public async Task<ActionResult> UpdateEmployee(Models.Employee.EmployeeModel model)
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
                UserService.UpdateUser(user, userRole);
                return Ok(model);
            }
            catch (Exception exp)
            {
                return BadRequest();
            }
        }
        [HttpPost]
        [Route("Account/RemoveEmployee")]
        public async Task<ActionResult> RemoveEmployee(string empployeeId)
        {
            try
            {
                UserService.DeleteUser(empployeeId);
                return Ok(empployeeId);
            }
            catch (Exception exp)
            {
                return BadRequest();
            }
        }
        [HttpGet]
        [Route("Account/View")] 
        public async Task<ActionResult> ReadEmployee(string employeeId)
        {
            var user = UserService.GetUserByEmployeeId(employeeId);
            if (user != null)
            {
                var userView = new Models.Employee.EmployeeModel()
                {
                    CenterId = user.ID_Center.GetValueOrDefault(),
                    DepartmentId = user.ID_Department.GetValueOrDefault(),
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
                    Phone = user.PhoneNumber,
                    Remark = user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.Remark : "",
                    RoleId = user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.ID_Role : 0,
                    SectionId = user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.ID_Section.GetValueOrDefault() : 0
                };
                return PartialView("_UserEditor", userView);
            }
            else
            {
                return PartialView("_UserEditor", new Models.Employee.EmployeeModel());
            } 
        }
    }
}
