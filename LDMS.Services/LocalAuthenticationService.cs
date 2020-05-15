using Dapper;
using LDMS.Daos;
using LDMS.ViewModels;
using Microsoft.AspNetCore.Http;
using System;
using System.Linq;

namespace LDMS.Services
{
    public class LocalAuthenticationService : ILDMSService
    {
        public LocalAuthenticationService(ILDMSConnection connection, IHttpContextAccessor httpContextAccessor) : base(connection, httpContextAccessor)
        {

        }

        internal bool Authenticate(string username, string password)
        {
            try
            {
                using (System.Data.IDbConnection conn = Connection)
                {
                    DynamicParameters parameter = new DynamicParameters();
                    parameter.Add("@employeeId", username, System.Data.DbType.String);
                    parameter.Add("@password", password, System.Data.DbType.String);
                    var users = Connection.ExecuteScalar<int>(_schema + ".[usp_User_Authentication]", param: parameter,commandType: System.Data.CommandType.StoredProcedure);
                    return users>0;
                }
            }
            catch(Exception ex)
            {
                return false;
            }
        }
    }
}
