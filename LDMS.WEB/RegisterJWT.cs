using LDMS.Core;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.IdentityModel.Tokens;
using System.Text;

namespace LDMS.WEB
{
    public static class RegisterJWT
    {
        private static JwtSettings original;
        /// <summary>
        /// Configure JWT
        /// </summary>
        /// <param name="self"></param>
        /// <param name="configuration"></param>
        public static void ConfigureJWTService(this IServiceCollection self, IConfiguration configuration)
        {
            //self.Configure<JwtConfiguration>(configuration.GetSection(ConfigurationKeys.Jwt));
            //original = configuration.Get<JwtConfiguration>(ConfigurationKeys.Jwt);
            var jwtSettingsSection = configuration.GetSection("JwtSettings");
            original = jwtSettingsSection.Get<JwtSettings>();

            System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.DefaultInboundClaimTypeMap.Clear();

            self.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
                .AddJwtBearer(options =>
                {
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
        }

        /// <summary>
        /// Configure JWT
        /// </summary>
        /// <param name="self"></param>
        public static void ConfigureJWT(this IApplicationBuilder self)
        {
            self.UseAuthentication();
            //using (var serviceScope = ServiceActivator.GetScope())
            //{
            //    ILoggerFactory loggerFactory = serviceScope.ServiceProvider.GetService<ILoggerFactory>();
            //    IOptionsMonitor<JwtConfiguration> option = (IOptionsMonitor<JwtConfiguration>)serviceScope.ServiceProvider.GetService(typeof(IOptionsMonitor<JwtConfiguration>)); 
            //    ILogger logger = loggerFactory.CreateLogger(typeof(RegisterJWT));
            //    option.OnChange((o, s) =>
            //    {
            //        logger.LogInformation($"JwtConfiguration reset to original.");
            //    });
            //}
        }
    }
}
