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

        [Route("Account/UserManagement")]
        public IActionResult UserManagement()
        {
            var users = UserService.GetAll().ToList();
            ViewData["Users"] = users;
            return View();
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
    }
}
