using System.Diagnostics;
using LDMS.Services;
using LDMS.WEB.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LDMS.WEB.Controllers
{
    public class LoginController : BaseController
    {
        // GET: /<controller>/
        private readonly ILogger<LoginController> _logger;
        public LoginController(ILogger<LoginController> logger,
            LDAPAuthenticationService dAPAuthenticationService,
            LocalAuthenticationService localAuthenticationService)
        {
            _logger = logger;
        }

        //[Route("Login/Index/")]
        //public IActionResult Index()
        //{
        //    return View("~/Views/Login/Index.cshtml");
        //}
        public IActionResult Index()
        {
            return View();
        } 
    }
}
