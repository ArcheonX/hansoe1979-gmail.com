using Dapper;
using LDMS.Core;
using LDMS.Identity;
using LDMS.ViewModels;
using Microsoft.AspNetCore.Http;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LDMS.Services
{
    public abstract class ILDMSService
    {
        protected HttpContext HttpContext { get; private set; }
        private ILDMSConnection _LDMSConnection;
        protected const string _schema = "[dbo]";
        public ILDMSService(ILDMSConnection connection, IHttpContextAccessor httpContextAccessor)
        {
            HttpContext = httpContextAccessor.HttpContext;
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

        protected string CurrentUserId()
        {
            return JwtManager.Instance.GetUserId(HttpContext.Request);
        }
    }
    public class SQLError
    {
        public int ErrorNumber { get; set; }
        public int ErrorSeverity { get; set; }
        public int ErrorState { get; set; }
        public string ErrorProcedure { get; set; }
        public int ErrorLine { get; set; }
        public string ErrorMessage { get; set; }
    }
}
