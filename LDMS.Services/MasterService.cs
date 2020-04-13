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
        public async Task<ServiceResult> GetAllJobGrades()
        {
            return new ServiceResult(await All<ViewModels.LDMS_M_JobGrade>("JobGrade"));
        }
        public async Task<ServiceResult> GetAllCenters()
        {
            return new ServiceResult(await All<ViewModels.LDMS_M_Center>("Center"));
        }
        public async Task<ServiceResult> GetAllDepartments()
        {
            return new ServiceResult(await All<ViewModels.LDMS_M_Department>("Department"));
        }
        public async Task<ServiceResult> GetAllDivisions()
        {
            return new ServiceResult(await All<ViewModels.LDMS_M_Division>("Division"));
        }
        public async Task<ServiceResult> GetAllJobTitles()
        {
            return new ServiceResult(await All<ViewModels.LDMS_M_JobTitle>("JobTitle"));
        }
        public async Task<ServiceResult> GetAllSections()
        {
            return new ServiceResult(await All<ViewModels.LDMS_M_Section>("Section"));
        }
        public async Task<ServiceResult> GetAllRoles()
        {
            return new ServiceResult(await All<ViewModels.LDMS_M_Role>("Role"));
        }

        public async Task<ServiceResult> GetAllSections(int departmentId)
        {
            var items = await All<ViewModels.LDMS_M_Section>("Section");
            return new ServiceResult(items.Where(e => e.ID_Department == departmentId).ToList());
        }
    }
}
