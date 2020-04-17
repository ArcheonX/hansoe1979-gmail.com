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
    public class JobTitleSelectionViewComponent : ViewComponent
    {
        private readonly MasterService Service;
        public JobTitleSelectionViewComponent(MasterService service)
        {
            Service = service;
        }
        [Authorize]
        public async Task<IViewComponentResult> InvokeAsync()
        {
            try
            {
                List<LDMS_M_JobTitle> titles = (await Service.GetAllJobGrades()).Data as List<LDMS_M_JobTitle>;
                //if (grades == null || grades.Count <= 0)
                //{
                //    grades =( await Service.GetAllJobGrades()).Data as List<LDMS_M_JobTitle>;
                //}
                //ViewData["JobTitles"] = grades; 	 
                return View(titles);
            }
            catch
            {
                List<LDMS_M_JobTitle> menus = new List<LDMS_M_JobTitle>();
                return View(menus);
            }
        }
    }
}
