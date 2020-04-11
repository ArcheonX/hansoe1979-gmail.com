using LDMS.Core;
using LDMS.ViewModels;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Dapper;
using System.Linq;


namespace LDMS.Services
{
    public class MasterService : ILDMSService
    {
        private readonly AppSettings _appSettings;
        public MasterService(IOptions<AppSettings> appSettings,
            ILDMSConnection iLDMSConnection) : base(iLDMSConnection)
        {
            _appSettings = appSettings.Value;
        }

        public List<LDMS_CodeLookup> GetCodeLookups(string tableName, string fieldName)
        {
            List<LDMS_CodeLookup> result = new List<LDMS_CodeLookup>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@TableName", tableName);
                p.Add("@FieldName", fieldName);

                result = conn.Query<LDMS_CodeLookup>("[dbo].[sp_M_CodeLookUp_Select]", p, commandType: System.Data.CommandType.StoredProcedure).ToList();

                return result;
            }
        }

    }
}
