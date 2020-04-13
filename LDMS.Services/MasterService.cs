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
            try
            {
                return new ServiceResult(await All<ViewModels.LDMS_M_JobGrade>("JobGrade"));
            }
            catch (Exception x)
            {
                return new ServiceResult(x);
            }
        }
        public async Task<ServiceResult> GetAllCenters()
        {
            try
            {
                return new ServiceResult(await All<ViewModels.LDMS_M_Center>("Center"));
            }
            catch (Exception x)
            {
                return new ServiceResult(x);
            }
        }
        public async Task<ServiceResult> GetAllDepartments()
        {
            try
            {
                return new ServiceResult(await All<ViewModels.LDMS_M_Department>("Department"));
        }
            catch (Exception x)
            {
                return new ServiceResult(x);
    }
}
        public async Task<ServiceResult> GetAllDivisions()
        {
            try
            {
                return new ServiceResult(await All<ViewModels.LDMS_M_Division>("Division"));
            }
            catch (Exception x)
            {
                return new ServiceResult(x);
            }
        }
        public async Task<ServiceResult> GetAllJobTitles()
        {
            try
            {
                return new ServiceResult(await All<ViewModels.LDMS_M_JobTitle>("JobTitle"));
            }
            catch (Exception x)
            {
                return new ServiceResult(x);
            }
        }
        public async Task<ServiceResult> GetAllSections()
        {
            try
            {
                return new ServiceResult(await All<ViewModels.LDMS_M_Section>("Section"));
            }
            catch (Exception x)
            {
                return new ServiceResult(x);
            }
        }
        public async Task<ServiceResult> GetAllRoles()
        {
            try
            {
                return new ServiceResult(await All<ViewModels.LDMS_M_Role>("Role"));
            }
            catch (Exception x)
            {
                return new ServiceResult(x);
            }
        }

        public async Task<ServiceResult> GetAllSections(int departmentId)
        {
            try
            {
                var items = (await GetAllSections()).Data as List<ViewModels.LDMS_M_Section>;
                return new ServiceResult(items.Where(e => e.ID_Department == departmentId).ToList());
            }
            catch (Exception x)
            {
                return new ServiceResult(x);
            }
        }

        public async Task<ServiceResult> GetDepartment(int departmentId)
        {
            try
            {
                var items = (await GetAllDepartments()).Data as List<ViewModels.LDMS_M_Department>;
                return new ServiceResult(items.Where(e => e.ID_Department == departmentId).FirstOrDefault());
            }
            catch (Exception x)
            {
                return new ServiceResult(x);
            }
        }

        public async Task<ServiceResult> GetDivision(int divisionId)
        {
            try
            {
                var items = (await GetAllDivisions()).Data as List<ViewModels.LDMS_M_Division>;
                return new ServiceResult(items.Where(e => e.ID == divisionId).FirstOrDefault());
            }
            catch (Exception x)
            {
                return new ServiceResult(x);
            }
        }
    }
}
