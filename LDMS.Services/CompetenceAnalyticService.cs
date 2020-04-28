using Dapper;
using LDMS.Daos;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
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

                using (IDbConnection conn = Connection)
                {
                    var items = Connection.Query<ViewModels.LDMS_T_CompetenceAnalytic>(_schema + ".[usp_CompetenceAnalytic_READ_BY_AnalyticId]", param: parameter,commandType: CommandType.StoredProcedure).FirstOrDefault();
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

        public async Task<ServiceResult> CreateCompetence(
            ViewModels.LDMS_T_CompetenceAnalytic competenceAnalytic,
            List<ViewModels.LDMS_T_CompetenceAnalytic_Employee> employees,
            List<ViewModels.LDMS_T_CompetenceAnalytic_KnwldTopic> topics)
        {
            try
            {
                var parameters = new DynamicParameters();
                parameters.Add("@CompetenceName", competenceAnalytic.CompetenceAnalyticName);
                parameters.Add("@Criteria1", competenceAnalytic.Criteria1);
                parameters.Add("@Criteria2", competenceAnalytic.Criteria2);
                parameters.Add("@Criteria3", competenceAnalytic.Criteria3);
                parameters.Add("@Criteria4", competenceAnalytic.Criteria4);
                parameters.Add("@Criteria5", competenceAnalytic.Criteria5);
                parameters.Add("@ID_Department", competenceAnalytic.ID_Department);
                parameters.Add("@ID_JobGrade", competenceAnalytic.ID_JobGrade);
                parameters.Add("@ID_EmployeeManager", competenceAnalytic.ID_EmployeeManager);
                parameters.Add("@CreateBy", CurrentUserId);
                parameters.Add("@EmployeeTable", CreatEmployeeTable(employees), DbType.Object);
                parameters.Add("@Topics", CreatTopicTable(topics), DbType.Object);
                using (IDbConnection conn = Connection)
                { 
                    var items = conn.Query<SQLError>(_schema + ".[usp_CompetenceAnalytic_Create]", parameters, commandType: CommandType.StoredProcedure);
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

        public async Task<ServiceResult> UpdateCompetence(
            ViewModels.LDMS_T_CompetenceAnalytic competenceAnalytic, 
            List<ViewModels.LDMS_T_CompetenceAnalytic_Employee> employees, 
            List<ViewModels.LDMS_T_CompetenceAnalytic_KnwldTopic> topics)
        {
            try
            {
                var parameters = new DynamicParameters();
                parameters.Add("@ID_CompetenceAnalytic", competenceAnalytic.ID_Analytic.GetValueOrDefault());
                parameters.Add("@CompetenceName", competenceAnalytic.CompetenceAnalyticName);
                parameters.Add("@Criteria1", competenceAnalytic.Criteria1);
                parameters.Add("@Criteria2", competenceAnalytic.Criteria2);
                parameters.Add("@Criteria3", competenceAnalytic.Criteria3);
                parameters.Add("@Criteria4", competenceAnalytic.Criteria4);
                parameters.Add("@Criteria5", competenceAnalytic.Criteria5);
                parameters.Add("@ID_Department", competenceAnalytic.ID_Department);
                parameters.Add("@ID_JobGrade", competenceAnalytic.ID_JobGrade);
                parameters.Add("@ID_EmployeeManager", competenceAnalytic.ID_EmployeeManager);
                parameters.Add("@UpdateBy", CurrentUserId);
                parameters.Add("@EmployeeTable", CreatEmployeeTable(employees), DbType.Object);
                parameters.Add("@Topics", CreatTopicTable(topics), DbType.Object);
                using (IDbConnection conn = Connection)
                {
                    var items = conn.Query<SQLError>(_schema + ".[usp_CompetenceAnalytic_Update]", parameters, commandType: CommandType.StoredProcedure);
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

        public async Task<ServiceResult> AnalyticEmployees(int analyticId)
        {
            try
            {
                DynamicParameters parameter = new DynamicParameters();
                parameter.Add("@AnalyticId", analyticId);


                using (System.Data.IDbConnection conn = Connection)
                {
                    var items = Connection.Query<ViewModels.LDMS_T_CompetenceAnalytic_Employee, ViewModels.LDMS_M_User, ViewModels.LDMS_T_CompetenceAnalytic_Employee>
                        (_schema + ".[usp_CompetenceAnalyticEmployee_READ_BY_AnalyticId]",
                          map: (analytic, user) =>
                          {
                              if (user != null)
                              {
                                  analytic.LDMS_M_User = user;
                                  analytic.EmployeeID = user.EmployeeID;
                              }
                              return analytic;
                          },
                          splitOn: "EmployeeID",
                          param: parameter, commandType: CommandType.StoredProcedure).ToList();
                    return new ServiceResult(items);
                }
            }
            catch (Exception x)
            {
                _logger.LogError(x.Message);
                return new ServiceResult(x);
            }
        }

        public async Task<ServiceResult> AnalyticKnowledgeTopics(int analyticId)
        {
            try
            {
                DynamicParameters parameter = new DynamicParameters();
                parameter.Add("@AnalyticId", analyticId);

                using (IDbConnection conn = Connection)
                {
                    var items = Connection.Query<ViewModels.LDMS_T_CompetenceAnalytic_KnwldTopic>(_schema + ".[usp_CompetenceAnalyticKnowledgeTopic_READ_BY_AnalyticId]", param: parameter, commandType: CommandType.StoredProcedure).ToList();
                    return new ServiceResult(items);
                }
            }
            catch (Exception x)
            {
                _logger.LogError(x.Message);
                return new ServiceResult(x);
            }
        }

        private System.Data.DataTable CreatEmployeeTable(List<ViewModels.LDMS_T_CompetenceAnalytic_Employee> employees)
        {
            System.Data.DataTable dt = new System.Data.DataTable();
            dt.Columns.Add("EmployeeId", typeof(string));
            foreach (var emp in employees)
            {
                System.Data.DataRow row = dt.NewRow();
                row["EmployeeId"] = emp.EmployeeID;
                dt.Rows.Add(row);
            }
            return dt;
        }

        private System.Data.DataTable CreatTopicTable(List<ViewModels.LDMS_T_CompetenceAnalytic_KnwldTopic> topics)
        {
            System.Data.DataTable dt = new System.Data.DataTable();
            dt.Columns.Add("ID_Topic", typeof(long));
            dt.Columns.Add("ID_Course", typeof(int));
            dt.Columns.Add("TopicName", typeof(string));
            foreach (var topic in topics)
            {
                if(topic.ID<=0 || topic.ID == null)
                {
                    topic.ID = 0;
                }
                if (topic.ID_Course <= 0 || topic.ID_Course == null)
                {
                    topic.ID_Course = 0;
                }
                System.Data.DataRow row = dt.NewRow();
                row["ID_Topic"] = topic.ID;
                row["ID_Course"] = topic.ID_Course;
                row["TopicName"] = topic.KnowledgeTopicName;
                dt.Rows.Add(row);
            }
            return dt;
        }
    }
}
