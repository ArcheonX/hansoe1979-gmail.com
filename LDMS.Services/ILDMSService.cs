using Dapper;
using LDMS.Core;
using LDMS.ViewModels;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

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
        protected async Task<List<T>> All<T>(string table) where T : BaseViewModel
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var results = Connection.Query<T>(_schema + ".[usp_"+ table + "_READ_ALL]"); 
                return results.ToList();
            }
        }
    }
}
