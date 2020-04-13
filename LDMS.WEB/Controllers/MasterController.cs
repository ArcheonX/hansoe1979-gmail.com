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
        private readonly UserService UserService;

        public MasterController(MasterService masterService, UserService userService)
        {
            MasterService = masterService;
            UserService = userService;
        }
        
        [HttpGet]
        [Route("Organization/Section")]
        public async Task<IActionResult> Section()
        {
            int.TryParse(HttpContext.Request.Cookies["DIVISIONID"], out int divisionId);
            int.TryParse(HttpContext.Request.Cookies["DEPARTMENTID"], out int departmentId);
            ViewData["Sections"] = (await MasterService.GetAllSections(departmentId)).Data as List<ViewModels.LDMS_M_Section>;
            ViewData["Employees"] = (await UserService.GetAllEmployeeByDepartmentId(departmentId)).Data as List<ViewModels.LDMS_M_User>;
            //ViewData["Department"] = (await MasterService.GetDepartment(departmentId)).Data as ViewModels.LDMS_M_Department;
            //ViewData["Division"] = (await MasterService.GetDivision(divisionId)).Data as ViewModels.LDMS_M_Division;
            ViewData["JobGrades"] = (await MasterService.GetAllJobGrades()).Data as List<ViewModels.LDMS_M_JobGrade>;
            ViewData["JobTitles"] = (await MasterService.GetAllJobTitles()).Data as List<ViewModels.LDMS_M_JobTitle>;
            //HttpContext.Response.Set("DIVISIONID", string.Format("{0}", user.ID_Division), 120);
            //HttpContext.Response.Set("DEPARTMENTID", user.LDMS_M_Department != null ? string.Format("{0}", user.LDMS_M_Department.ID_Department) : "", 120);
            //HttpContext.Response.Set("SECTIONTID", user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.ID_Section.GetValueOrDefault().ToString() : "0", 120);
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
        [Route("Master/Sections")]
        public async Task<IActionResult> GetAllSections(int departmentId)
        {
            return Response(await MasterService.GetAllSections(departmentId));
        }
        [HttpGet]
        [Route("Master/Department")]
        public async Task<IActionResult> GetDepartment(int departmentId)
        {
            return Response(await MasterService.GetDepartment(departmentId));
        }

        [HttpGet]
        [Route("Master/Division")]
        public async Task<IActionResult> GetDivision(int divisionId)
        {
            return Response(await MasterService.GetDivision(divisionId));
        }


        [HttpGet]
        [Route("Master/GetAllRoles")]
        public async Task<IActionResult> GetAllRoles()
        {
            return Response(await MasterService.GetAllRoles()); 
        }

    }
}