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
            criteria.PageNum = 1;
            criteria.PageSize = 10;

            var instructor = _instructorService.GetInstructors(criteria);
            ViewData["Instructor"] = instructor.Results;
            return View();
        }
        [Route("Instructor/Search")]
        public IActionResult Search(LDMS_M_Instructor_Search criteria)
        {
            criteria.PageNum = 1;
            criteria.PageSize = 10;

            var instructor = _instructorService.GetInstructors(criteria);
            ViewData["Instructor"] = instructor.Results;
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