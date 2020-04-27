using LDMS.Core;
using LDMS.Services;
using LDMS.ViewModels;
using LDMS.WEB.Filters;
using LDMS.WEB.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace LDMS.WEB.Controllers
{
    public class CoachingController : Controller
    {
        private readonly CoachingService _CoachingService;
        private readonly ILogger<CoachingController> _logger;

        public CoachingController(ILogger<CoachingController> logger, CoachingService coachingService)
        {
            _logger = logger;
            _CoachingService = coachingService;
        }
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult EIndex()
        {
            return View("/Views/Coaching/E_Index.cshtml");
        }

        public IActionResult Detail()
        {
            return View("/Views/Coaching/Detail.cshtml");
        }

        [AuthorizeRole(UserRole.All)]
        [HttpGet]
        [Route("Coaching/EDetail/{ID}")]
        public IActionResult EDetail(string ID)
        {
            var coaching = _CoachingService.GetCoachingByID(ID);

            return View("/Views/Coaching/E_Detail.cshtml", coaching);
        }

        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("Coaching/UpdateCoaching")]
        //[AutoValidateAntiforgeryToken]
        public IActionResult UpdateCoaching(string ID_Coaching, string Topic, string CoachingStatus)
        {

            LDMS_T_Coaching coaching = new LDMS_T_Coaching();
            coaching = _CoachingService.UpdateCoachingDetail(ID_Coaching, Topic, CoachingStatus);

            return Json(coaching);
        }


        [HttpPost]
        [Route("Coaching/Search")]
        [AutoValidateAntiforgeryToken]
        public IActionResult Search(string ID_Plant, string ID_Center, string ID_Division, string ID_Department, string ID_Status, string ID_Employee, string ID_Platform)
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

            var coaching = _CoachingService.GetCoaching(criteria);
           
            return Json(coaching);
        }



        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("Coaching/InsertReviewHead")]
        //[AutoValidateAntiforgeryToken]
        public IActionResult InsertReviewHead(string ID_Coaching, string EmployeeReport, string AttachFilePath)
        {

            LDMS_T_CoachingReviewHead coaching = new LDMS_T_CoachingReviewHead();
           
            int ret = _CoachingService.CreateCoachingHead( ID_Coaching,  EmployeeReport,  AttachFilePath);
            coaching.ID = ret;
            coaching.ID_Coaching = int.Parse(ID_Coaching);
            coaching.EmployeeReport = EmployeeReport;
            coaching.AttachFilePath = AttachFilePath;

            return Json(coaching);
        }


        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("Coaching/InsertReviewDetail")]
        //[AutoValidateAntiforgeryToken]
        public IActionResult InsertReviewDetail(string ID_CoachingReviewHead, string PostDetail, string AttachFilePath, string ID_Coaching)
        {

            LDMS_T_CoachingReviewDetail coaching = new LDMS_T_CoachingReviewDetail();
            coaching = _CoachingService.CreateCoachingDetail(ID_CoachingReviewHead, PostDetail, AttachFilePath);
            //coaching.ID_CoachingReviewHead = int.Parse(ID_CoachingReviewHead);

            //List<LDMS_T_CoachingReviewDetail> list = _CoachingService.GetCoachingReviewDetail(ID_CoachingReviewHead);

            //return View("/Views/Coaching/E_Detail.cshtml", coaching);
            return Json(ID_Coaching);
        }


      
        [HttpPost]
        [Route("Coaching/GetCoachingHead")]
        public IActionResult GetCoachingHead(string ID_Coaching)
        {
            var coachingHead = _CoachingService.GetCoachingReviewHead(ID_Coaching);

            return Json(coachingHead);
        }

        [HttpPost]
        [Route("Coaching/GetReviewDetail")]
        public IActionResult GetReviewDetail(string ID_CoachingReviewHead)
        {
            List<LDMS_T_CoachingReviewDetail> list = _CoachingService.GetCoachingReviewDetail(ID_CoachingReviewHead);

            return Json(list);
        }
    }
}