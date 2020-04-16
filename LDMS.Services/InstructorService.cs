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
using System.Runtime.ConstrainedExecution;
using System.Reflection;

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

        public LDMS_M_Instructor GetInstructor(string id)
        {
            LDMS_M_Instructor result = new LDMS_M_Instructor();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@ID", id);

                result = conn.Query<LDMS_M_Instructor>("[dbo].[sp_M_Instructor_Select]", p, commandType: System.Data.CommandType.StoredProcedure).First();

                return result;
            }
        }

        public Paging_Result GetInstructors(LDMS_M_Instructor_Search criteria)
        {
            Paging_Result ret = new Paging_Result();
            List<LDMS_M_Instructor> InstructorList = new List<LDMS_M_Instructor>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                if(criteria.Instructor_ID != null) p.Add("@Instructor_ID", criteria.Instructor_ID);
                if (criteria.IsActive != null) p.Add("@IsActive", criteria.IsActive);
                if (criteria.Instructor_Name != null) p.Add("@Instructor_Name", criteria.Instructor_Name);
                if (criteria.Organization != null) p.Add("@Organization", criteria.Organization);
                if (criteria.Type != null) p.Add("@Type", criteria.Type);
                if (criteria.Course_Experience != null) p.Add("@Course_Experience", criteria.Course_Experience);
                if (criteria.CourseName != null) p.Add("@CourseName", criteria.CourseName);
                p.Add("@PageNum", criteria.PageNum);
                p.Add("@PageSize", criteria.PageSize);
                p.Add("@SortField", criteria.SortField);
                p.Add("@SortOrder", criteria.SortOrder);

                var grid = conn.QueryMultiple("[dbo].[sp_M_Instructor_SelectPaging]", p, commandType: System.Data.CommandType.StoredProcedure);

                InstructorList = grid.Read<LDMS_M_Instructor>().ToList();
                var totalRec = grid.Read().ToList();

                ret.data = InstructorList;
                ret.recordsTotal = totalRec[0].TotalRecords;
                ret.recordsFiltered = totalRec[0].TotalRecords;
                ret.draw = 0;

                return ret;
            }
        }

        public int AddInstructors(LDMS_M_Instructor mod)
        {
            List<LDMS_M_CodeLookUp> result = new List<LDMS_M_CodeLookUp>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@Instructor_ID", mod.Instructor_ID);
                p.Add("@Instructor_Name", mod.Instructor_Name);
                if (mod.Email != null) p.Add("@ID_Employee", mod.ID_Employee);
                p.Add("@Type", mod.Type);
                p.Add("@Phone", mod.Phone);
                p.Add("@Email", mod.Email);
                p.Add("@Organization", mod.Organization);
                p.Add("@Address", mod.Address);
                if (mod.District_Id != null)
                    p.Add("@District_Id", mod.District_Id);
                if (mod.Aumphur_Id != null)
                    p.Add("@Aumphur_Id", mod.Aumphur_Id);
                if (mod.Provice_Id != null)
                    p.Add("@Provice_Id", mod.Provice_Id);
                p.Add("@Post_Code", mod.Post_Code);
                p.Add("@Path_Image", mod.Path_Image);
                p.Add("@Path_Certificate", mod.Path_Certificate);
                p.Add("@Education_Level", mod.Education_Level);
                p.Add("@Major", mod.Major);
                p.Add("@Course_Experience", mod.Course_Experience);
                p.Add("@Skill_Professional", mod.Skill_Professional);
                p.Add("@Customer_Reference", mod.Customer_Reference);
                p.Add("@Manufacturing_Area", mod.Manufacturing_Area);
                p.Add("@Create_By", mod.Create_By);
                p.Add("@IsActive", (mod.IsActive? 1: 0));

                int ret = conn.Query<int>("[dbo].[sp_M_Instructor_Insert]", p, commandType: System.Data.CommandType.StoredProcedure).Single();

                return ret;
            }
        }

        public void UpdateInstructors(LDMS_M_Instructor mod)
        {
            List<LDMS_M_CodeLookUp> result = new List<LDMS_M_CodeLookUp>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@ID", int.Parse(mod.ID));
                p.Add("@Instructor_ID", mod.Instructor_ID);
                p.Add("@Instructor_Name", mod.Instructor_Name);
                if (mod.ID_Employee != null) p.Add("@ID_Employee", mod.ID_Employee);
                p.Add("@Type", mod.Type);
                p.Add("@Phone", mod.Phone);
                p.Add("@Email", mod.Email);
                p.Add("@Organization", mod.Organization);
                p.Add("@Address", mod.Address);
                if (mod.District_Id != null)
                    p.Add("@District_Id", mod.District_Id);
                if (mod.Aumphur_Id != null)
                    p.Add("@Aumphur_Id", mod.Aumphur_Id);
                if (mod.Provice_Id != null)
                    p.Add("@Provice_Id", mod.Provice_Id);
                p.Add("@Post_Code", mod.Post_Code);
                p.Add("@Path_Image", mod.Path_Image);
                p.Add("@Path_Certificate", mod.Path_Certificate);
                p.Add("@Education_Level", mod.Education_Level);
                p.Add("@Major", mod.Major);
                p.Add("@Course_Experience", mod.Course_Experience);
                p.Add("@Skill_Professional", mod.Skill_Professional);
                p.Add("@Customer_Reference", mod.Customer_Reference);
                p.Add("@Manufacturing_Area", mod.Manufacturing_Area);
                p.Add("@Update_By", mod.Update_By);
                p.Add("@IsActive", (mod.IsActive ? 1 : 0));

                conn.Execute("[dbo].[sp_M_Instructor_Update]", p, commandType: System.Data.CommandType.StoredProcedure);
            }
        }

    }
}
