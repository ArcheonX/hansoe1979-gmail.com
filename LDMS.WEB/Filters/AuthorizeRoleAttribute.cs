using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace LDMS.WEB.Filters
{
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method)]
    public class AuthorizeRoleAttribute : TypeFilterAttribute
    {
        public AuthorizeRoleAttribute(params ViewModels.LDMS_M_Role[] roles) : base(typeof(ClaimRequirementFilter))
        {
            Arguments = new object[] { new List<ViewModels.LDMS_M_Role>(roles.ToList()) };
        }
    }
}
