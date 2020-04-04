using LDMS.Core;
using LDMS.Identity;

namespace LDMS.Services
{
    public class LDAPAuthenticationService : ILDMSService
    {
        private readonly ILdapService _ldapService;
        public LDAPAuthenticationService(ILDMSConnection connection, ILdapService ldapService) : base(connection)
        {
            _ldapService = ldapService;
        }
        public bool Authenticate(string username, string password)
        {
            try
            {
                return _ldapService.Authenticate(username, password);
            }
            catch
            {
                return false;
            }
        }
    }
}
