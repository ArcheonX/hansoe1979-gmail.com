using Dapper;
using LDMS.Core;
using LDMS.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LDMS.Services
{
   public class MasterService : ILDMSService
    {
        public MasterService(ILDMSConnection iLDMSConnection) : base(iLDMSConnection)
        {

        } 
        public async Task<List<ViewModels.LDMS_M_JobGrade>> GetAllJobGrades()
        {
            return await All<ViewModels.LDMS_M_JobGrade>("JobGrade"); 
        }
        public async Task<List<ViewModels.LDMS_M_Center>> GetAllCenters()
        {
            return await All<ViewModels.LDMS_M_Center>("Center"); 
        }
        public async Task<List<ViewModels.LDMS_M_Department>> GetAllDepartments()
        {
            return await All<ViewModels.LDMS_M_Department>("Department"); 
        }
        public async Task<List<ViewModels.LDMS_M_Division>> GetAllDivisions()
        {
            return await All<ViewModels.LDMS_M_Division>("Division");
        }
        public async Task<List<ViewModels.LDMS_M_JobTitle>> GetAllJobTitles()
        {
            return await All<ViewModels.LDMS_M_JobTitle>("JobTitle");
        }
        public async Task<List<ViewModels.LDMS_M_Section>> GetAllSections()
        {
            return await All<ViewModels.LDMS_M_Section>("Section");
        }
        public async Task<List<ViewModels.LDMS_M_Role>> GetAllRoles()
        {
            return await All<ViewModels.LDMS_M_Role>("Role");
        }

        public List<LDMS_M_CodeLookUp> GetCodeLookups(string tableName, string fieldName)
        {
            List<LDMS_M_CodeLookUp> result = new List<LDMS_M_CodeLookUp>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@TableName", tableName);
                p.Add("@FieldName", fieldName);

                result = conn.Query<LDMS_M_CodeLookUp>("[dbo].[sp_M_CodeLookUp_Select]", p, commandType: System.Data.CommandType.StoredProcedure).ToList();

                return result;
            }
        }

        public List<LDMS_M_Provinces> GetProvinces()
        {
            List<LDMS_M_Provinces> result = new List<LDMS_M_Provinces>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();

                result = conn.Query<LDMS_M_Provinces>("[dbo].[sp_M_Provinces_Select]", p, commandType: System.Data.CommandType.StoredProcedure).ToList();

                return result;
            }
        }

        public List<LDMS_M_Amphurs> GetAmphurs(string provinceID)
        {
            List<LDMS_M_Amphurs> result = new List<LDMS_M_Amphurs>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@PROVINCE_ID", provinceID);

                result = conn.Query<LDMS_M_Amphurs>("[dbo].[sp_M_Amphur_Select]", p, commandType: System.Data.CommandType.StoredProcedure).ToList();

                return result;
            }
        }

        public List<LDMS_M_Districts> GetDistricts(string provinceID, string amphurID)
        {
            List<LDMS_M_Districts> result = new List<LDMS_M_Districts>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@PROVINCE_ID", provinceID);
                p.Add("@AMPHUR_ID", amphurID);

                result = conn.Query<LDMS_M_Districts>("[dbo].[sp_M_District_Select]", p, commandType: System.Data.CommandType.StoredProcedure).ToList();

                return result;
            }
        }

    }

}
