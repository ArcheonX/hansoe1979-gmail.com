using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LDMS.Services;
using Microsoft.AspNetCore.Mvc;

namespace LDMS.WEB.Controllers
{
    public class MasterController : BaseController
    {
        private readonly MasterService MasterService;

        public MasterController(MasterService masterService)
        {
            MasterService = masterService;
        }
        [HttpGet]
        [Route("Master/GetAllCenters")]
        public IActionResult GetAllCenters()
        {
            return Json(MasterService.GetAllCenters().Result);
            //return MasterService.GetAllCenters().Result; 
        }
        [HttpGet]
        [Route("Master/GetAllJobGrades")]
        public IActionResult GetAllJobGrades()
        {
            return Json(MasterService.GetAllJobGrades().Result);
        }
        [HttpGet]
        [Route("Master/GetAllJobTitles")]
        public IActionResult GetAllJobTitles()
        {
            return Json(MasterService.GetAllJobTitles().Result); 
        }
        [HttpGet]
        [Route("Master/GetAllDivisions")]
        public IActionResult GetAllDivisions()
        {
            return Json(MasterService.GetAllDivisions().Result);
        }
        [HttpGet]
        [Route("Master/GetAllDepartments")]
        public IActionResult GetAllDepartments()
        {
            return Json(MasterService.GetAllDepartments().Result);
        }
        [HttpGet]
        [Route("Master/GetAllSections")]
        public IActionResult GetAllSections()
        {
            return Json(MasterService.GetAllSections().Result);
        }
        [HttpGet]
        [Route("Master/GetAllRoles")]
        public IActionResult GetAllRoles()
        {
            return Json(MasterService.GetAllRoles().Result); 
        }

    }
}