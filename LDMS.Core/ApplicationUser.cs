namespace LDMS.Core
{
    public class IdentityExtension : System.Security.Principal.IIdentity
    {
        public IdentityExtension()
        { }
        public IdentityExtension(string name)
        {
            this.Name = name;
        }
        public string AuthenticationType => "Kerberos";

        public bool IsAuthenticated => true;

        public string Name { get; set; }
    }
    public class UserIdentityRole : Microsoft.AspNetCore.Identity.IdentityRole
    {
        public UserIdentityRole(string roleName) : base(roleName)
        {

        }
        public string Description { get; set; }
    } 
}
