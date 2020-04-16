using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LDMS.WEB.Filters
{
    public class CustomAuthorizeAttribute : TypeFilterAttribute
    {
        //public AuthorizeAttribute(params string[] claim) : base(typeof(AuthorizeFilter))
        //{
        //    Arguments = new object[] { claim };
        //}
        public CustomAuthorizeAttribute(params ViewModels.LDMS_M_Role[] roles) : base(typeof(ClaimRequirementFilter))
        {
            Arguments = new object[] { new List<ViewModels.LDMS_M_Role>(roles.ToList()) };
        }
    }
}
