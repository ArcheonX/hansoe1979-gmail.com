using Microsoft.AspNetCore.Mvc.Filters;
using System;

namespace LDMS.WEB.Filters
{
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method)]
    public sealed class NoCacheAttribute : ActionFilterAttribute
    {
        
    }
}
