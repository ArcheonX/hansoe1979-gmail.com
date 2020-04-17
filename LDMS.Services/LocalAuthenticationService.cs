using Dapper;
using LDMS.Core;
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
                    var users = Connection.Query<LDMS_M_UserRole, LDMS_M_Role, LDMS_M_UserRole>
                        (_schema + ".[usp_UserRole_READ_BY_EmployeeId] @param_EmployeeId,@param_Password",
                        map: (userRole, role) =>
                        {
                            if (userRole != null)
                            {
                                userRole.LDMS_M_Role = role;
                            } 
                            return userRole;
                        },
                          splitOn: "UserRoleId,RoleId",
                            param: new { @param_EmployeeId = username, @param_Password= password });
                    return users.Any();
                }
            }catch(Exception ex)
            {
                return false;
            }
        }
    }
}
