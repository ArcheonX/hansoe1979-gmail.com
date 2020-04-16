﻿using System;
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
        [Route("Organization/Section")]
        public IActionResult Section()
        {
            return View();
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

        [HttpPost]
        [Route("Master/GetCodeLookup")]
        [AutoValidateAntiforgeryToken]
        public IActionResult GetCodeLookups(string tableName, string fieldName)
        {
            return Json(MasterService.GetCodeLookups(tableName, fieldName));
        }

        [HttpPost]
        [Route("Master/GetProvinces")]
        [AutoValidateAntiforgeryToken]
        public IActionResult GetProvinces()
        {
            return Json(MasterService.GetProvinces());
        }

        [HttpPost]
        [Route("Master/GetAmphurs")]
        [AutoValidateAntiforgeryToken]
        public IActionResult GetAmphurs(string provinceID)
        {
            return Json(MasterService.GetAmphurs(provinceID));
        }

        [HttpPost]
        [Route("Master/GetDistricts")]
        [AutoValidateAntiforgeryToken]
        public IActionResult GetDistricts(string provinceID, string amphurID)
        {
            return Json(MasterService.GetDistricts(provinceID, amphurID));
        }

    }
}