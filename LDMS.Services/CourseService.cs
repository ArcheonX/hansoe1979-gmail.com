using Dapper;
using Dapper.Mapper;
using LDMS.Core;
using LDMS.Identity;
using LDMS.ViewModels;
using LDMS.ViewModels.Menu;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using System.Text.Json;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Data;

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
                    var items = Connection.Query<LDMS_M_CourseType>
                    (_schema + ".[sp_M_CourseType_ALL]");

                    return (List<LDMS_M_CourseType>)items;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }

        public async Task<List<ViewModels.LDMS_M_CourseLearnMethod>> GetAllCourseLearnMethod()
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                try
                {
                    var items = Connection.Query<LDMS_M_CourseLearnMethod>
                    (_schema + ".[sp_M_CourseLearnMethod_ALL]");

                    return (List<LDMS_M_CourseLearnMethod>)items;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }

        public Paging_Result GetCourse(LDMS_M_Course_Search criteria)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                Paging_Result ret = new Paging_Result();
                List<LDMS_M_Course> CourseList = new List<LDMS_M_Course>();
                try
                {

                    var p = new DynamicParameters();
                    if (criteria.CourseID != null) p.Add("@Course_ID", criteria.CourseID);
                    if (criteria.CourseName != null) p.Add("@Course_Name", criteria.CourseName);
                    if (criteria.CourseStatus != null) p.Add("@IsActive", criteria.CourseStatus);
                    if (criteria.LearnMetod != null) p.Add("@Learn_Method", criteria.LearnMetod);

                    p.Add("@PageNum", criteria.PageNum);
                    p.Add("@PageSize", criteria.PageSize);
                    p.Add("@SortField", criteria.SortField);
                    p.Add("@SortOrder", criteria.SortOrder);


                    var grid = conn.QueryMultiple("[dbo].[sp_M_Course_SelectPaging]", p, commandType: System.Data.CommandType.StoredProcedure);

                    CourseList = grid.Read<LDMS_M_Course>().ToList();
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

        public LDMS_M_Course GetCourseByID(string ID)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                try
                {
                    var p = new DynamicParameters();
                    p.Add("@paramIDCourse", ID);

                    LDMS_M_Course item = conn.Query<LDMS_M_Course>("[dbo].[sp_M_Course_Select_ByID]", p, commandType: System.Data.CommandType.StoredProcedure).Single();

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

        public LDMS_M_Course CreateCourse(  string CourseID, string CourseName, string ID_LearnMethod,
                                    string ID_CourseType, string Objective, string Description, string OutLine,
                                    string IsRefreshment, string RefreshmentPeriod, string RefreshmentUnit,
                                    string TargetEmployeeID, string ID_PlantTarget, string ID_CenterTarget,
                                    string ID_DivisionTarget, string ID_DepartmentTarget, string ID_SectionTarget,
                                    string JobGradeTargetID, string JobTitleTargetID, string IsActive )
        {

            using (System.Data.IDbConnection conn = Connection)
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
                p.Add("@paramID_DepartmentCreate", 1); // JwtManager.Instance.GetDepartmentId(HttpContext.Request) //Example
                p.Add("@paramCreateBy", JwtManager.Instance.GetUserId(HttpContext.Request)); //// JwtManager.Instance.GetUserId(HttpContext.Request) //Example
                p.Add("@@paramIsActive", IsActive);

                LDMS_M_Course ret = conn.Query<LDMS_M_Course>(_schema + ".[sp_M_Course_Insert]", p, commandType: System.Data.CommandType.StoredProcedure).Single();

                return ret;
            }
        }

        public bool UpdateCourse(string ID_Course, string CourseID, string CourseName, string ID_LearnMethod,
                                            string ID_CourseType, string Objective, string Description, string OutLine,
                                            string IsRefreshment, string RefreshmentPeriod, string RefreshmentUnit,
                                            string TargetEmployeeID, string ID_PlantTarget, string ID_CenterTarget,
                                            string ID_DivisionTarget, string ID_DepartmentTarget, string ID_SectionTarget,
                                            string JobGradeTargetID, string JobTitleTargetID, string isActive)
        {
            using (System.Data.IDbConnection conn = Connection)
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
                p.Add("@paramID_DepartmentCreate", 1 ); // JwtManager.Instance.GetDepartmentId(HttpContext.Request) //Example
                p.Add("@paramUpdateBy", JwtManager.Instance.GetUserId(HttpContext.Request)); //// JwtManager.Instance.GetUserId(HttpContext.Request) //Example
                p.Add("@paramIsActive", isActive);

                int ret = conn.Query<int>(_schema + ".[sp_M_Course_Update]", p, commandType: System.Data.CommandType.StoredProcedure).Single();

                return true;
            }
        }


        public List<LDMS_M_Employee> GetEmployee(LDMS_M_Employee_Search criteria)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                Paging_Result ret = new Paging_Result();
                List<LDMS_M_Employee> EmployeeList = new List<LDMS_M_Employee>();
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


                    var grid = conn.QueryMultiple("[dbo].[sp_M_Employee_SelectPaging]", p, commandType: System.Data.CommandType.StoredProcedure);

                    EmployeeList = grid.Read<LDMS_M_Employee>().ToList();
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

        public List<LDMS_M_Instructor> GetInstructor(LDMS_M_Instructor_Search criteria)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                Paging_Result ret = new Paging_Result();
                List<LDMS_M_Instructor> InstructorList = new List<LDMS_M_Instructor>();
                try
                {

                    var p = new DynamicParameters();
                    if (criteria.Instructor_ID != null) p.Add("@Instructor_ID", criteria.Instructor_ID);
                    if (criteria.Instructor_Name != null) p.Add("@@Instructor_Name", criteria.Instructor_Name);
                    if (criteria.Type != null) p.Add("@Type", criteria.Type);
                    if (criteria.Organization != null) p.Add("@Organization", criteria.Organization);
                    if (criteria.Course_Experience != null) p.Add("@Course_Experience", criteria.Course_Experience);

                    p.Add("@IsActive", 1);

                    var grid = conn.QueryMultiple("[dbo].[sp_M_Instructor_SelectPaging]", p, commandType: System.Data.CommandType.StoredProcedure);
                    InstructorList = grid.Read<LDMS_M_Instructor>().ToList();

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
            using (System.Data.IDbConnection conn = Connection)
            {
                try
                {
                    var items = Connection.Query<LDMS_M_VenueRoom>
                    (_schema + ".[sp_M_VanueRoom_SelectAll]");

                    return (List<LDMS_M_VenueRoom>)items;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }

        public LDMS_T_Class CreateClass(string ID_Course, string ID_Instructor, string ClassCapacity, string ClassFee,
                                            string LearnDateStart, string LearnTimeStart, string LearnDateEnd, string LearnTimeEnd,
                                            string RegisterDateStart, string RegisterDateEnd, string ID_PlantVenue,
                                            string ID_VenueRoom, string PlaceAndLocation, string ClassStatus,
                                            string IsAttend, string AttendNum, string IsTest,
                                            string TestFullScore, string TestPercentage, string IsSkill, string SkillFullScore,
                                            string SkillPercentage, string IsCoaching, string IsCertificate, string IsAttachCert,
                                            string CertificationRemark, string ReminderDurationDay, string IsActive )
        {

            using (System.Data.IDbConnection conn = Connection)
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
                p.Add("@paramCreateBy", JwtManager.Instance.GetUserId(HttpContext.Request)); //// JwtManager.Instance.GetUserId(HttpContext.Request) //Example
                p.Add("@@paramIsActive", IsActive);

                LDMS_T_Class ret = conn.Query<LDMS_T_Class>(_schema + ".[sp_T_Class_Insert]", p, commandType: System.Data.CommandType.StoredProcedure).FirstOrDefault();

                return ret;
            }
        }

        public LDMS_T_Class UpdateClass( string ID, string ID_Course, string ID_Instructor, string ClassCapacity, string ClassFee,
                                            string LearnDateStart, string LearnTimeStart, string LearnDateEnd, string LearnTimeEnd,
                                            string RegisterDateStart, string RegisterDateEnd, string ID_PlantVenue,
                                            string ID_VenueRoom, string PlaceAndLocation, string ClassStatus,
                                            string IsAttend, string AttendNum, string IsTest,
                                            string TestFullScore, string TestPercentage, string IsSkill, string SkillFullScore,
                                            string SkillPercentage, string IsCoaching, string IsCertificate, string IsAttachCert,
                                            string CertificationRemark, string ReminderDurationDay, string IsActive)
        {

            using (System.Data.IDbConnection conn = Connection)
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
                p.Add("@paramUpdateBy", JwtManager.Instance.GetUserId(HttpContext.Request)); //// JwtManager.Instance.GetUserId(HttpContext.Request) //Example
                p.Add("@paramIsActive", IsActive);

                LDMS_T_Class ret = conn.Query<LDMS_T_Class>(_schema + ".[sp_T_Class_Update]", p, commandType: System.Data.CommandType.StoredProcedure).Single();

                return ret;
            }
        }

        public List<LDMS_T_ClassReg> GetClass(string ID)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@paramCourseId ", ID);


                List<LDMS_T_ClassReg> ret = conn.Query<LDMS_T_ClassReg>(_schema + ".[sp_T_Class_Select]", p, commandType: System.Data.CommandType.StoredProcedure).ToList();

                return ret;
            }

        }

        public LDMS_T_Class GetClassByID(string ID)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                try
                {
                    var p = new DynamicParameters();
                    p.Add("@paramIDClass", ID);

                    LDMS_T_Class item = conn.Query<LDMS_T_Class>("[dbo].[sp_T_Class_Select_ByID]", p, commandType: System.Data.CommandType.StoredProcedure).FirstOrDefault();

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
