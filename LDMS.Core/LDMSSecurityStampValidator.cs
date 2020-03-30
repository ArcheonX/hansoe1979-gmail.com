using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace LDMS.Core
{
    public class LDMSSecurityStampValidator : ISecurityStampValidator
    {
        public Task ValidateAsync(CookieValidatePrincipalContext context)
        {
            if (context.HttpContext.RequestServices == null)
            {
                throw new System.InvalidOperationException("RequestServices is null.");
            }
            var validator = context.HttpContext.RequestServices.GetRequiredService<ISecurityStampValidator>();
            return validator.ValidateAsync(context);
        }
    }
}
