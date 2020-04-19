using LDMS.Core;
using LDMS.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Security.Principal;
using System.Threading.Tasks;

namespace LDMS.WEB.Filters
{
    public class ClaimRequirementAttribute : TypeFilterAttribute
    {
        public ClaimRequirementAttribute(string claimType, string claimValue) : base(typeof(ClaimRequirementFilter))
        {
            Arguments = new object[] { new Claim(claimType, claimValue) };
        }
    }
    //public class ClaimRequirementFilter : IAuthorizationFilter
    //{
    //    readonly Claim _claim; 
    //    public ClaimRequirementFilter(Claim claim)
    //    {
    //        _claim = claim;
    //    }

    //    public void OnAuthorization(AuthorizationFilterContext context)
    //    {
    //        var hasClaim = context.HttpContext.User.Claims.Any(c => c.Type == _claim.Type && c.Value == _claim.Value);
    //        if (!hasClaim)
    //        {
    //            context.Result = new ForbidResult();
    //        }
    //    }
    //}

    /// <summary>
    /// 
    /// </summary>
    public class ClaimRequirementFilter : IAuthorizationFilter
    {
        private readonly UserRole[] _roles;
        /// <summary>
        /// 
        /// </summary>
        /// <param name="roles"></param>
        public ClaimRequirementFilter(List<UserRole> roles)
        {
            _roles = roles.ToArray();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="context"></param>
        public void OnAuthorization(AuthorizationFilterContext context)
        {
            string token = string.Empty;
            try
            {
                token = JwtManager.Instance.GetToken(context.HttpContext.Request);
            }
            catch
            {
                //context.Result = new UnauthorizedResult();
                context.Result = new RedirectToActionResult("Index", "Account", null);
            }
            if (string.IsNullOrEmpty(token))
            {
                context.Result = new RedirectToActionResult("Index", "Account", null);
                //  context.Result = new UnauthorizedResult();
            }
            // Validate Token
            Task<IPrincipal> principal = AuthenticateJwtToken(token);
            if (principal == null)
            {
                context.Result = new RedirectToActionResult("Index", "Account", null);
                //context.Result = new UnauthorizedResult();
            }
            // Check token expired
            bool isExpiredToken = JwtManager.Instance.IsExpiredToken(token);
            if (isExpiredToken)
            {
                context.Result = new RedirectToActionResult("Index", "Account", null);
                //context.Result = new UnauthorizedResult();
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="token"></param>
        /// <returns></returns>
        protected Task<IPrincipal> AuthenticateJwtToken(string token)
        {
            Task<IPrincipal> ret = null;
            if (ValidateToken(token, out ClaimsPrincipal simplePrinciple, out string username, out List<UserRole> userRoles) && userRoles.Any(r => (_roles.Contains(r) || _roles.Contains(UserRole.All))))
            {
                IPrincipal identity = new ClaimsPrincipal(simplePrinciple.Identity);
                ret = Task.FromResult(identity);
            } 
            return ret;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="token"></param>
        /// <param name="claims"></param>
        /// <param name="username"></param>
        /// <param name="roles"></param>
        /// <returns></returns>
        private static bool ValidateToken(string token, out ClaimsPrincipal claims, out string username, out List<UserRole> roles)
        {
            username = null;
            roles = new List<UserRole>();
            claims = JwtManager.Instance.GetPrincipal(token);
            if (!(claims?.Identity is ClaimsIdentity identity) || !identity.IsAuthenticated)
            {
                return false;
            }
            Claim usernameClaim = claims.FindFirst(ClaimTypes.Name);
            username = usernameClaim?.Value;

            if (string.IsNullOrEmpty(username))
            {
                return false;
            }
            string rolesClaim = claims.FindFirst(ClaimTypes.Role)?.Value;
            if (!string.IsNullOrEmpty(rolesClaim))
            {
                roles = rolesClaim.Split(",").Select(int.Parse).Select(x => (UserRole)x).ToList();
            }

            return true;
        }
    }
}
