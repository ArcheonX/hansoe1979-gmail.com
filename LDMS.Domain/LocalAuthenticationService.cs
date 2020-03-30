using LDMS.Core; 

namespace LDMS.Domain
{
    public class LocalAuthenticationService : ILDMSService
    {
        public LocalAuthenticationService(ILDMSConnection connection) : base(connection)
        {

        }
    }
}
