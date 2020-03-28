using LDMS.Core;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace LDMS.Daos
{
    public class ADOConnection : ILDMSConnection
    {
        public ADOConnection(string connectionstring) : base(connectionstring)
        {
        }
        public override IDbConnection GetConnection()
        {
            return new SqlConnection(_connectionstring);
        }
    }
}
