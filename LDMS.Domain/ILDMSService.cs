using LDMS.Core;
using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.Domain
{
    public abstract class ILDMSService
    {
        private ILDMSConnection _LDMSConnection;
        public ILDMSService(ILDMSConnection connection)
        {
            _LDMSConnection = connection;
        }
        protected System.Data.IDbConnection Connection
        {
            get
            {
                return _LDMSConnection.GetConnection();
            }
        }
    }
}
