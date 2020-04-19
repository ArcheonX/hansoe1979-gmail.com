using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LDMS.Core;
using LDMS.Services;
using LDMS.ViewModels.ReportModel;
using LDMS.WEB.Filters;
using Microsoft.AspNetCore.Mvc;

namespace LDMS.WEB.Controllers
{
    public class ReportController : BaseController
    {
        private readonly MasterService MasterService;
        public ReportController(MasterService masterService)
        {
            MasterService = masterService;
        }
        [AuthorizeRole(UserRole.All)]
        [Route("ManageReport/Index")]
        [Route("ManageReport/Report")]
        [Route("ManageReport")]
        public IActionResult Index()
        {
            ViewData["Title"] = "I-Manage Report";
            ViewData["MainTitle"] = "I-Manage";
            return View();
        }
        [AuthorizeRole(UserRole.AdminHR, UserRole.SuperAdmin)]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        [HttpGet]
        [Route("Report/GetIMasterReport")]
        public async Task<IActionResult> GetIMasterReport(MasterReportFilterModel model)
        {
            return Response(await MasterService.GetIMasterReport(model));
             

        }
    }
}