using LDMS.Services;
using LDMS.WEB.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Linq;
// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LDMS.WEB.Controllers
{
    public class AccountController : BaseController
    {
        private readonly UserService UserService;
        private readonly MasterService MasterService;
        // GET: /<controller>/
        private readonly ILogger<AccountController> _logger;
        public AccountController(ILogger<AccountController> logger,
            UserService userService,
            MasterService masterService)
        {
            UserService = userService;
            MasterService = masterService;
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
            var user = UserService.Authenticate(userModel.Username, userModel.Password);
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
            var users = UserService.GetAll().ToList();
            ViewData["Users"] = users;
            ViewData["JobsGrade"] = MasterService.GetAllJobGrades().Result;
            ViewData["JobTitle"] = MasterService.GetAllJobTitles().Result;
            ViewData["Center"] = MasterService.GetAllCenters().Result;
            ViewData["Division"] = MasterService.GetAllDivisions().Result;
            ViewData["Department"] = MasterService.GetAllDepartments().Result;
            ViewData["Section"] = MasterService.GetAllSections().Result;
            ViewData["Role"] = MasterService.GetAllRoles().Result;
            return View();
        }
        [HttpGet]
        [Route("Account/SearchEmployee")]
        public IActionResult SearchEmployee(SearchEmployeeModel model)
        {
            var users = UserService.GetAll().ToList();
            if (!string.IsNullOrEmpty(model.EmployeeId))
            {
                users = users.Where(e => e.EmployeeID.ToLower().StartsWith(model.EmployeeId.ToLower())).ToList();
            }
            if (!string.IsNullOrEmpty(model.EmployeeName))
            {
                users = users.Where(e => e.Name.ToLower().StartsWith(model.EmployeeName.ToLower()) || e.Surname.ToLower().StartsWith(model.EmployeeName.ToLower())).ToList();
            }
            if (model.Departments!=null && model.Departments.Any())
            {
                users = users.Where(e => model.Departments.Contains(e.ID_Department.GetValueOrDefault())).ToList();
            }
            ViewData["Users"] = users;
            return PartialView("_ViewAllUser", users);
        }
    }
}
