using LDMS.Services;
using LDMS.WEB.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
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
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public IActionResult Login(LoginViewModel userModel)
        {
            if (!ModelState.IsValid)
            {
                return View(userModel);
            }
            var user = UserService.Authenticattion(userModel.Username, userModel.Password);
            if (user != null && !string.IsNullOrEmpty(user.Token))
            {
                //return RedirectToAction("Index", "Home");
                return RedirectToAction("UserManagement");
            }
            else
            {
                ViewBag.error = "Invalid Account";
                return View("Index");
            }
        }

        [Route("Logout")]
        [Route("Account/Logout")]
        [HttpGet]
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

        [HttpPut]
        [Route("Account/Add")]
        public async Task<ActionResult> CreateNewUser(SearchEmployeeModel model)
        {
            int[] departments = new int[0];
            if (model.Departments != null && model.Departments.Any())
            {
                departments = model.Departments.Split(",").Select(int.Parse).ToArray();
            }
            var users = await UserService.GetAll(model.EmployeeId, model.EmployeeName, departments.ToList());
            return PartialView("_ViewAllUser", users);
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
