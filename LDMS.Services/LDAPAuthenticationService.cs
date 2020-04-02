using LDMS.Core;
using LDMS.Identity;
using Microsoft.Extensions.Options;
using Novell.Directory.Ldap;

namespace LDMS.Services
{
    public class LDAPAuthenticationService : ILDMSService
    { 
       // private readonly LdapSignInManager _signInManager;
        public LDAPAuthenticationService(ILDMSConnection connection/*, LdapSignInManager signInManager*/) : base(connection)
        {
            //_signInManager = signInManager;
        } 
    }
}
