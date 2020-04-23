using Dapper;
using LDMS.Daos;
using LDMS.Identity;
using LDMS.ViewModels;
using Microsoft.AspNetCore.Http;
using System;
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
                var results = Connection.Query<T>(_schema + ".[usp_" + table + "_READ_ALL]");
                return results.ToList();
            }
        }
        protected string CurrentUserId
        {
            get
            {
                return JwtManager.Instance.GetUserId(HttpContext.Request);
            }
        }

        protected void CreateDataLog(DataLogType dataLogType, string employeeId, string detail)
        {
            try
            {
                using (System.Data.IDbConnection conn = Connection)
                {
                    var userId = CurrentUserId;
                    if (string.IsNullOrEmpty(userId))
                    {
                        userId = employeeId;
                    }
                    DynamicParameters parameter = new DynamicParameters();
                    parameter.Add("@LogTypeId", (int)dataLogType);
                    parameter.Add("@EmployeeID", employeeId);
                    parameter.Add("@ip_address", HttpContext.Connection.RemoteIpAddress.ToString());
                    parameter.Add("@CreateBy", userId);
                    parameter.Add("@LogDetail", detail);
                    string commad = _schema + ".[usp_LDMS_T_DataLog_Create]";
                    Connection.Execute(
                            sql: commad,
                            param: parameter,
                            commandTimeout: 0,
                            commandType: System.Data.CommandType.StoredProcedure);
                }
            }
            catch (Exception ex)
            {

            }
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
    public enum DataLogType : int
    {
        LoginSuccess = 1,
        LoginFaild = 2,
        ChangePassword = 3,
        ResetPassword = 4,
        DeleteAccount = 5,
        UpdateAccount = 6,
        AcceptGPP = 7,
        CreateAccount = 8,
    }
}
