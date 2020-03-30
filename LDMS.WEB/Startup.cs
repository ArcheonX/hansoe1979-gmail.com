using System;
using System.Linq;
using System.Reflection;
using System.Text;
using LDMS.Daos;
using LDMS.Domain;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

namespace LDMS.WEB
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.Configure<CookiePolicyOptions>(options =>
            {
                // This lambda determines whether user consent for non-essential cookies is needed for a given request.
                options.CheckConsentNeeded = context => true;
                options.MinimumSameSitePolicy = SameSiteMode.None;
            });
            services.AddCors();
            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_3_0);
            services.AddAuthorization(options =>
            {
                options.AddPolicy("Administrator", policy => policy.RequireClaim("Administrator"));
                options.AddPolicy("Manager", policy => policy.RequireClaim("Manager"));
                options.AddPolicy("User", policy => policy.RequireClaim("User"));
                options.AddPolicy("MinExperience", policy => policy.Requirements.Add(new Filters.MinimumExpRequirement(5)));
            });
            services.AddSingleton<IAuthorizationHandler, Filters.MinimumExpHandler>();

            services.AddControllers()
            .AddNewtonsoftJson(options =>
            {
                options.SerializerSettings.ContractResolver = new DefaultContractResolver();
            });
            services.AddHttpContextAccessor();
            var appSettingsSection = Configuration.GetSection("AppSettings");
            services.Configure<AppSettings>(appSettingsSection);

            var appSettings = appSettingsSection.Get<AppSettings>();
            var key = Encoding.ASCII.GetBytes(appSettings.Secret);

            services.AddSingleton<ILDMSConnection, ADOConnection>(serviceProvider =>
            {
                return new ADOConnection(Configuration.GetConnectionString("DefaultConnection"));
            });
            services.Configure<CookiePolicyOptions>(options =>
            {
                // This lambda determines whether user consent for non-essential cookies is needed for a given request.
                options.CheckConsentNeeded = context => true;
                options.MinimumSameSitePolicy = SameSiteMode.None;
            });
            services.AddAntiforgery(options =>
            {
                options.HeaderName = "X-XSRF-TOKEN";
                options.SuppressXFrameOptionsHeader = false;
            });
            services.AddControllersWithViews();
            services.AddAuthentication(options =>
            {
                options.DefaultAuthenticateScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultChallengeScheme = CookieAuthenticationDefaults.AuthenticationScheme;
            })
            .AddCookie(options =>
            {
                options.EventsType = typeof(CustomCookieAuthenticationEvents);
            })
            .AddJwtBearer(x =>
            {
                x.RequireHttpsMetadata = false;
                x.SaveToken = true;
                x.TokenValidationParameters = new TokenValidationParameters
                {
                    ValidateIssuerSigningKey = true,
                    IssuerSigningKey = new SymmetricSecurityKey(key),
                    ValidateIssuer = false,
                    ValidateAudience = false
                };
            });
            services.AddScoped<CustomCookieAuthenticationEvents>();
            Assembly service = Assembly.GetAssembly(typeof(ILDMSService));
            foreach (Type mytype in typeof(ILDMSService).Assembly.GetTypes().Where(mytype => !mytype.IsAbstract && mytype.IsSubclassOf(typeof(ILDMSService))))
            {
                foreach (Type myImple in service.GetTypes().Where(myImple => mytype.IsAssignableFrom(myImple)))
                {
                    services.AddScoped(mytype, myImple);
                }
            }  
        } 

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error"); 
                app.UseHsts();
            }
            app.UseRouting();

            // global cors policy
            app.UseCors(x => x
                .AllowAnyOrigin()
                .AllowAnyMethod()
                .AllowAnyHeader());
            app.UseHttpsRedirection();
            app.UseStaticFiles(); 
            app.UseAuthorization();
            app.UseAuthentication();
            var cookiePolicyOptions = new CookiePolicyOptions
            {
                MinimumSameSitePolicy = SameSiteMode.None,
            };
            app.UseCookiePolicy(cookiePolicyOptions);
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute( name: "default", pattern: "{controller=Home}/{action=Index}/{id?}"); 
            }); 
        }
    } 
}
