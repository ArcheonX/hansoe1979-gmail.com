using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

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
