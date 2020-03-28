using LDMS.Core;
using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.Domain
{
   public abstract class ILDMSService
    {
        protected ILDMSConnection _connection;
        public ILDMSService(ILDMSConnection connection)
        {
            _connection = connection;
        }
    }
}
