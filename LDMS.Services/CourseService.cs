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
    public class CourseService : ILDMSService
    {
        private readonly ILogger<CourseService> _logger;
        public CourseService(
            ILogger<CourseService> logger,
            ILDMSConnection iLDMSConnection, IHttpContextAccessor httpContextAccessor) : base(iLDMSConnection, httpContextAccessor)
        {
            _logger = logger;
        }
        public async Task<List<ViewModels.LDMS_M_CourseType>> GetAllCourseType()
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                try
                {
                    var items = Connection.Query<ViewModels.LDMS_M_CourseType>
                    (_schema + ".[sp_M_CourseType_ALL]");

                    return items.ToList();
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }

        public async Task<List<ViewModels.LDMS_M_CourseLearnMethod>> GetAllCourseLearnMethod()
        {
            using (IDbConnection conn = Connection)
            {
                try
                {
                    var items = Connection.Query<ViewModels.LDMS_M_CourseLearnMethod>
                    (_schema + ".[sp_M_CourseLearnMethod_ALL]");

                    return items.ToList();
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }

        public ViewModels.Paging_Result GetCourse(ViewModels.LDMS_M_Course_Search criteria)
        {
            using (IDbConnection conn = Connection)
            {
                ViewModels.Paging_Result ret = new ViewModels.Paging_Result();
                List<ViewModels.LDMS_M_Course> CourseList = new List<ViewModels.LDMS_M_Course>();
                try
                {

                    var p = new DynamicParameters();
                    if (criteria.CourseID != null) p.Add("@Course_ID", criteria.CourseID);
                    if (criteria.CourseName != null) p.Add("@Course_Name", criteria.CourseName);
                    if (criteria.CourseStatus != null) p.Add("@IsActive", criteria.CourseStatus);
                    if (criteria.LearnMethod != null) p.Add("@Learn_Method", criteria.LearnMethod);

                    p.Add("@PageNum", criteria.PageNum);
                    p.Add("@PageSize", criteria.PageSize);
                    p.Add("@SortField", criteria.SortField);
                    p.Add("@SortOrder", criteria.SortOrder);


                    var grid = conn.QueryMultiple("[dbo].[sp_M_Course_SelectPaging]", p, commandType: CommandType.StoredProcedure);

                    CourseList = grid.Read<ViewModels.LDMS_M_Course>().ToList();
                    var totalRec = grid.Read().ToList();

                    ret.data = CourseList;
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

        public ViewModels.LDMS_M_Course GetCourseByID(string ID)
        {
            using (IDbConnection conn = Connection)
            {
                try
                {
                    var p = new DynamicParameters();
                    p.Add("@paramIDCourse", ID);

                    ViewModels.LDMS_M_Course item = conn.Query<ViewModels.LDMS_M_Course>("[dbo].[sp_M_Course_Select_ByID]", p, commandType: CommandType.StoredProcedure).FirstOrDefault();

                    return item;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }

        private DataTable CreateData(string value, string column)
        {
            List<String> element = value.Split(',').ToList();
            element.Remove("");
            DataTable dt = new DataTable();
            dt.Columns.Add(column, typeof(string));
            foreach (string str in element)
            {
                DataRow row = dt.NewRow();
                row[column] = str;
                dt.Rows.Add(row);
            }

            return dt;
        }

        public async Task<List<ViewModels.LDMS_M_Course>> GetAll(string courseID, string courseName, string courseStatus, string LearnMethod)
        {
            using (IDbConnection conn = Connection)
            {
                try
                {
                    var items = Connection.Query<ViewModels.LDMS_M_Course>
                    (_schema + ".[sp_M_Course_Select] @paramCourseId,@paramCourseName,@paramCourseStatus,@paramLearnMethod",
                     new
                     {
                         @paramCourseId = courseID,
                         @paramCourseName = courseName,
                         @paramCourseStatus = courseStatus,
                         @paramLearnMethod = LearnMethod
                     }).ToList();
                    return items;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }

        public ViewModels.LDMS_M_Course CreateCourse(string CourseID, string CourseName, string ID_LearnMethod,
                                    string ID_CourseType, string Objective, string Description, string OutLine,
                                    string IsRefreshment, string RefreshmentPeriod, string RefreshmentUnit,
                                    string TargetEmployeeID, string ID_PlantTarget, string ID_CenterTarget,
                                    string ID_DivisionTarget, string ID_DepartmentTarget, string ID_SectionTarget,
                                    string JobGradeTargetID, string JobTitleTargetID, string IsActive)
        {

            using (IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                //p.Add("@paramCourseID ", CourseID);
                p.Add("@paramCourseName", CourseName);
                p.Add("@paramID_LearnMethod", ID_LearnMethod);
                p.Add("@paramID_CourseType", ID_CourseType);
                p.Add("@paramObjective", Objective);
                p.Add("@paramDescription", Description);
                p.Add("@paramOutLine", OutLine);
                p.Add("@paramIsRefreshment", IsRefreshment);
                p.Add("@paramRefreshmentPeriod", RefreshmentPeriod);
                p.Add("@paramRefreshmentUnit", RefreshmentUnit);
                p.Add("@paramTargetEmployeeID", CreateData(TargetEmployeeID, "EmployeeID"), DbType.Object);
                p.Add("@paramID_PlantTarget", ID_PlantTarget);
                p.Add("@paramID_CenterTarget", ID_CenterTarget);
                p.Add("@paramID_DivisionTarget", ID_DivisionTarget);
                p.Add("@paramID_DepartmentTarget", ID_DepartmentTarget);
                p.Add("@paramID_SectionTarget", ID_SectionTarget);
                p.Add("@paramJobGradeTargetID", CreateData(JobGradeTargetID, "ID_JobGrade"), DbType.Object);
                p.Add("@paramJobTitleTargetID", CreateData(JobTitleTargetID, "ID_JobTitle"), DbType.Object);
                p.Add("@paramID_DepartmentCreate", JwtManager.Instance.GetFromToken(HttpContext.Request, "DEPARTMENTID")); // JwtManager.Instance.GetDepartmentId(HttpContext.Request) //Example
                p.Add("@paramCreateBy", CurrentUserId); //// JwtManager.Instance.GetUserId(HttpContext.Request) //Example
                p.Add("@@paramIsActive", IsActive);

                ViewModels.LDMS_M_Course ret = conn.Query<ViewModels.LDMS_M_Course>(_schema + ".[sp_M_Course_Insert]", p, commandType: CommandType.StoredProcedure).FirstOrDefault();

                return ret;
            }
        }

        public ViewModels.LDMS_M_Course UpdateCourse(string ID_Course, string CourseID, string CourseName, string ID_LearnMethod,
                                            string ID_CourseType, string Objective, string Description, string OutLine,
                                            string IsRefreshment, string RefreshmentPeriod, string RefreshmentUnit,
                                            string TargetEmployeeID, string ID_PlantTarget, string ID_CenterTarget,
                                            string ID_DivisionTarget, string ID_DepartmentTarget, string ID_SectionTarget,
                                            string JobGradeTargetID, string JobTitleTargetID, string isActive)
        {
            using (IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@ID_Course ", ID_Course);
                p.Add("@paramCourseID ", CourseID);
                p.Add("@paramCourseName", CourseName);
                p.Add("@paramID_LearnMethod", ID_LearnMethod);
                p.Add("@paramID_CourseType", ID_CourseType);
                p.Add("@paramObjective", Objective);
                p.Add("@paramDescription", Description);
                p.Add("@paramOutLine", OutLine);
                p.Add("@paramIsRefreshment", IsRefreshment);
                p.Add("@paramRefreshmentPeriod", RefreshmentPeriod);
                p.Add("@paramRefreshmentUnit", RefreshmentUnit);
                p.Add("@paramTargetEmployeeID", CreateData(TargetEmployeeID, "EmployeeID"), DbType.Object);
                p.Add("@paramID_PlantTarget", ID_PlantTarget);
                p.Add("@paramID_CenterTarget", ID_CenterTarget);
                p.Add("@paramID_DivisionTarget", ID_DivisionTarget);
                p.Add("@paramID_DepartmentTarget", ID_DepartmentTarget);
                p.Add("@paramID_SectionTarget", ID_SectionTarget);
                p.Add("@paramJobGradeTargetID", CreateData(JobGradeTargetID, "ID_JobGrade"), DbType.Object);
                p.Add("@paramJobTitleTargetID", CreateData(JobTitleTargetID, "ID_JobTitle"), DbType.Object);
                p.Add("@paramID_DepartmentCreate", JwtManager.Instance.GetFromToken(HttpContext.Request, "DEPARTMENTID")); // JwtManager.Instance.GetDepartmentId(HttpContext.Request) //Example
                p.Add("@paramUpdateBy", CurrentUserId); //// JwtManager.Instance.GetUserId(HttpContext.Request) //Example
                p.Add("@paramIsActive", isActive);

                ViewModels.LDMS_M_Course ret = conn.Query<ViewModels.LDMS_M_Course>(_schema + ".[sp_M_Course_Update]", p, commandType: CommandType.StoredProcedure).FirstOrDefault();

                return ret;
            }
        }


        public List<ViewModels.LDMS_M_Employee> GetEmployee(ViewModels.LDMS_M_Employee_Search criteria)
        {
            using (IDbConnection conn = Connection)
            {
                ViewModels.Paging_Result ret = new ViewModels.Paging_Result();
                List<ViewModels.LDMS_M_Employee> EmployeeList = new List<ViewModels.LDMS_M_Employee>();
                try
                {

                    var p = new DynamicParameters();
                    if (criteria.EmployeeID != null) p.Add("@EmployeeID", criteria.EmployeeID);
                    if (criteria.EmployeeName != null) p.Add("@EmployeeName", criteria.EmployeeName);
                    if (criteria.DepartmentID != null) p.Add("@DepartmentID", criteria.DepartmentID);
                    if (criteria.SectionID != null) p.Add("@SectionID", criteria.SectionID);
                    if (criteria.JobGradeID != null) p.Add("@JobGradeID", criteria.JobGradeID);
                    if (criteria.JobTitleID != null) p.Add("@JobTitleID", criteria.JobTitleID);

                    //p.Add("@PageNum", criteria.PageNum);
                    //p.Add("@PageSize", criteria.PageSize);
                    //p.Add("@SortField", criteria.SortField);
                    //p.Add("@SortOrder", criteria.SortOrder);


                    var grid = conn.QueryMultiple("[dbo].[sp_M_Employee_SelectPaging]", p, commandType: CommandType.StoredProcedure);

                    EmployeeList = grid.Read<ViewModels.LDMS_M_Employee>().ToList();
                    //var totalRec = grid.Read().ToList();

                    //ret.data = EmployeeList;
                    //ret.recordsTotal = totalRec[0].TotalRecords;
                    //ret.recordsFiltered = totalRec[0].TotalRecords;
                    //ret.draw = 0;

                    return EmployeeList;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }

        public List<ViewModels.LDMS_M_Instructor> GetInstructor(ViewModels.LDMS_M_Instructor_Search criteria)
        {
            using (IDbConnection conn = Connection)
            {
                ViewModels.Paging_Result ret = new ViewModels.Paging_Result();
                List<ViewModels.LDMS_M_Instructor> InstructorList = new List<ViewModels.LDMS_M_Instructor>();
                try
                {

                    var p = new DynamicParameters();
                    if (criteria.Instructor_ID != null) p.Add("@Instructor_ID", criteria.Instructor_ID);
                    if (criteria.Instructor_Name != null) p.Add("@@Instructor_Name", criteria.Instructor_Name);
                    if (criteria.Type != "ALL") p.Add("@Type", criteria.Type);
                    if (criteria.Organization != null) p.Add("@Organization", criteria.Organization);
                    if (criteria.Course_Experience != null) p.Add("@Course_Experience", criteria.Course_Experience);

                    p.Add("@IsActive", 1);

                    var grid = conn.QueryMultiple("[dbo].[sp_M_Instructor_SelectPaging]", p, commandType: CommandType.StoredProcedure);
                    InstructorList = grid.Read<ViewModels.LDMS_M_Instructor>().ToList();

                    return InstructorList;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }


        public async Task<List<ViewModels.LDMS_M_VenueRoom>> GetVenuRoom()
        {
            using (IDbConnection conn = Connection)
            {
                try
                {
                    var items = Connection.Query<ViewModels.LDMS_M_VenueRoom>
                    (_schema + ".[sp_M_VanueRoom_SelectAll]");

                    return (List<ViewModels.LDMS_M_VenueRoom>)items;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }

        public async Task<List<ViewModels.LDMS_M_VenueRoom>> GetVenuRoomByPlantID(string ID_Plant)
        {
            using (IDbConnection conn = Connection)
            {
                try
                {
                    var p = new DynamicParameters();

                    p.Add("@ID_Plant", ID_Plant);

                    List<ViewModels.LDMS_M_VenueRoom> ret = conn.Query<ViewModels.LDMS_M_VenueRoom>(_schema + ".[sp_M_VanueRoomByPlantID_Select]", p, commandType: CommandType.StoredProcedure).ToList();

                    return ret;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }

        public ViewModels.LDMS_T_Class CreateClass(string ID_Course, string ID_Instructor, string ClassCapacity, string ClassFee,
                                            string LearnDateStart, string LearnTimeStart, string LearnDateEnd, string LearnTimeEnd,
                                            string RegisterDateStart, string RegisterDateEnd, string ID_PlantVenue,
                                            string ID_VenueRoom, string PlaceAndLocation, string ClassStatus,
                                            string IsAttend, string AttendNum, string IsTest,
                                            string TestFullScore, string TestPercentage, string IsSkill, string SkillFullScore,
                                            string SkillPercentage, string IsCoaching, string IsCertificate, string IsAttachCert,
                                            string CertificationRemark, string ReminderDurationDay, string IsActive)
        {

            using (IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                //p.Add("@paramCourseID ", CourseID);
                p.Add("@paramID_Course", ID_Course);
                p.Add("@paramID_Instructor", ID_Instructor);
                p.Add("@paramClassCapacity", ClassCapacity);
                p.Add("@paramClassFee", ClassFee);
                p.Add("@paramLearnDateStart", LearnDateStart);
                p.Add("@paramLearnTimeStart", LearnTimeStart);
                p.Add("@paramLearnDateEnd", LearnDateEnd);
                p.Add("@paramLearnTimeEnd", LearnTimeEnd);
                p.Add("@paramRegisterDateStart", RegisterDateStart);
                p.Add("@paramRegisterDateEnd", RegisterDateEnd);
                p.Add("@paramID_PlantVenue", ID_PlantVenue);
                p.Add("@paramID_VenueRoom", ID_VenueRoom);
                p.Add("@paramPlaceAndLocation", PlaceAndLocation);
                p.Add("@paramClassStatus", ClassStatus);
                p.Add("@paramIsAttend", IsAttend);
                p.Add("@paramAttendNum", AttendNum);
                p.Add("@paramIsTest", IsTest);
                p.Add("@paramTestFullScore", TestFullScore);
                p.Add("@paramTestPercentage", TestPercentage);
                p.Add("@paramIsSkill", IsSkill);
                p.Add("@paramSkillFullScore", SkillFullScore);
                p.Add("@paramSkillPercentage", SkillPercentage);
                p.Add("@paramIsCoaching", IsCoaching);
                p.Add("@paramIsCertificate", IsCertificate);
                p.Add("@paramIsAttachCert", IsAttachCert);
                p.Add("@paramCertificationRemark", CertificationRemark);
                p.Add("@paramReminderDurationDay", ReminderDurationDay);
                p.Add("@paramCreateBy", CurrentUserId); //// JwtManager.Instance.GetUserId(HttpContext.Request) //Example
                p.Add("@@paramIsActive", IsActive);

                ViewModels.LDMS_T_Class ret = conn.Query<ViewModels.LDMS_T_Class>(_schema + ".[sp_T_Class_Insert]", p, commandType: CommandType.StoredProcedure).FirstOrDefault();

                return ret;
            }
        }

        public ViewModels.LDMS_T_Class UpdateClass(string ID, string ID_Course, string ID_Instructor, string ClassCapacity, string ClassFee,
                                            string LearnDateStart, string LearnTimeStart, string LearnDateEnd, string LearnTimeEnd,
                                            string RegisterDateStart, string RegisterDateEnd, string ID_PlantVenue,
                                            string ID_VenueRoom, string PlaceAndLocation, string ClassStatus,
                                            string IsAttend, string AttendNum, string IsTest,
                                            string TestFullScore, string TestPercentage, string IsSkill, string SkillFullScore,
                                            string SkillPercentage, string IsCoaching, string IsCertificate, string IsAttachCert,
                                            string CertificationRemark, string ReminderDurationDay, string IsActive)
        {

            using (IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@paramIDCLass", ID);
                //p.Add("@paramClassID", "");
                p.Add("@paramID_Course", ID_Course);
                p.Add("@paramID_Instructor", ID_Instructor);
                p.Add("@paramClassCapacity", ClassCapacity);
                p.Add("@paramClassFee", ClassFee);
                p.Add("@paramLearnDateStart", LearnDateStart);
                p.Add("@paramLearnTimeStart", LearnTimeStart);
                p.Add("@paramLearnDateEnd", LearnDateEnd);
                p.Add("@paramLearnTimeEnd", LearnTimeEnd);
                p.Add("@paramRegisterDateStart", RegisterDateStart);
                p.Add("@paramRegisterDateEnd", RegisterDateEnd);
                p.Add("@paramID_PlantVenue", ID_PlantVenue);
                p.Add("@paramID_VenueRoom", ID_VenueRoom);
                p.Add("@paramPlaceAndLocation", PlaceAndLocation);
                p.Add("@paramClassStatus", ClassStatus);
                p.Add("@paramIsAttend", IsAttend);
                p.Add("@paramAttendNum", AttendNum);
                p.Add("@paramIsTest", IsTest);
                p.Add("@paramTestFullScore", TestFullScore);
                p.Add("@paramTestPercentage", TestPercentage);
                p.Add("@paramIsSkill", IsSkill);
                p.Add("@paramSkillFullScore", SkillFullScore);
                p.Add("@paramSkillPercentage", SkillPercentage);
                p.Add("@paramIsCoaching", IsCoaching);
                p.Add("@paramIsCertificate", IsCertificate);
                p.Add("@paramIsAttachCert", IsAttachCert);
                p.Add("@paramCertificationRemark", CertificationRemark);
                p.Add("@paramReminderDurationDay", ReminderDurationDay);
                p.Add("@paramUpdateBy", CurrentUserId); //// JwtManager.Instance.GetUserId(HttpContext.Request) //Example
                p.Add("@paramIsActive", IsActive);

                ViewModels.LDMS_T_Class ret = conn.Query<ViewModels.LDMS_T_Class>(_schema + ".[sp_T_Class_Update]", p, commandType: CommandType.StoredProcedure).FirstOrDefault();

                return ret;
            }
        }

        public List<ViewModels.LDMS_T_ClassReg> GetClass(string ID)
        {
            using (IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@paramCourseId ", ID);


                List<ViewModels.LDMS_T_ClassReg> ret = conn.Query<ViewModels.LDMS_T_ClassReg>(_schema + ".[sp_T_Class_Select]", p, commandType: CommandType.StoredProcedure).ToList();

                return ret;
            }

        }

        public ViewModels.LDMS_T_Class GetClassByID(string ID)
        {
            using (IDbConnection conn = Connection)
            {
                try
                {
                    var p = new DynamicParameters();
                    p.Add("@paramIDClass", ID);

                    ViewModels.LDMS_T_Class item = conn.Query<ViewModels.LDMS_T_Class>("[dbo].[sp_T_Class_Select_ByID]", p, commandType: CommandType.StoredProcedure).FirstOrDefault();

                    return item;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }


        public ViewModels.LDMS_T_ClassCapacity GetClassRemain(string ID_Course, string ID_Plant,
                                                              string ID_Center, string ID_Division,
                                                              string ID_Department, string ID_Section)
        {
            using (IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@paramCourseId", ID_Course);
                p.Add("@paramPlantId", ID_Plant);
                p.Add("@paramCenterId", ID_Center);
                p.Add("@paramDivisionId", ID_Division);
                p.Add("@paramDepartmentId", ID_Department);
                p.Add("@paramSectionId", ID_Section);

                ViewModels.LDMS_T_ClassCapacity ret = conn.Query<ViewModels.LDMS_T_ClassCapacity>(_schema + ".[sp_T_CourseTargetRemain]", p, commandType: CommandType.StoredProcedure).FirstOrDefault();

                return ret;
            }
        }

        public int DeleteClass(string ID_Class)
        {
            using (IDbConnection conn = Connection)
            {
                try
                {
                    var p = new DynamicParameters();
                    p.Add("@Class_ID", ID_Class);
                    p.Add("@UpdateBy", CurrentUserId);

                    int ret = conn.Query<int>(_schema + ".[sp_T_Class_Delete]", p, commandType: System.Data.CommandType.StoredProcedure).Single();

                    return ret;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }


        public async Task<ServiceResult> GetPlanAndProgress(string employeeId, int ficialYear, int[] quater)
        {
            var startDate = new DateTime(ficialYear, 4, 1);
            var endDate = new DateTime(ficialYear + 1, 3, 31);
            if (quater != null && quater.Length > 0)
            {

            }

            using (IDbConnection conn = Connection)
            {
                try
                {
                    var p = new DynamicParameters();
                    p.Add("@employeeId", employeeId);
                    p.Add("@startDate", startDate);
                    p.Add("@endDate", endDate);
                    var items = conn.Query<PlanAndProgressModel>("[dbo].[usp_GetPlanAndProgress_By_Employee]", p, commandType: CommandType.StoredProcedure);

                    return new ServiceResult(items);
                }
                catch (Exception e)
                {
                    return new ServiceResult(e);
                }
            }
        }
    }
}
