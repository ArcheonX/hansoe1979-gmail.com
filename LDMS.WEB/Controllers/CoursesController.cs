using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace LDMS.WEB.Controllers
{
    public class CoursesController : BaseController
    {
        [HttpGet]
        [Route("Courses")]
        [Route("Courses/Index")]
        public IActionResult Index()
        {
            return View();
        }
    }
}