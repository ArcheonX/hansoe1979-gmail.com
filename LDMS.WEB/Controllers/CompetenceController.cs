using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LDMS.Core;
using LDMS.Services;
using LDMS.WEB.Filters;
using Microsoft.AspNetCore.Mvc;

namespace LDMS.WEB.Controllers
{
    public class CompetenceController : BaseController
    { 
        public CompetenceController( )
        { 
             
        }      
        [AuthorizeRole(UserRole.All)]
        [Route("Competence/Analytic")]
        public IActionResult Analytic()
        {
            ViewData["Title"] = "My Team Competence Analytic";
            ViewData["MainTitle"] = "My Team / My Monitoring";
            return View();
        }
    }
}