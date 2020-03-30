using System.Diagnostics;
using LDMS.WEB.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace LDMS.WEB.Controllers
{
    public class InstructorController : BaseController
    {
        private readonly ILogger<InstructorController> _logger;

        public InstructorController(ILogger<InstructorController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

       
    }
}