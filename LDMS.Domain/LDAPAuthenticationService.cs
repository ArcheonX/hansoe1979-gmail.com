using LDMS.Core;
using LDMS.Domain;
namespace LDMS.Services
{
    public class LDAPAuthenticationService : ILDMSService
    {

        public LDAPAuthenticationService(ILDMSConnection connection):base(connection)
        {

        }
    }
}
