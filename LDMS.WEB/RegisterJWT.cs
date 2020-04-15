using LDMS.Core;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.IdentityModel.Tokens;
using System.Text;

namespace LDMS.WEB
{
    public static class RegisterJWT
    { 
        /// <summary>
        /// Configure JWT
        /// </summary>
        /// <param name="self"></param>
        /// <param name="configuration"></param>
        public static void ConfigureJWTService(this IServiceCollection self, JwtSettings original)
        { 
            System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.DefaultInboundClaimTypeMap.Clear();

            self.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
                .AddJwtBearer(options =>
                {
                    options.RequireHttpsMetadata = false;
                    options.SaveToken = true;
                    options.TokenValidationParameters = new TokenValidationParameters
                    {
                        ValidateIssuer = true,
                        ValidateAudience = true,
                        ValidateLifetime = true,
                        ValidateIssuerSigningKey = true,
                        ValidIssuer = original.JwtIssuer ?? string.Empty,
                        ValidAudience = original.JwtAudience ?? string.Empty,
                        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(original.JwtKey ?? string.Empty))
                    }; 
                });
            Identity.JwtManager.Instance.InitialConfig(original);
        }

        /// <summary>
        /// Configure JWT
        /// </summary>
        /// <param name="self"></param>
        public static void ConfigureJWT(this IApplicationBuilder self)
        {  
            self.UseSession();
            //Add JWToken to all incoming HTTP Request Header
            self.Use(async (context, next) =>
            {
                var JWToken = context.Session.GetString("JWToken");
                if (!string.IsNullOrEmpty(JWToken))
                {
                    context.Request.Headers.Add("Authorization", "Bearer " + JWToken);
                }
                await next();
            });
            //Add JWToken Authentication service
            self.UseAuthentication(); 
        }
    }
}
