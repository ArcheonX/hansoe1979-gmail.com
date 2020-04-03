using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.DependencyInjection;
using System.Threading.Tasks;

namespace LDMS.Core
{     
    public class UserIdentityRole : Microsoft.AspNetCore.Identity.IdentityRole
    {
        public UserIdentityRole(string roleName) : base(roleName)
        {

        }
        public string Description { get; set; }
    }

    public enum UserRole : int
    {
        /// <summary>
        /// Undifine row
        /// </summary>
        None = 0,
        /// <summary>
        /// RoleID = ACCB2124-BA87-4E07-AD75-30D88BB81CBF , Role Name = Sysadmin
        /// </summary>
        Administrator = 1,
        /// <summary>
        /// RoleID = 18C15FB9-E55A-4876-B166-6BD5E0156694 , Role Name = Workflow Manager
        /// </summary>
        Manager = 2,
        /// <summary>
        /// RoleID = FAC1FB26-40F5-4A29-A038-43AD584B760B , Role Name = Workflow Contributor
        /// </summary>
        User = 3,
    }
}
