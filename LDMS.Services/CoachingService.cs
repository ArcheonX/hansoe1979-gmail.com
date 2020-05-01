using Dapper;
using LDMS.Identity;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Text.Json;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Data;
using LDMS.Daos;
using LDMS.ViewModels;

namespace LDMS.Services
{
    public class CoachingService : ILDMSService
    {
        private readonly ILogger<CoachingService> _logger;
        public CoachingService(
           ILogger<CoachingService> logger,
           ILDMSConnection iLDMSConnection, IHttpContextAccessor httpContextAccessor) : base(iLDMSConnection, httpContextAccessor)
        {
            _logger = logger;
        }

        public ViewModels.LDMS_T_Coaching UpdateCoachingDetail(string ID_Coaching, string Topic, string CoachingStatus)
        {

            using (IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();

                p.Add("@ID_Coaching", ID_Coaching);
                p.Add("@Topic", Topic);
                p.Add("@CoachingStatus", CoachingStatus);
                p.Add("@UpdateBy", CurrentUserId);

                ViewModels.LDMS_T_Coaching ret = conn.Query<ViewModels.LDMS_T_Coaching>(_schema + ".[sp_T_Coaching_Update]", p, commandType: CommandType.StoredProcedure).FirstOrDefault();

                return ret;
            }
        }


        public ViewModels.Paging_Result GetCoaching(ViewModels.LDMS_T_CoachingSearch criteria, bool employee)
        {
            using (IDbConnection conn = Connection)
            {
                ViewModels.Paging_Result ret = new ViewModels.Paging_Result();
                List<ViewModels.LDMS_T_Coaching_Result> coachingList = new List<ViewModels.LDMS_T_Coaching_Result>();
                try
                {
    
                    var p = new DynamicParameters();
                    if (criteria.ID_Plant != null) p.Add("@ID_Plant", criteria.ID_Plant);
                    if (criteria.ID_Center != null) p.Add("@ID_Center", criteria.ID_Center);
                    if (criteria.ID_Division != null) p.Add("@ID_Division", criteria.ID_Division);
                    if (criteria.ID_Department != null) p.Add("@ID_Department", criteria.ID_Department);
                    if (criteria.ID_Status != "0") p.Add("@ID_Status", criteria.ID_Status);
                    
                    
                    if (criteria.ID_Employee != null)
                    {
                        p.Add("@ID_Employee", criteria.ID_Employee);
                    }
                    else 
                    {
                        if (employee) {
                            p.Add("@ID_Employee", CurrentUserId); // user login
                        }

                    }

                    if (criteria.ID_Platform != null) p.Add("@ID_Platform", criteria.ID_Platform);

                    p.Add("@PageNum", criteria.PageNum);
                    p.Add("@PageSize", criteria.PageSize);
                    p.Add("@SortField", criteria.SortField);
                    p.Add("@SortOrder", criteria.SortOrder);


                    var grid = conn.QueryMultiple("[dbo].[sp_T_Coaching_Select_Paging]", p, commandType: CommandType.StoredProcedure);

                    coachingList = grid.Read<ViewModels.LDMS_T_Coaching_Result>().ToList();
                    var totalRec = grid.Read().ToList();

                    ret.data = coachingList;
                    ret.recordsTotal = totalRec[0].TotalRecords;
                    ret.recordsFiltered = totalRec[0].TotalRecords;
                    ret.draw = 0;

                    return ret;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }


        public int CreateCoachingHead(string ID_Coaching, string EmployeeReport, string AttachFilePath, string AttachFileName)
        {

            using (IDbConnection conn = Connection)
            {
                try
                {
                    var p = new DynamicParameters();

                    p.Add("@ID_Coaching", ID_Coaching);
                    p.Add("@EmployeeReport", EmployeeReport);
                    p.Add("@AttachFilePath", AttachFilePath);
                    p.Add("@AttachFileName", AttachFileName);
                    p.Add("@ID_PostByEmployee", CurrentUserId);

                    int ret = conn.Query<int>(_schema + ".[sp_T_CoachingReviewHead_Insert]", p, commandType: CommandType.StoredProcedure).Single();


                    return ret;
                }
                catch(Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }

        public ViewModels.LDMS_T_CoachingReviewHead GetCoachingReviewHead(string ID_Coaching)
        {
            using (IDbConnection conn = Connection)
            {
                ViewModels.LDMS_T_CoachingReviewHead CoachingReviewHead = new ViewModels.LDMS_T_CoachingReviewHead();
                try
                {

                    var p = new DynamicParameters();
                    if (ID_Coaching != null) p.Add("@ID_Coaching", ID_Coaching);

                    CoachingReviewHead = conn.Query<ViewModels.LDMS_T_CoachingReviewHead>(_schema + ".[sp_T_CoachingReviewHead_Select]", p, commandType: CommandType.StoredProcedure).FirstOrDefault();

                    return CoachingReviewHead;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }

        
        public int CreateCoachingDetail(string ID_CoachingReviewHead, string PostDetail, string AttachFilePath, string AttachFileName)
        {

            using (IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();

                p.Add("@ID_CoachingReviewHead", ID_CoachingReviewHead);
                p.Add("@PostDetail", PostDetail);
                p.Add("@AttachFilePath", AttachFilePath);
                p.Add("@AttachFileName", AttachFileName);
                p.Add("@PostBy_EmployeeID", CurrentUserId);

                int ret = conn.Query<int>(_schema + ".[sp_T_CoachingReviewDetail_Insert]", p, commandType: CommandType.StoredProcedure).Single();

                return ret;
            }
        }

        public List<ViewModels.LDMS_T_CoachingReviewDetail> GetCoachingReviewDetail(string ID_CoachingReviewHead)
        {
            using (IDbConnection conn = Connection)
            {
                List<ViewModels.LDMS_T_CoachingReviewDetail> CoachingReviewDetail = new List<ViewModels.LDMS_T_CoachingReviewDetail>();
                try
                {
                    var p = new DynamicParameters();
                    if (ID_CoachingReviewHead != null) p.Add("@ID_CoachingReviewHead", ID_CoachingReviewHead);

                    var grid = conn.QueryMultiple("[dbo].[sp_T_CoachingReviewDetail_Select]", p, commandType: CommandType.StoredProcedure);

                    CoachingReviewDetail = grid.Read<ViewModels.LDMS_T_CoachingReviewDetail>().ToList();


                    return CoachingReviewDetail;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }


        public ViewModels.LDMS_T_Coaching GetCoachingByID(string ID)
        {
            using (IDbConnection conn = Connection)
            {
                try
                {
                    var p = new DynamicParameters();
                    p.Add("@ID_Coaching", ID);

                    ViewModels.LDMS_T_Coaching item = conn.Query<ViewModels.LDMS_T_Coaching>("[dbo].[sp_T_CoachingByID_Select]", p, commandType: CommandType.StoredProcedure).FirstOrDefault();

                    return item;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }

    }
}
