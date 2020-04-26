using Dapper;
using LDMS.Daos;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LDMS.Services
{
    public class CompetenceAnalyticService : ILDMSService
    {
        private readonly ILogger<CompetenceAnalyticService> _logger;
        public CompetenceAnalyticService(ILogger<CompetenceAnalyticService> logger,
            ILDMSConnection iLDMSConnection,
            IHttpContextAccessor httpContextAccessor) : base(iLDMSConnection, httpContextAccessor)
        {
            _logger = logger;
        }
        public async Task<ServiceResult> ReadAll()
        {
            try
            {
                using (System.Data.IDbConnection conn = Connection)
                {
                    var items = Connection.Query<ViewModels.LDMS_T_CompetenceAnalytic>(_schema + ".[usp_CompetenceAnalytic_READ_ALL]").ToList();
                    return new ServiceResult(items);
                }
            }
            catch (Exception x)
            {
                _logger.LogError(x.Message);
                return new ServiceResult(x);
            }
        }

        public async Task<ServiceResult> ReadById(int analyticId)
        {
            try
            {
                DynamicParameters parameter = new DynamicParameters();
                parameter.Add("@AnalyticId", analyticId);

                using (System.Data.IDbConnection conn = Connection)
                {
                    var items = Connection.Query<ViewModels.LDMS_T_CompetenceAnalytic>(_schema + ".[usp_CompetenceAnalytic_READ_BY_AnalyticId]", param: parameter).FirstOrDefault();
                    return new ServiceResult(items);
                }
            }
            catch (Exception x)
            {
                _logger.LogError(x.Message);
                return new ServiceResult(x);
            }
        }

        public async Task<ServiceResult> AnalyticScore(int analyticId)
        {
            try
            {
                DynamicParameters parameter = new DynamicParameters();
                parameter.Add("@AnalyticId", analyticId);

                using (System.Data.IDbConnection conn = Connection)
                {
                    var items = Connection.Query<ViewModels.LDMS_T_CompetenceAnalytic_Score>(_schema + ".[usp_CompetenceAnalyticScore_READ_BY_AnalyticId]", param: parameter).ToList();
                    return new ServiceResult(items);
                }
            }
            catch (Exception x)
            {
                _logger.LogError(x.Message);
                return new ServiceResult(x);
            }
        }
       
        public async Task<ServiceResult> AnalyticEmployee(int analyticId)
        {
            try
            {
                DynamicParameters parameter = new DynamicParameters();
                parameter.Add("@AnalyticId", analyticId);

                using (System.Data.IDbConnection conn = Connection)
                {
                    var items = Connection.Query<ViewModels.LDMS_T_CompetenceAnalytic_Employee, ViewModels.LDMS_M_User, ViewModels.LDMS_T_CompetenceAnalytic_Employee>
                        (_schema + ".[usp_CompetenceAnalyticEmployee_READ_BY_AnalyticId]",
                          map: (analytic,user) =>
                          {
                              if (user != null)
                              {
                                  analytic.LDMS_M_User = user;
                                  analytic.EmployeeID = user.EmployeeID;
                              }
                              return analytic; 
                          },
                          splitOn: "EmployeeID",
                        param: parameter).ToList();
                    return new ServiceResult(items);
                }
            }
            catch (Exception x)
            {
                _logger.LogError(x.Message);
                return new ServiceResult(x);
            }
        }

        public async Task<ServiceResult> AnalyticKnowledgeTopic(int analyticId)
        {
            try
            {
                DynamicParameters parameter = new DynamicParameters();
                parameter.Add("@AnalyticId", analyticId);

                using (System.Data.IDbConnection conn = Connection)
                {
                    var items = Connection.Query<ViewModels.LDMS_T_CompetenceAnalytic_KnwldTopic>(_schema + ".[usp_CompetenceAnalyticKnowledgeTopic_READ_BY_AnalyticId]", param: parameter).ToList();
                    return new ServiceResult(items);
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
