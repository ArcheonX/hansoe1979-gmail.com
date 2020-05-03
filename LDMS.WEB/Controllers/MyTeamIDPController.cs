using LDMS.Core;
using LDMS.Services;
using LDMS.ViewModels;
using LDMS.WEB.Filters;
using LDMS.WEB.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using System.Threading.Tasks;

namespace LDMS.WEB.Controllers
{
    public class MyTeamIDPController : Controller
    {
        private readonly MyTeamIDPService _MyTeamIDPService;
        private IWebHostEnvironment _hostingEnvironment;
        private readonly ILogger<IDPController> _logger;
        public IActionResult Index()
        {
           // var MyTeamIDP = MyTeamIDPService.GetMy_Team_IDP();
            return View();
        }
        public IActionResult Search(string ID_Plant, string ID_Center, string ID_Division, string ID_Department, string ID_Status, string ID_Employee)
        {

            string sortOrder = Request.Form["order[0][dir]"];
            string sortIndex = Request.Form["order[0][column]"];

            string sortColumn = "";
            if (sortIndex != "0") sortColumn = Request.Form["columns[" + sortIndex + "][data]"].ToString();
            LDMS_T_CoachingSearch criteria = new LDMS_T_CoachingSearch();
            criteria.PageNum = int.Parse(Request.Form["start"]) / int.Parse(Request.Form["length"]) + 1;
            criteria.PageSize = int.Parse(Request.Form["length"]);
            criteria.ID_Plant = ID_Plant;
            criteria.ID_Center = ID_Center;
            criteria.ID_Division = ID_Division;
            criteria.ID_Department = ID_Department;
            criteria.ID_Status = ID_Status;
            criteria.ID_Employee = ID_Employee;
            criteria.ID_Platform = ID_Platform;

            var coaching = _CoachingService.GetCoaching(criteria, IS_Employee);

            return Json(coaching);
        }
    }
}