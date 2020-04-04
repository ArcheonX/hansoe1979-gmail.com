using LDMS.Core;
using LDMS.ViewModels;
using Microsoft.AspNetCore.Http;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace LDMS.Identity
{
    public class JwtManager
    {
        public static string GenerateJWT(HttpContext httpContext, LDMS_M_User authenticatedUser, JwtSettings jwtSettings)
        {
            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(jwtSettings.JwtKey));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256Signature);
            List<Claim> claims = new List<Claim>
            {
                new Claim(JwtRegisteredClaimNames.Sub, authenticatedUser.EmployeeID),
                new Claim(ClaimTypes.GivenName, authenticatedUser.Name),
                new Claim(ClaimTypes.Surname, authenticatedUser.Surname),
                new Claim(ClaimTypes.Email, authenticatedUser.Email),
                new Claim(ClaimTypes.NameIdentifier, authenticatedUser.EmployeeID),
                new Claim(ClaimTypes.Name, authenticatedUser.EmployeeID),
                new Claim("ID_Division", authenticatedUser.ID_Division.ToString()),
                new Claim("ID_Center", authenticatedUser.ID_Center.ToString()),
                new Claim("ID_Department", authenticatedUser.ID_Department.ToString()),
                new Claim("ID_Section", authenticatedUser.ID_Section.ToString()),
                new Claim(ClaimTypes.Role, authenticatedUser.LDMS_M_UserRole!=null? authenticatedUser.LDMS_M_UserRole.ID_Role.ToString():"0"),
            };
            var JWToken = new JwtSecurityToken(jwtSettings.JwtIssuer, jwtSettings.JwtIssuer, claims, expires: DateTime.Now.AddDays(120), signingCredentials: credentials);
            var token = new JwtSecurityTokenHandler().WriteToken(JWToken);
            httpContext.Session.SetString("JWToken", token);
            return token;
        }
        public static string GetToken(HttpRequest request, TokenValidationParameters tokenValidationParameters)
        {
            string token = string.Empty;
            string authenHeader = request.Headers["Authorization"];
            if (authenHeader != null && authenHeader.StartsWith("BEARER", StringComparison.CurrentCultureIgnoreCase) && !authenHeader.Equals("BEARER", StringComparison.CurrentCultureIgnoreCase))
            {
                token = authenHeader.Substring("BEARER ".Length).Trim();
            }
            return token;
        }
        public static bool IsTokenValid(string token, TokenValidationParameters tokenValidationParameters)
        {
            if (string.IsNullOrEmpty(token)) throw new ArgumentException("Given token is null or empty"); 
            JwtSecurityTokenHandler tokenHandler = new JwtSecurityTokenHandler();
            try
            {
                tokenHandler.ValidateToken(token, tokenValidationParameters, out SecurityToken securityToken);
                return securityToken.ValidTo > DateTime.Now;
            }
            catch(Exception ex)
            {
                return false;
            }

        }
        public static IEnumerable<Claim> GetClaims(string token, TokenValidationParameters tokenValidationParameters)
        {
            if (string.IsNullOrEmpty(token)) throw new ArgumentException("Given token is null or empty"); 
            JwtSecurityTokenHandler tokenHandler = new JwtSecurityTokenHandler();
            ClaimsPrincipal claimsPrincipal = tokenHandler.ValidateToken(token, tokenValidationParameters, out SecurityToken securityToken);
            return claimsPrincipal.Claims;
        }

    }
}
