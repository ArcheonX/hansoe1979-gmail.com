using LDMS.Core; 

namespace LDMS.Services
{
    public class LocalAuthenticationService : ILDMSService
    {
        public LocalAuthenticationService(ILDMSConnection connection) : base(connection)
        {

        }
    }
}
