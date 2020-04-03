using LDMS.Core;
using LDMS.Daos;
using LDMS.Identity;
using LDMS.Services;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Linq;
using System.Reflection;

namespace LDMS.WEB
{
    public static class Register
    {
        /// <summary>
        /// used in <seealso cref="Startup.ConfigureServices(IServiceCollection)"/>
        /// </summary>
        /// <param name="self"></param>
        /// <param name="configuration"></param>
        public static void ConfigureAppServices(this IServiceCollection self, IConfiguration configuration)
        {
            self.AddScoped<ILDMSConnection, ADOConnection>(serviceProvider =>
            {
                return new ADOConnection(configuration.GetConnectionString("DefaultConnection"));
            });
            self.AddScoped<CustomCookieAuthenticationEvents>();
            self.AddScoped<ILdapService, LdapService>();

            Assembly service = Assembly.GetAssembly(typeof(ILDMSService));
            foreach (Type mytype in typeof(ILDMSService).Assembly.GetTypes().Where(mytype => !mytype.IsAbstract && mytype.IsSubclassOf(typeof(ILDMSService))))
            {
                foreach (Type myImple in service.GetTypes().Where(myImple => mytype.IsAssignableFrom(myImple)))
                {
                    self.AddScoped(mytype, myImple);
                }
            }
        }
    }
}
