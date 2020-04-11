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

        public Paging_Result GetInstructors(LDMS_M_Instructor_Search crieria)
        {
            Paging_Result ret = new Paging_Result();
            List<LDMS_M_Instructor> InstructorList = new List<LDMS_M_Instructor>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var grid= conn.QueryMultiple("[dbo].[sp_M_Instructor_SelectPaging]", crieria, commandType: System.Data.CommandType.StoredProcedure);

                InstructorList = grid.Read<LDMS_M_Instructor>().ToList();
                var totalRec = grid.Read().ToList();

                ret.Results = InstructorList;
                ret.TotalRecords = totalRec[0].TotalRecords;

                //InstructorList = conn.QueryMul<LDMS_M_Instructor>("[dbo].[sp_M_Instructor_SelectPaging]", crieria, commandType: System.Data.CommandType.StoredProcedure).ToList();


                return ret;
            }
        }
    }
}
