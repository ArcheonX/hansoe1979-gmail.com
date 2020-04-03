using Dapper;
using LDMS.Core;
using LDMS.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;

namespace LDMS.Services
{
    public class LocalAuthenticationService : ILDMSService
    {
        public LocalAuthenticationService(ILDMSConnection connection) : base(connection)
        {

        }

        internal bool Authenticate(string username, string password)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var dictionary = new Dictionary<string, object>
                        {
                            { "@param_EmployeeId", username },
                            { "@param_Password", password }
                        };
                var parameters = new DynamicParameters(dictionary);
                var users = Connection.QuerySingle<LDMS_M_UserRole>(_schema + ".[usp_UserRole_READ_BY_EmployeeId] @param_EmployeeId,@param_Password", parameters);
                //IEnumerable<LDMS_M_UserRole> stores = Connection.Query<LDMS_M_UserRole, LDMS_M_Role, LDMS_M_UserRole> ("[dbo].[usp_UserRole_READ_BY_EmployeeId]", (a, s) => { a.LDMS_M_Role = s; return a; }, splitOn: "ID_Role");
                // IEnumerable<LDMS_M_UserRole> stores = Connection.Query<LDMS_M_UserRole>("[dbo].[usp_UserRole_READ_BY_EmployeeId]");
                return users != null; 
            } 
        }
    }
}
