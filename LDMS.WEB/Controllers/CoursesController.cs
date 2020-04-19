using LDMS.Core;
using LDMS.Services;
using LDMS.ViewModels;
using LDMS.WEB.Filters;
using LDMS.WEB.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LDMS.WEB.Controllers
{
    public class CoursesController : BaseController
    {
        private readonly CourseService _CourseService;
        private readonly ILogger<CoursesController> _logger;

        public CoursesController(ILogger<CoursesController> logger, CourseService courseService)
        {
            _logger = logger;
            _CourseService = courseService;
        }

        [AuthorizeRole(UserRole.All)]
        [HttpGet]
        [Route("Courses")]
        [Route("Courses/Index")]
        public IActionResult Index()
        {
            return View();
        }

        [AuthorizeRole(UserRole.All)]
        [HttpGet]
        [Route("Courses/Add")]
        [AutoValidateAntiforgeryToken]
        public IActionResult Detail()
        {
            return View("/Views/Courses/Detail.cshtml");
        }

        [AuthorizeRole(UserRole.All)]
        [HttpGet]
        [Route("Courses/ClassDetail")]
        [AutoValidateAntiforgeryToken]
        public IActionResult ClassDetail()
        {
            return View("/Views/Courses/ClassDetail.cshtml");
        }

        [AuthorizeRole(UserRole.All)]
        [HttpGet]
        [Route("Courses/Detail/{ID}")]
        [AutoValidateAntiforgeryToken]
        public IActionResult Detail(string ID)
        {
            if (ID == null) ViewData["ID"] = "";
            else ViewData["ID"] = ID;

            if (ID == null) { return View("/Views/Courses/Detail.cshtml", null); }


            LDMS_M_Course p = new LDMS_M_Course(); //_PlatFormService.GetPlatformByID(ID);

            return View("/Views/Courses/Detail.cshtml", p);
        }

        [AuthorizeRole(UserRole.All)]
        [HttpGet]
        [Route("Courses/GetAllCourseType")]
        public IActionResult GetAllCourseType()
        {
            return Json(_CourseService.GetAllCourseType().Result);
        }

        [AuthorizeRole(UserRole.All)]
        [HttpGet]
        [Route("Courses/GetAllCourseLearnMethod")]
        public IActionResult GetAllCourseLearnMethod()
        {
            return Json(_CourseService.GetAllCourseLearnMethod().Result);
        }

        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("Courses/Search")]
        [AutoValidateAntiforgeryToken]
        public IActionResult Search(string CourseID, string CourseName, string CourseStatus, string LearnMetod)
        {

            string sortOrder = Request.Form["order[0][dir]"];
            string sortIndex = Request.Form["order[0][column]"];

            string sortColumn = "";
            if (sortIndex != "0") sortColumn = Request.Form["columns[" + sortIndex + "][data]"].ToString();
            LDMS_M_Course_Search criteria = new LDMS_M_Course_Search();
            criteria.PageNum = int.Parse(Request.Form["start"]) / int.Parse(Request.Form["length"]) + 1;
            criteria.PageSize = int.Parse(Request.Form["length"]);
            criteria.CourseID = CourseID;
            criteria.CourseName = CourseName;
            criteria.CourseStatus = CourseStatus;
            criteria.LearnMetod = LearnMetod;
            var courses = _CourseService.GetCourse(criteria);
            //ViewData["Instructor"] = instructor.Results;
            return Json(courses);
        }

        [AuthorizeRole(UserRole.All)]
        [HttpGet]
        [Route("Courses/InsertCourse")]
        public IActionResult InsertCourse(string ID_Course, string CourseID, string CourseName, string ID_LearnMethod,
                                            string ID_CourseType, string Objective, string Description, string OutLine,
                                            string IsRefreshment, string RefreshmentPeriod, string RefreshmentUnit,
                                            string TargetEmployeeID, string ID_PlantTarget, string ID_CenterTarget, 
                                            string ID_DivisionTarget, string ID_DepartmentTarget, string ID_SectionTarget,
                                            string JobGradeTargetID, string JobTitleTargetID, string isActive )
        {
           
            LDMS_M_Course course = new LDMS_M_Course();
            if (ID_Course == "null")
            {
                course = _CourseService.CreateCourse(CourseID, CourseName, ID_LearnMethod, ID_CourseType, Objective, Description, OutLine,
                                                  IsRefreshment, RefreshmentPeriod, RefreshmentUnit, TargetEmployeeID, ID_PlantTarget,
                                                  ID_CenterTarget, ID_DivisionTarget, ID_DepartmentTarget, ID_SectionTarget, JobGradeTargetID,
                                                  JobTitleTargetID );
                //course.ID = _id;

            }
            else
            {
                _CourseService.UpdateCourse(ID_Course, CourseID, CourseName, ID_LearnMethod, ID_CourseType, Objective, Description, OutLine,
                                                  IsRefreshment, RefreshmentPeriod, RefreshmentUnit, TargetEmployeeID, ID_PlantTarget,
                                                  ID_CenterTarget, ID_DivisionTarget, ID_DepartmentTarget, ID_SectionTarget, JobGradeTargetID,
                                                  JobTitleTargetID, isActive);
                
            }

            //course.CourseID = CourseID;
            //course.CourseName = CourseName;
            //course.ID_LearnMethod = int.Parse(ID_LearnMethod);
            //course.ID_CourseType = int.Parse(ID_CourseType);
            //course.Objective = Objective;
            //course.Description = Description;
            //course.OutLine = OutLine;
            //course.IsRefreshment = int.Parse(IsRefreshment);
            //course.RefreshmentPeriod = int.Parse(RefreshmentPeriod);
            //course.RefreshmentUnit = int.Parse(RefreshmentUnit);
            //course.TargetEmployeeID = TargetEmployeeID;
            //course.ID_PlantTarget = int.Parse(ID_PlantTarget);
            //course.ID_CenterTarget = int.Parse(ID_CenterTarget);
            //course.ID_DivisionTarget = int.Parse(ID_DivisionTarget);
            //course.ID_DepartmentTarget = int.Parse(ID_DepartmentTarget);
            //course.ID_SectionTarget = int.Parse(ID_SectionTarget);
            //course.JobGradeTargetID = JobGradeTargetID;
            //course.JobTitleTargetID = JobTitleTargetID;
            //course.IsActive = int.Parse(isActive);

            return Json(course);
        }

        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("Courses/EmployeeSearch")]
        [AutoValidateAntiforgeryToken]
        public IActionResult EmployeeSearch(string EmployeeID, string EmployeeName, string DepartmentID, string SectionID, string JobGradeID, string JobTitleID)
        {

            //string sortOrder = Request.Form["order[0][dir]"];
            //string sortIndex = Request.Form["order[0][column]"];

            //string sortColumn = "";
            //if (sortIndex != "0") sortColumn = Request.Form["columns[" + sortIndex + "][data]"].ToString();
            LDMS_M_Employee_Search criteria = new LDMS_M_Employee_Search();
            //criteria.PageNum = int.Parse(Request.Form["start"]) / int.Parse(Request.Form["length"]) + 1;
            //criteria.PageSize = int.Parse(Request.Form["length"]);
            criteria.EmployeeID = EmployeeID;
            criteria.EmployeeName = EmployeeName;
            criteria.DepartmentID = DepartmentID;
            criteria.SectionID = SectionID;
            criteria.JobGradeID = JobGradeID;
            criteria.JobTitleID = JobTitleID;

            var employees = _CourseService.GetEmployee(criteria);
            //ViewData["Instructor"] = instructor.Results;
            return Json(employees);
        }
        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("Courses/InstructorSearch")]
        [AutoValidateAntiforgeryToken]
        public IActionResult InstructorSearch(string InstructorID, string InstructorName, string Type, string Organization, string Experience )
        {
            LDMS_M_Instructor_Search criteria = new LDMS_M_Instructor_Search();
            criteria.Instructor_ID = InstructorID;
            criteria.Instructor_Name = InstructorName;
            criteria.Type = Type;
            criteria.Organization = Organization;
            criteria.Course_Experience = Experience;

            var employees = _CourseService.GetInstructor(criteria);
          
            return Json(employees);
        }
    }
}