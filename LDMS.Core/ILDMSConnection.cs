using System.Data;

namespace LDMS.Core
{
    public abstract class ILDMSConnection
    {
        protected string _connectionstring;
        public ILDMSConnection(string connectionstring)
        {
            _connectionstring = connectionstring;
        }
        public abstract IDbConnection GetConnection();
    }
}
