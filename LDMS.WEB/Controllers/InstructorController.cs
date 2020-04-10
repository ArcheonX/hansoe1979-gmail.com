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
        [HttpGet]
        [Route("Instructor")]
        [Route("Instructor/Index")]
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Add()
        {
            return View();
        }

        [HttpGet] 
        [Route("Instructor/View")]
        public IActionResult ViewProfile()
        {
            return View();
        }
    }
}