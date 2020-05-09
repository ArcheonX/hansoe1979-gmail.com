using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LDMS.Core;
using LDMS.WEB.Filters;
using Microsoft.AspNetCore.Mvc;

namespace LDMS.WEB.Controllers
{
    public class LearningPerformanceController : BaseController
    {
        [AuthorizeRole(UserRole.All)]
        [HttpGet]
        public IActionResult TeamPerformance()
        {
            return View();
        }
    }
}