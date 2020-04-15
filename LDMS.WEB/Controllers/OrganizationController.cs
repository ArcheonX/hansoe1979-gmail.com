using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LDMS.Services;
using LDMS.WEB.Models.Employee;
using Microsoft.AspNetCore.Mvc;

namespace LDMS.WEB.Controllers
{
    public class OrganizationController : BaseController
    {
        private readonly MasterService MasterService;
        private readonly UserService UserService;

        public OrganizationController(MasterService masterService, UserService userService)
        {
            MasterService = masterService;
            UserService = userService;
        }
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)] 
        [Route("Organization/Section")]
        public async Task<IActionResult> Section()
        {  
            return View();
        }

        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Organization/SectionByDepartment")]
        public async Task<IActionResult> SectionByDepartment(int departmentId)
        {
            return Response(await MasterService.GetAllSections(departmentId));
        }
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Organization/Employees")]
        public async Task<IActionResult> Employees(int departmentId,int sectionId,string keyword)
        {
            var grades = (await MasterService.GetAllJobGrades()).Data as List<ViewModels.LDMS_M_JobGrade>;
            var titles = (await MasterService.GetAllJobTitles()).Data as List<ViewModels.LDMS_M_JobTitle>;
            var sections = (await MasterService.GetAllSections(departmentId)).Data as List<ViewModels.LDMS_M_Section>;
            var users = (await UserService.GetAllEmployeeByDepartmentId(departmentId)).Data as List<ViewModels.LDMS_M_User>;
            var employees = users.Select(emp => new Models.Employee.EmployeeSectionView(emp)
            {
                JobGrade = grades.FirstOrDefault(e => e.ID == emp.ID_JobGrade.GetValueOrDefault())?.JobGradeName_EN,
                JobTitle = titles.FirstOrDefault(e => e.ID == emp.ID_JobTitle.GetValueOrDefault())?.JobTitleName_EN,
                LDMS_M_Sections = sections
            }).ToList();
            if (sectionId > 0)
            {
                employees = employees.Where(e => e.LDMS_M_UserRole != null && e.LDMS_M_UserRole.ID_Section == sectionId).ToList();
            }
            if (!string.IsNullOrEmpty(keyword))
            {
                employees = employees.Where(e => 
                (e.Name!= null && e.Name.ToLower().StartsWith(keyword.ToLower()))
                || (e.Surname!=null && e.Surname.ToLower().StartsWith(keyword.ToLower()))
                || (e.Email!=null &&  e.Email.ToLower().StartsWith(keyword.ToLower())) 
                || (e.EmployeeID!=null && e.EmployeeID.ToLower().StartsWith(keyword.ToLower()))
                ).ToList();
            }
            int index = 1;
            employees.ForEach(item =>
            {
                item.RowIndex = index;
                index++;
            });
            return PartialView("section/_employeeList", employees);
        }

        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Organization/Sections")]
        public async Task<IActionResult> GetAllSections(int departmentId)
        {
            var sections = (await MasterService.GetAllSections(departmentId)).Data as List<ViewModels.LDMS_M_Section>;
            return PartialView("section/_sectionListView", sections);
        }

        [HttpPost]
        [Route("Organization/CreateSection")]
        public async Task<IActionResult> CreateSection(ViewModels.LDMS_M_Section model)
        {
            return Response(await MasterService.CreateSection(model));
        }
        [HttpPost]
        [Route("Organization/UpdateSection")]
        public async Task<IActionResult> UpdateSection(ViewModels.LDMS_M_Section model)
        {
            return Response(await MasterService.UpdateSection(model));
        }
        [HttpDelete]
        [Route("Organization/DeleteSection")]
        public async Task<IActionResult> DeleteSection(int sectionId)
        {
            return Response(await MasterService.DeleteSection(sectionId));
        }

        [HttpPost]
        [Route("Organization/SectionEmployeeSave")]
        public async Task<IActionResult> SectionEmployeeSave(List<SectionEmployeeSaveModel> model)
        {
            return Response(null);
        }
        //SectionEmployeeSaveModel
    }
}