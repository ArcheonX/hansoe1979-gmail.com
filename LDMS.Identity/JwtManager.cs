﻿using LDMS.Core;
using LDMS.ViewModels;
using Microsoft.AspNetCore.Http;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;

namespace LDMS.Identity
{
    public sealed class JwtManager
    {
        private static JwtManager instance = null;
        private JwtSettings _jwtSettings;
        private JwtManager()
        {
        }
        public static JwtManager Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new JwtManager();
                }
                return instance;
            }
        }
        public void InitialConfig(JwtSettings jwtSettings)
        {
            _jwtSettings = jwtSettings;
        }
        public string GenerateJWT(List<Claim> claims)
        {
            var securityKey = GetSecurityKey();
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256Signature);
            var token = new JwtSecurityToken(_jwtSettings.JwtIssuer, _jwtSettings.JwtIssuer, claims, expires: DateTime.Now.AddDays(30), signingCredentials: credentials);
            return new JwtSecurityTokenHandler().WriteToken(token);
        }

        private SecurityKey GetSecurityKey()
        {
            return new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_jwtSettings.JwtKey));
        }

        private TokenValidationParameters GetTokenValidationParameters()
        {
            return new TokenValidationParameters
            {
                ValidateIssuer = true,
                ValidateAudience = true,
                ValidateLifetime = true,
                ValidateIssuerSigningKey = true,
                ValidIssuer = _jwtSettings.JwtIssuer ?? string.Empty,
                ValidAudience = _jwtSettings.JwtAudience ?? string.Empty,
                IssuerSigningKey = GetSecurityKey()
            };
        }

        public bool IsTokenValid(string token)
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
        public string GenerateRefreshToken()
        {
            var randomNumber = new byte[32];
            using (var rng = System.Security.Cryptography.RandomNumberGenerator.Create())
            {
                rng.GetBytes(randomNumber);
                return Convert.ToBase64String(randomNumber);
            }
        }
        public string GetToken(HttpRequest request)
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
        public string GetUserId(HttpRequest request)
        {
            var token = GetToken(request);
            var claims = GetClaims(token);
            return claims.ToList().FirstOrDefault(x => x.Type == ClaimTypes.NameIdentifier)?.Value;
        }

        public IEnumerable<Claim> GetClaims(string token)
        {
            if (string.IsNullOrEmpty(token)) throw new ArgumentException("Given token is null or empty");
            TokenValidationParameters tokenValidationParameters = GetTokenValidationParameters();
            JwtSecurityTokenHandler tokenHandler = new JwtSecurityTokenHandler();
            ClaimsPrincipal claimsPrincipal = tokenHandler.ValidateToken(token, tokenValidationParameters, out SecurityToken securityToken);
            return claimsPrincipal.Claims;
        }

        public bool IsExpiredToken(string token)
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
        public ClaimsPrincipal GetPrincipal(string token)
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
        public string GetFromToken(string token, string key)
        {
            if (!string.IsNullOrEmpty(token) && token != "undefined")
            {
                try
                {

                    JwtSecurityTokenHandler tokenHandler = new JwtSecurityTokenHandler();
                    JwtSecurityToken jwtToken = tokenHandler.ReadToken(token) as JwtSecurityToken;
                    if (jwtToken == null)
                    {
                        return string.Empty;
                    }
                    TokenValidationParameters validationParameters = GetTokenValidationParameters();
                    ClaimsPrincipal principal = tokenHandler.ValidateToken(token, validationParameters, out SecurityToken securityToken);
                    Claim claim = principal.Claims.FirstOrDefault(o => o.Type.ToUpper() == key.ToUpper());
                    return claim != null ? claim.Value : string.Empty;
                }
                catch//(Exception ex)
                {
                    //Can't read token we expect this token invalid
                    return string.Empty;
                }
            }
            else
            {
                return string.Empty;
            }
        }
    } 
}
