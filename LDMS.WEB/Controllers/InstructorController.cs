using LDMS.Services;
//using LDMS.WEB.Models;
using LDMS.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace LDMS.WEB.Controllers
{
    public class InstructorController : BaseController
    {
        private readonly ILogger<InstructorController> _logger;
        private readonly InstructorService _instructorService;

        public InstructorController(ILogger<InstructorController> logger, InstructorService instructorService)
        {
            _logger = logger;
            _instructorService = instructorService;
        }

        [Route("")]
        [Route("Instructor")]
        [Route("Instructor/Index")]
        public IActionResult Index( LDMS_M_Instructor_Search criteria )
        {
            var instructor = _instructorService.GetInstructors(criteria);
            ViewData["Instructor"] = instructor;
            return View();
        }
        [Route("Instructor/Search")]
        public IActionResult Search(LDMS_M_Instructor_Search criteria)
        {
            var instructor = _instructorService.GetInstructors(criteria);
            ViewData["Instructor"] = instructor;
            return View();
        }


        public IActionResult Add()
        {
            return View();
        }

       
        public IActionResult ViewProfile()
        {
            return View();
        }
    }
}