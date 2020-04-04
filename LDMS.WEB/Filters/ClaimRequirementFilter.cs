using LDMS.Core;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Security.Principal;
using System.Threading.Tasks;

namespace LDMS.WEB.Filters
{
    /// <summary>
    /// 
    /// </summary>
    public class ClaimRequirementFilter : IAuthorizationFilter
    {
        private const string SECRET_KEY = "QUJDREVGR0hJSktMTU5PUFFSU1RVVldYWVowMTIzNDU=";
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
                token = GetToken(context.HttpContext.Request);
            }
            catch
            {
                context.Result = new UnauthorizedResult();
            }
            if (string.IsNullOrEmpty(token))
            {
                context.Result = new UnauthorizedResult();
            }
            // Validate Token
            Task<IPrincipal> principal = AuthenticateJwtToken(token);
            if (principal == null)
            {
                context.Result = new UnauthorizedResult();
            }
            // Check token expired
            bool isExpiredToken = IsExpiredToken(token);
            if (isExpiredToken)
            {
                context.Result = new UnauthorizedResult();
            }
        }
        private string GetToken(Microsoft.AspNetCore.Http.HttpRequest request)
        {
            string token = string.Empty;
            string authenHeader = request.Headers["Authorization"];
            if (authenHeader != null && authenHeader.StartsWith("BEARER", StringComparison.CurrentCultureIgnoreCase) && !authenHeader.Equals("BEARER", StringComparison.CurrentCultureIgnoreCase))
            {
                token = authenHeader.Substring("BEARER ".Length).Trim();
            }
            if (!IsTokenValid(token))
            {
                throw new AccessViolationException("Invalid Token");
            }
            else
            {
                return token;
            }
        }
        private bool IsTokenValid(string token)
        {
            if (string.IsNullOrEmpty(token)) throw new ArgumentException("Given token is null or empty");
            TokenValidationParameters tokenValidationParameters = GetTokenValidationParameters();
            JwtSecurityTokenHandler tokenHandler = new JwtSecurityTokenHandler();
            try
            {
                tokenHandler.ValidateToken(token, tokenValidationParameters, out SecurityToken securityToken);
                return securityToken.ValidTo > DateTime.Now;
            }
            catch
            {
                return false;
            }

        }
        private TokenValidationParameters GetTokenValidationParameters()
        {
            return new TokenValidationParameters()
            {
                ValidateIssuer = false,
                ValidateAudience = false,
                IssuerSigningKey = GetSecurityKey()
            };
        }
        private static SecurityKey GetSecurityKey()
        {
            return new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(SECRET_KEY));
        }
        private bool IsExpiredToken(string token)
        {
            try
            {
                JwtSecurityTokenHandler jwthandler = new JwtSecurityTokenHandler();
                SecurityToken jwttoken = jwthandler.ReadToken(token);
                DateTime expDate = jwttoken.ValidTo.Year != DateTime.MaxValue.Year ? jwttoken.ValidTo.AddHours(7) : jwttoken.ValidTo;
                return DateTime.Now > expDate;
            }
            catch
            {
                return true;
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

            if (ValidateToken(token, out ClaimsPrincipal simplePrinciple, out string username, out List<UserRole> userRoles) && userRoles.Any(r => _roles.Contains(r)))
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
        private bool ValidateToken(string token, out ClaimsPrincipal claims, out string username, out List<UserRole> roles)
        {
            username = null;
            roles = new List<UserRole>();
            claims = new ClaimsPrincipal();
            claims = GetPrincipal(token);
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
                roles = rolesClaim.Split(",").Select(x => x.ToEnum<UserRole>()).ToList();
            }

            return true;
        }
        private ClaimsPrincipal GetPrincipal(string token)
        {
            try
            {
                JwtSecurityTokenHandler tokenHandler = new JwtSecurityTokenHandler();
                JwtSecurityToken jwtToken = tokenHandler.ReadToken(token) as JwtSecurityToken;
                if (jwtToken == null)
                {
                    return null;
                }
                TokenValidationParameters validationParameters = GetTokenValidationParameters();
                ClaimsPrincipal principal = tokenHandler.ValidateToken(token, validationParameters, out SecurityToken securityToken);
                return principal;
            }
            catch
            {
                return null;
            }
        }
    }
}
