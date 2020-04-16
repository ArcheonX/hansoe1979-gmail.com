using LDMS.Services;
using LDMS.ViewModels;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace LDMS.WEB.ViewComponents
{
    public class JobGradeSelectionViewComponent : ViewComponent
    {
        private readonly MasterService Service;
        public JobGradeSelectionViewComponent(MasterService service)
        {
            Service = service;
        }
        [Authorize]
        public async Task<IViewComponentResult> InvokeAsync()
        {
            try
            {
                List<LDMS_M_JobGrade> grades = (await Service.GetAllJobGrades()).Data as List<LDMS_M_JobGrade>;
                //if (grades == null || grades.Count <= 0)
                //{
                //    grades =( await Service.GetAllJobGrades()).Data as List<LDMS_M_JobGrade>;
                //}
                //ViewData["JobGrades"] = grades; 	 
                return View(grades);
            }
            catch
            {
                List<LDMS_M_JobGrade> menus = new List<LDMS_M_JobGrade>();
                return View(menus);
            }
        }
    }
}
