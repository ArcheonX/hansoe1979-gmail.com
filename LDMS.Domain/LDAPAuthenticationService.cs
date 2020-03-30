using LDMS.Core; 
namespace LDMS.Domain
{
    public class LDAPAuthenticationService : ILDMSService
    {

        public LDAPAuthenticationService(ILDMSConnection connection):base(connection)
        {

        }
    }
}
