using LDMS.Identity;
using LDMS.Services;
//using LDMS.WEB.Models;
using LDMS.ViewModels;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using NPOI.SS.Formula.Functions;
using Org.BouncyCastle.Bcpg.OpenPgp;
using System;
using System.IO;
using System.Net.Http.Headers;

namespace LDMS.WEB.Controllers
{
    public class InstructorController : BaseController
    {
        private readonly InstructorService _instructorService;
        private IWebHostEnvironment _hostingEnvironment;

        public InstructorController(InstructorService instructorService, IWebHostEnvironment environment)
        {
            _instructorService = instructorService;
            _hostingEnvironment = environment;
        }

        [Route("Instructor/Index")]
        public IActionResult Index()
        {
            return View("~/Views/Instructor/Index.cshtml");
        }

        [HttpPost]
        [Route("Instructor/Search")]
        [AutoValidateAntiforgeryToken]
        public IActionResult Search(string Instructor_ID, string Instructor_Name, string IsActive, string Organization, string Type,
            string Course_Experience, string CourseName)
        {
            string sortOrder = Request.Form["order[0][dir]"];
            string sortIndex = Request.Form["order[0][column]"];

            string sortColumn = "";
            if(sortIndex != "0") sortColumn = Request.Form["columns["+ sortIndex + "][data]"].ToString();
            LDMS_M_Instructor_Search criteria = new LDMS_M_Instructor_Search();
            criteria.PageNum = int.Parse(Request.Form["start"])/ int.Parse(Request.Form["length"]) + 1;
            criteria.PageSize = int.Parse(Request.Form["length"]);
            criteria.SortField = sortColumn;
            criteria.SortOrder = sortOrder;
            criteria.Instructor_ID = Instructor_ID;
            criteria.Instructor_Name = Instructor_Name;
            criteria.IsActive = IsActive;
            criteria.Organization = Organization;
            criteria.Type = Type;
            criteria.Course_Experience = Course_Experience;
            criteria.CourseName = CourseName;

            var instructor = _instructorService.GetInstructors(criteria);
            
            return Json(instructor);
        }

        [Route("Instructor/Detail/{i?}")]
        public IActionResult Detail(string i)
        {
            if (i == null) ViewData["i"] = "";
            else ViewData["i"] = i;
            return View("~/Views/Instructor/Detail.cshtml");
        }

        [Route("Instructor/ViewProfile/{i}")]
        public IActionResult ViewProfile(string i)
        {
            LDMS_M_Instructor mod = _instructorService.GetInstructor(i);
            return View("~/Views/Instructor/ViewProfile.cshtml", mod);
        }

        [HttpPost]
        [Route("Instructor/Get")]
        [AutoValidateAntiforgeryToken]
        public IActionResult Get(string id)
        {
            return Json(_instructorService.GetInstructor(id));
        }

        [HttpPost]
        [Route("Instructor/GetInsID")]
        [AutoValidateAntiforgeryToken]
        public IActionResult GetInsID(string insID)
        {
            return Json(_instructorService.GetInstructorByInstructorID(insID));
        }


        [HttpPost]
        [Route("Instructor/Del")]
        [AutoValidateAntiforgeryToken]
        public IActionResult del(string id)
        {
            _instructorService.UpdateInstructorStatus(id, "");
            return Json("1");
        }

        [HttpPost]
        [Route("Instructor/Save")]
        [AutoValidateAntiforgeryToken]
        public IActionResult Save(string id, string insID, string org, string insName, string empID, string address, string type, string status, 
            string district, string amphur, string province, string department, string phone, string postCode, string email, string eduLevel,
            string major, string cExperience, string skill, string reference, string manu, string ofile, IFormFile profile)
        {
            
            LDMS_M_Instructor mod = new LDMS_M_Instructor() 
                { Instructor_ID = insID, Instructor_Name = insName, Organization = org, ID_Employee = empID,
                Address = address, Type = type, IsActive = (status == "1"), District_Id = district, Aumphur_Id = amphur,
                Provice_Id = province, Phone = phone, Post_Code = postCode, Email = email, Education_Level = eduLevel,
                Major = major, Course_Experience = cExperience, Skill_Professional = skill, Customer_Reference = reference,
                Manufacturing_Area = manu, ID = id, Create_By = JwtManager.Instance.GetUserId(HttpContext.Request), 
                Update_By = JwtManager.Instance.GetUserId(HttpContext.Request)
            };

            if (profile != null)
            {
                var fileName = DateTime.Now.ToString("yyyyMMddHHmmssffff") + "_" +
                    ContentDispositionHeaderValue.Parse(profile.ContentDisposition).FileName.Replace("\"", "");

                string filesPath = _hostingEnvironment.WebRootPath + "\\Uploads\\Instructor\\" + DateTime.Now.ToString("yyyyMM");

                fileName = fileName.Contains("\\")
                    ? fileName.Trim('"').Substring(fileName.LastIndexOf("\\", StringComparison.Ordinal) + 1) : fileName.Trim('"');
                fileName = DateTime.Now.ToString("yyyyMMddHHmmssffff") + "_" + fileName;

                if (!Directory.Exists(filesPath)) Directory.CreateDirectory(filesPath);

                var fullFilePath = Path.Combine(filesPath, fileName);

                using (var stream = new FileStream(fullFilePath, FileMode.Create))
                {
                    profile.CopyTo(stream);
                }

                mod.Path_Image = Path.Combine("\\Uploads\\Instructor\\" + DateTime.Now.ToString("yyyyMM"), fileName);
            }
            else if(ofile != null)
            {
                mod.Path_Image = ofile;
            }

            if (id == null)
            {
                id = _instructorService.AddInstructors(mod).ToString();
            }
            else
            {
                mod.ID = id;
                _instructorService.UpdateInstructors(mod);
            }

            return Json("1");
        }

        [HttpPost]
        [Route("Instructor/GetClass")]
        [AutoValidateAntiforgeryToken]
        public IActionResult GetClass(string insID)
        {
            return Json(_instructorService.GetCourseByInstructorID(insID));
        }


    }
}