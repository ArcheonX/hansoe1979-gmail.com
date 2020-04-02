using LDMS.Core;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq; 

namespace LDMS.WEB.Filters
{
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method)]
    public class AuthorizeRoleAttribute : TypeFilterAttribute
    {
        public AuthorizeRoleAttribute(params UserRole[] roles) : base(typeof(ClaimRequirementFilter))
        {
            Arguments = new object[] { new List<UserRole>(roles.ToList()) };

        }
    }
}
