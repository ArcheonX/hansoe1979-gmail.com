using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace LDMS.WEB.Controllers
{
    public class ReportController : BaseController
    {
        [Route("ManageReport/Index")]
        [Route("ManageReport/Report")]
        [Route("ManageReport")]
        public IActionResult Index()
        {
            return View();
        }
    }
}