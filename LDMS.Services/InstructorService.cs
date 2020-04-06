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
    public class InstructorService : ILDMSService
    {
        private readonly AppSettings _appSettings;
        public InstructorService(IOptions<AppSettings> appSettings,
            ILDMSConnection iLDMSConnection) : base(iLDMSConnection)
        {
            _appSettings = appSettings.Value;
        }

        public IEnumerable<LDMS_M_Instructor> GetInstructors(LDMS_M_Instructor_Search crieria)
        {
            List<LDMS_M_Instructor> InstructorList = new List<LDMS_M_Instructor>();
            using (System.Data.IDbConnection conn = Connection)
            {
                InstructorList = conn.Query<LDMS_M_Instructor>("[dbo].[sp_M_Instructor_Select]").ToList();
                return InstructorList.ToList();
            }
        }
    }
}
