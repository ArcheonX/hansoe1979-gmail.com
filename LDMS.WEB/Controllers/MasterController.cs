using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LDMS.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace LDMS.WEB.Controllers
{
    public class MasterController : BaseController
    {
        private readonly MasterService MasterService; 

        public MasterController(MasterService masterService, UserService userService)
        {
            MasterService = masterService; 
        }
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Master/GetAllCenters")]
        public async Task<IActionResult> GetAllCenters()
        {
            return Response(await MasterService.GetAllCenters());
        }
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Master/GetAllJobGrades")]
        public async Task<IActionResult> GetAllJobGrades()
        {
            return Response(await MasterService.GetAllJobGrades());
        }
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Master/GetAllJobTitles")]
        public async Task<IActionResult> GetAllJobTitles()
        {
            return Response(await MasterService.GetAllJobTitles());
        }
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Master/GetAllDivisions")]
        public async Task<IActionResult> GetAllDivisions()
        {
            return Response(await MasterService.GetAllDivisions());
        }
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Master/GetAllDepartments")]
        public async Task<IActionResult> GetAllDepartments()
        {
            return Response(await MasterService.GetAllDepartments());
        }
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Master/GetAllSections")]
        public async Task<IActionResult> GetAllSections()
        {
            return Response(await MasterService.GetAllSections());
        }
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Master/Department")]
        public async Task<IActionResult> GetDepartment(int departmentId)
        {
            return Response(await MasterService.GetDepartment(departmentId));
        }
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Master/Division")]
        public async Task<IActionResult> GetDivision(int divisionId)
        {
            return Response(await MasterService.GetDivision(divisionId));
        }
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Master/GetAllRoles")]
        public async Task<IActionResult> GetAllRoles()
        {
            return Response(await MasterService.GetAllRoles());
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