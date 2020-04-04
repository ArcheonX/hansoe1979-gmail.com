using LDMS.Core;

namespace LDMS.Services
{
    public abstract class ILDMSService
    {

        private ILDMSConnection _LDMSConnection;
        protected const string _schema = "[dbo]";
        public ILDMSService(ILDMSConnection connection)
        {
            _LDMSConnection = connection;
        }
        protected System.Data.IDbConnection Connection
        {
            get
            {
                var connection = _LDMSConnection.GetConnection();

                if (connection.State == System.Data.ConnectionState.Closed)
                    connection.Open();

                return connection;

            }
        }
    }
}
