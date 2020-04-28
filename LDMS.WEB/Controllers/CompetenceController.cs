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
        private readonly CompetenceAnalyticService CompetenceAnalyticService;
        public CompetenceController(CompetenceAnalyticService competenceAnalyticService)
        {
            CompetenceAnalyticService = competenceAnalyticService;
        }

        [AuthorizeRole(UserRole.All)]
        [Route("Competence/Index")]
        [Route("Competence")]
        public IActionResult Index()
        {
            ViewData["Title"] = "My Team Competence Analytic";
            ViewData["MainTitle"] = "My Team / My Monitoring";
            return View();
        }
        [AuthorizeRole(UserRole.All)]
        [Route("Competence/Analytic")]
        public IActionResult Analytic()
        {
            ViewData["Title"] = "My Team Competence Analytic";
            ViewData["MainTitle"] = "My Team / My Monitoring";
            return View();
        }


        [AuthorizeRole(UserRole.All)]
        [Route("Competence/Add")]
        public IActionResult Add()
        {
            ViewData["Title"] = "My Team Competence Analytic";
            ViewData["MainTitle"] = "My Team / My Monitoring";
            return View();
        }
        [AuthorizeRole(UserRole.All)]
        [Route("Competence/Edit")]
        public IActionResult Edit()
        {
            ViewData["Title"] = "My Team Competence Analytic";
            ViewData["MainTitle"] = "My Team / My Monitoring";
            return View();
        }

        [HttpPost]
        [AuthorizeRole(UserRole.All)]
        [Route("Competence/Analytics")]
        public async Task<IActionResult> Analytics()
        {
            var analytics = (await CompetenceAnalyticService.ReadAll()).Data;
            return Json(analytics);
        }

        [HttpPost]
        [AuthorizeRole(UserRole.All)]
        [Route("Competence/CreateCompetence")]
        public async Task<IActionResult> CreateCompetence(ViewModels.LDMS_T_CompetenceAnalytic competenceAnalytic
            , List<ViewModels.LDMS_T_CompetenceAnalytic_Employee> employees
            , List<ViewModels.LDMS_T_CompetenceAnalytic_KnwldTopic> topics)
        {
            return Response(await CompetenceAnalyticService.CreateCompetence(competenceAnalytic, employees, topics));
        }
    }
}