using Dapper;
using LDMS.Core;
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
    }
}
