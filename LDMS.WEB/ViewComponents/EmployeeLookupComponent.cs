using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LDMS.WEB.ViewComponents
{
    public class EmployeeLookupComponent : ViewComponent
    {
        public async Task<IViewComponentResult> InvokeAsync()
        {
            //ViewData["CtrlCode"] = ctrlCode;
            return View("~/Views/Shared/Components/_EmployeeLookup.cshtml");
        }
    }
}
