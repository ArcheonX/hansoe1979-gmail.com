using LDMS.Daos;
using LDMS.Identity;
using Microsoft.AspNetCore.Http;

namespace LDMS.Services
{
    public class LDAPAuthenticationService : ILDMSService
    {
        private readonly ILdapService _ldapService;
        public LDAPAuthenticationService(ILDMSConnection connection, ILdapService ldapService,
            IHttpContextAccessor httpContextAccessor) : base(connection, httpContextAccessor)
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
