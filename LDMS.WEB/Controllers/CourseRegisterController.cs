using LDMS.Core;
using LDMS.Identity;
using LDMS.Services;
//using LDMS.WEB.Models;
using LDMS.ViewModels;
using LDMS.WEB.Filters;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using NPOI.SS.Formula.Functions;
using Org.BouncyCastle.Bcpg.OpenPgp;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;

namespace LDMS.WEB.Controllers
{
    public class CourseRegisterController : BaseController
    {
        private string registerStatus_Approve = "70";
        private string registerStatus_Reject = "99";
        private string classStatus_Close = "70";
        private readonly CourseRegisterService _courseRegisterService;
        private IWebHostEnvironment _hostingEnvironment;

        public CourseRegisterController(CourseRegisterService courseRegisterService, IWebHostEnvironment environment)
        {
            _courseRegisterService = courseRegisterService;
            _hostingEnvironment = environment;
        }

        [AuthorizeRole(UserRole.All)]
        [Route("CourseRegister/Index/{c}/{l}")]
        public IActionResult Index(string c, string l)
        {
            ViewData["course"] = c;
            ViewData["class"] = l;
            return View("~/Views/CourseRegister/Index.cshtml");
        }

        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("CourseRegister/GetInfo")]
        [AutoValidateAntiforgeryToken]
        public IActionResult GetInfo(string ClassID)
        {
            var ret = _courseRegisterService.GetInfo(ClassID);

            return Json(ret);
        }

        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("CourseRegister/GetCourseRegis")]
        [AutoValidateAntiforgeryToken]
        public IActionResult GetCourseRegis(string classID, string courseID, string employeeID, string employeeName, string departmentName)
        {
            var ret = _courseRegisterService.Get(courseID, classID, employeeID, employeeName, departmentName);

            return Json(ret);
        }

        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("CourseRegister/GetEmployeeClose")]
        [AutoValidateAntiforgeryToken]
        public IActionResult GetEmployeeClose(string classID, string courseID)
        {
            var ret = _courseRegisterService.GetEmployeeForClose(courseID, classID);

            return Json(ret);
        }



        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("CourseRegister/UpdateRegisStatusA")]
        [AutoValidateAntiforgeryToken]
        public IActionResult UpdateRegisStatusA(string classID, string courseID, string idList)
        {
            UpdateRegisStatus(classID, courseID, idList, registerStatus_Approve);

            return Ok();
        }

        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("CourseRegister/UpdateRegisStatusR")]
        [AutoValidateAntiforgeryToken]
        public IActionResult UpdateRegisStatusR(string classID, string courseID, string idList)
        {
            UpdateRegisStatus(classID, courseID, idList, registerStatus_Reject);

            return Ok();
        }

        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("CourseRegister/CloseClass")]
        [AutoValidateAntiforgeryToken]
        public IActionResult CloseClass(string classID, string courseID)
        {
            string idList = "";
            List<dynamic> ret = _courseRegisterService.GetEmployeeForClose(courseID, classID);

            for(int i = 0; i < ret.Count; i++)
            {
                idList += ret[i].EmployeeID + ",";
            }

            UpdateRegisStatus(classID, courseID, idList, registerStatus_Reject);
            _courseRegisterService.UpdateClass(classID, this.classStatus_Close, JwtManager.Instance.GetUserId(HttpContext.Request));

            return Ok();
        }


        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("CourseRegister/UpdateAttendResult")]
        [AutoValidateAntiforgeryToken]
        public IActionResult UpdateAttendResult(string classID, string courseID, string lists)
        {
            List<dynamic> ret = _courseRegisterService.GetInfo(classID);
            if(ret.Count > 0)
            {
                string[] row = lists.Split("#", StringSplitOptions.RemoveEmptyEntries);

                for (int i = 0; i < row.Length; i++)
                {
                    //EmpID | Check Attend | pre Test | Post Test | Skill
                    string[] col = row[i].Split("|", StringSplitOptions.None);
                    string empID = col[0];
                    string preTest = "", postTest = "", skill = "";
                    string classState = "10";
                    string isAttend = col[1];

                    if (ret[0].IsTest == 1)
                    {
                        preTest = col[2];
                        if (preTest.Trim().Length > 0) classState = "20";
                        postTest = col[3];
                        if (preTest.Trim().Length > 0) classState = "30";
                    }

                    if (ret[0].IsSkill == 1)
                    {
                        skill = col[4];
                        if (skill.Trim().Length > 0) classState = "40";
                    }

                    if (isAttend == "1")
                    {
                        if (ret[0].IsAttend == 1)
                        {
                            _courseRegisterService.UpdateClassResult(classID, courseID, empID, classState, "30", "1", "0",
                                preTest, postTest, skill, "0", "0", JwtManager.Instance.GetUserId(HttpContext.Request));
                        }

                        if (ret[0].IsCoaching == 1)
                        {
                            _courseRegisterService.AddCoaching(classID, courseID, empID, "10", JwtManager.Instance.GetUserId(HttpContext.Request));
                        }

                        if (ret[0].IsCertificate == 1)
                        {
                            _courseRegisterService.AddCertificate(classID, courseID, empID, "", "", "", JwtManager.Instance.GetUserId(HttpContext.Request));
                        }
                    }
                }
            }


            return Ok();
        }

        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("CourseRegister/UpdateCert")]
        [AutoValidateAntiforgeryToken]
        public IActionResult UpdateCert(string classID, string courseID, string employeeID, string expireDate, IFormFile fiCert)
        {
            string pathCert = "";
            if (fiCert != null)
            {
                var fileName = DateTime.Now.ToString("yyyyMMddHHmmssffff") + "_" +
                    ContentDispositionHeaderValue.Parse(fiCert.ContentDisposition).FileName.Replace("\"", "");

                string filesPath = _hostingEnvironment.WebRootPath + "\\Uploads\\Certificate\\" + DateTime.Now.ToString("yyyyMM");

                fileName = fileName.Contains("\\")
                    ? fileName.Trim('"').Substring(fileName.LastIndexOf("\\", StringComparison.Ordinal) + 1) : fileName.Trim('"');
                fileName = DateTime.Now.ToString("yyyyMMddHHmmssffff") + "_" + fileName;

                if (!Directory.Exists(filesPath)) Directory.CreateDirectory(filesPath);

                var fullFilePath = Path.Combine(filesPath, fileName);

                using (var stream = new FileStream(fullFilePath, FileMode.Create))
                {
                    fiCert.CopyTo(stream);
                }

                pathCert = Path.Combine("\\Uploads\\Certificate\\" + DateTime.Now.ToString("yyyyMM"), fileName);
            }

            _courseRegisterService.AddCertificate(classID, courseID, employeeID, pathCert, "", expireDate, JwtManager.Instance.GetUserId(HttpContext.Request));

            return Ok();
        }


        private void UpdateRegisStatus(string classID, string courseID, string idList, string status)
        {
            if (idList != null)
            {
                string[] idLists = idList.Split(',', StringSplitOptions.RemoveEmptyEntries);
                for (int i = 0; i < idLists.Length; i++)
                {
                    _courseRegisterService.UpdateStatus(classID, courseID, idLists[i], status, JwtManager.Instance.GetUserId(HttpContext.Request));
                }
            }
        }


    }
}