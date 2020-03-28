using LDMS.Core;
using LDMS.Domain;

namespace LDMS.Services
{
    public class LocalAuthenticationService : ILDMSService
    {
        public LocalAuthenticationService(ILDMSConnection connection) : base(connection)
        {

        }
    }
}
