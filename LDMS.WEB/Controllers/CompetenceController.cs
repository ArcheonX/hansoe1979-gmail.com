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

        [ResponseCache(Duration = 1, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [AuthorizeRole(UserRole.All)]
        [Route("Competence/Competence")]
        public async Task<IActionResult> ReadCompetence(int competenceId)
        {
            return Response(await CompetenceAnalyticService.ReadById(competenceId));
        }
        [ResponseCache(Duration = 1, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [AuthorizeRole(UserRole.All)]
        [Route("Competence/Topics")]
        public async Task<IActionResult> ReadCompetenceTopics(int competenceId)
        {
            return Response(await CompetenceAnalyticService.AnalyticKnowledgeTopics(competenceId));
        }
        [ResponseCache(Duration = 1, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [AuthorizeRole(UserRole.All)]
        [Route("Competence/Employees")]
        public async Task<IActionResult> ReadCompetenceEmployees(int competenceId)
        {
            return Response(await CompetenceAnalyticService.AnalyticEmployees(competenceId));
        }


        [ResponseCache(Duration = 1, Location = ResponseCacheLocation.None)]
        [AuthorizeRole(UserRole.All)]
        [Route("Competence/Analytic/{ID}")]
        public IActionResult Analytic(string ID)
        {
            if (string.IsNullOrEmpty(ID))
            {
                Redirect("Competence/Add");
            }
            ViewBag.ID_Analytic = ID;
            ViewData["Title"] = "My Team Competence Analytic";
            ViewData["MainTitle"] = "My Team / My Monitoring";
            return View();
        }

        [ResponseCache(Duration = 1, Location = ResponseCacheLocation.None)]
        [AuthorizeRole(UserRole.All)]
        [Route("Competence/Add")]
        public IActionResult Add()
        {
            ViewData["Title"] = "My Team Competence Analytic";
            ViewData["MainTitle"] = "My Team / My Monitoring";
            return View();
        }

        [ResponseCache(Duration = 1, Location = ResponseCacheLocation.None)]
        [AuthorizeRole(UserRole.All)]
        [Route("Competence/Edit/{ID}")]
        public IActionResult Edit(string ID)
        {
            if (string.IsNullOrEmpty(ID))
            {
                Redirect("Competence/Add");
            }
            ViewBag.ID_Analytic = ID;
            ViewData["Title"] = "My Team Competence Analytic";
            ViewData["MainTitle"] = "My Team / My Monitoring";
            return View();
        }

        [ResponseCache(Duration = 1, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [AuthorizeRole(UserRole.All)]
        [Route("Competence/Analytics")]
        public async Task<IActionResult> Analytics()
        {
            return Response(await CompetenceAnalyticService.ReadAll());
        }

        [ResponseCache(Duration = 1, Location = ResponseCacheLocation.None)]
        [HttpPost]
        [AuthorizeRole(UserRole.All)]
        [Route("Competence/CreateCompetence")]
        public async Task<IActionResult> CreateCompetence(ViewModels.LDMS_T_CompetenceAnalytic competenceAnalytic
            , List<ViewModels.LDMS_T_CompetenceAnalytic_Employee> employees
            , List<ViewModels.LDMS_T_CompetenceAnalytic_KnwldTopic> topics)
        {
            return Response(await CompetenceAnalyticService.CreateCompetence(competenceAnalytic, employees, topics));
        }

        [ResponseCache(Duration = 1, Location = ResponseCacheLocation.None)]
        [HttpPost]
        [AuthorizeRole(UserRole.All)]
        [Route("Competence/UpdateCompetence")]
        public async Task<IActionResult> UpdateCompetence(ViewModels.LDMS_T_CompetenceAnalytic competenceAnalytic
            , List<ViewModels.LDMS_T_CompetenceAnalytic_Employee> employees
            , List<ViewModels.LDMS_T_CompetenceAnalytic_KnwldTopic> topics)
        {
            return Response(await CompetenceAnalyticService.UpdateCompetence(competenceAnalytic, employees, topics));
        }
    }
}