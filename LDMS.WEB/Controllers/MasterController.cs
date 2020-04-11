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
        [Route("Organization/Section")]
        public IActionResult Section()
        {
            return View();
        }
        [HttpGet]
        [Route("Master/GetAllCenters")]
        public async Task<IActionResult> GetAllCenters()
        {
            return Response(await MasterService.GetAllCenters());
        }
        [HttpGet]
        [Route("Master/GetAllJobGrades")]
        public async Task<IActionResult> GetAllJobGrades()
        {
            return Response(await MasterService.GetAllJobGrades());
        }
        [HttpGet]
        [Route("Master/GetAllJobTitles")]
        public async Task<IActionResult> GetAllJobTitles()
        {
            return Response(await MasterService.GetAllJobTitles()); 
        }
        [HttpGet]
        [Route("Master/GetAllDivisions")]
        public async Task<IActionResult> GetAllDivisions()
        {
            return Response(await MasterService.GetAllDivisions());
        }
        [HttpGet]
        [Route("Master/GetAllDepartments")]
        public async Task<IActionResult> GetAllDepartments()
        {
            return Response(await MasterService.GetAllDepartments());
        }
        [HttpGet]
        [Route("Master/GetAllSections")]
        public async Task<IActionResult> GetAllSections()
        {
            return Response(await MasterService.GetAllSections());
        }
        [HttpGet]
        [Route("Master/GetAllRoles")]
        public async Task<IActionResult> GetAllRoles()
        {
            return Response(await MasterService.GetAllRoles()); 
        }

    }
}