using Dapper;
using LDMS.Core;
using LDMS.Identity;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LDMS.Services
{
    public class MasterService : ILDMSService
    {
        private readonly ILogger<MasterService> _logger;
        public MasterService(ILogger<MasterService> logger, 
            ILDMSConnection iLDMSConnection, 
            IHttpContextAccessor httpContextAccessor) : base(iLDMSConnection, httpContextAccessor)
        {
            _logger = logger;
        }
        public async Task<ServiceResult> GetAllJobGrades()
        {
            try
            {
                return new ServiceResult(await All<ViewModels.LDMS_M_JobGrade>("JobGrade"));
            }
            catch (Exception x)
            {
                _logger.LogError(x.Message);
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
                _logger.LogError(x.Message);
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
                _logger.LogError(x.Message);
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
                _logger.LogError(x.Message);
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
                _logger.LogError(x.Message);
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
                _logger.LogError(x.Message);
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
                _logger.LogError(x.Message);
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
                _logger.LogError(x.Message);
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
                _logger.LogError(x.Message);
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
                _logger.LogError(x.Message);
                return new ServiceResult(x);
            }
        }

        public async Task<ServiceResult> GetSection(int sectionId)
        {
            try
            {
                var items = (await GetAllSections()).Data as List<ViewModels.LDMS_M_Section>;
                return new ServiceResult(items.Where(e => e.ID == sectionId).FirstOrDefault());
            }
            catch (Exception x)
            {
                _logger.LogError(x.Message);
                return new ServiceResult(x);
            }
        }
        public async Task<ServiceResult> DeleteSection(int sectionId)
        {
            try
            {
                using (System.Data.IDbConnection conn = Connection)
                {
                    var items = Connection.Query<SQLError>(_schema + ".[usp_Section_Delete] @param_sectionId,@paramUpdateBy",
                        new
                        {
                            @param_sectionId = sectionId,
                            @paramUpdateBy = CurrentUserId()
                        });
                    if (items != null && items.Any())
                    {
                        return new ServiceResult(new Exception(items.FirstOrDefault().ErrorMessage));
                    }
                    return new ServiceResult();
                }
            }
            catch (Exception x)
            {
                _logger.LogError(x.Message);
                return new ServiceResult(x);
            }
        }

        public async Task<ServiceResult> UpdateSection(ViewModels.LDMS_M_Section section)
        {
            try
            {
                using (System.Data.IDbConnection conn = Connection)
                {
                    var items = Connection.Query<SQLError>(_schema + ".[usp_Section_Update] @param_sectionId,@param_derpartmentId,@para_sectionCode,@param_sectionNameEN,@param_sectionNameTH,@param_sectionDesc,@paramUpdateBy",
                        new
                        {
                            @param_sectionId = section.ID,
                            @param_derpartmentId = section.ID_Department,
                            @para_sectionCode = section.SectionID,
                            @param_sectionNameEN = section.SectionName_EN,
                            @param_sectionNameTH = section.SectionName_TH,
                            @param_sectionDesc = section.Description,
                            @paramUpdateBy = CurrentUserId()
                        });
                    if (items != null && items.Any())
                    {
                        return new ServiceResult(new Exception(items.FirstOrDefault().ErrorMessage));
                    }
                    return await GetSection(section.ID);
                }
            }
            catch (Exception x)
            {
                _logger.LogError(x.Message);
                return new ServiceResult(x);
            }
        }

        public async Task<ServiceResult> CreateSection(ViewModels.LDMS_M_Section section)
        {
            try
            {
                using (System.Data.IDbConnection conn = Connection)
                {
                    var items = Connection.Query<SQLError>(_schema + ".[usp_Section_Create] @param_derpartmentId,@para_sectionCode,@param_sectionNameEN,@param_sectionNameTH,@param_sectionDesc,@paramCreateBy",
                        new
                        {
                            @param_derpartmentId = section.ID_Department,
                            @para_sectionCode = section.SectionID,
                            @param_sectionNameEN = section.SectionName_EN,
                            @param_sectionNameTH = section.SectionName_TH,
                            @param_sectionDesc = section.Description,
                            @paramCreateBy = CurrentUserId()
                        });
                    if (items != null && items.Any())
                    {
                        return new ServiceResult(new Exception(items.FirstOrDefault().ErrorMessage));
                    }
                    return new ServiceResult();
                }
            }
            catch (Exception x)
            {
                _logger.LogError(x.Message);
                return new ServiceResult(x);
            }
        }
    }
}
