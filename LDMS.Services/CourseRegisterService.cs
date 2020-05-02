using LDMS.Core;
using LDMS.ViewModels;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Dapper;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Reflection;
using Microsoft.AspNetCore.Http;
using LDMS.Daos;

namespace LDMS.Services
{
    public class CourseRegisterService : ILDMSService
    {
        private readonly AppSettings _appSettings;
        public CourseRegisterService(IOptions<AppSettings> appSettings,
            ILDMSConnection iLDMSConnection, IHttpContextAccessor httpContextAccessor) : base(iLDMSConnection, httpContextAccessor)
        {
            _appSettings = appSettings.Value;
        }

        public List<dynamic> GetInfo(string classID)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@ID", classID);

                List<dynamic> ret = conn.Query<dynamic>("[dbo].[sp_T_Class_SelectInfo]", p, commandType: System.Data.CommandType.StoredProcedure).ToList();

                return ret;
            }
        }

        public List<dynamic> Get(string courseID, string classID, string empID, string empName, string departmentName)
        {

            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                if (courseID.Trim().Length > 0) p.Add("@ID_Course", courseID);
                if (classID.Trim().Length > 0) p.Add("@ID_Class", classID);
                if (empID != null && empID.Trim().Length > 0) p.Add("@EmployeeID", empID);
                if (empName != null && empName.Trim().Length > 0) p.Add("@EmployeeName", empName);
                if (departmentName != null && departmentName.Trim().Length > 0) p.Add("@DepartmentName", departmentName);

                List<dynamic> ret = conn.Query<dynamic>("[dbo].[sp_T_ClassRegisteration_Select]", p, commandType: System.Data.CommandType.StoredProcedure).ToList();

                return ret;
            }
        }

        public void UpdateStatus(string idClass, string idCourse, string employeeID, string registerStatus, string updateBy)
        {
            List<LDMS_M_CodeLookUp> result = new List<LDMS_M_CodeLookUp>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@ID_Class", idClass);
                p.Add("@ID_Course", idCourse);
                p.Add("@EmployeeID", employeeID);
                p.Add("@RegisterStatus", registerStatus);
                p.Add("@UpdateBy", updateBy);

                conn.Execute("[dbo].[sp_T_ClassRegistration_UpdateStatus]", p, commandType: System.Data.CommandType.StoredProcedure);
            }
        }

        public void UpdateClassResult(string idClass, string idCourse, string employeeID, string classState, string learningResult,
            string attendCountNum, string isScanRFID, string preTestScore, string postTestScore, string skillScore, string coachingStaus,
            string certificateStatus, string createBy)
        {
            List<LDMS_M_CodeLookUp> result = new List<LDMS_M_CodeLookUp>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@ID_Class", idClass);
                p.Add("@ID_Course", idCourse);
                p.Add("@EmployeeID", employeeID);
                if (classState != null) p.Add("@ClassState", classState);
                if (learningResult != null) p.Add("@LearningResult", learningResult);
                if (attendCountNum != null) p.Add("@AttendCountNum", attendCountNum);
                if (attendCountNum != null) p.Add("@AttendCountNum", attendCountNum);

                if (isScanRFID != null) p.Add("@IsScanRFID", isScanRFID);
                if (preTestScore != null) p.Add("@PreTestScore", preTestScore);
                if (postTestScore != null) p.Add("@PostTestScore", postTestScore);
                if (skillScore != null) p.Add("@SkillScore", skillScore);
                if (coachingStaus != null) p.Add("@CoachingStatus", coachingStaus);
                if (certificateStatus != null) p.Add("@CertificateStatus", certificateStatus);
                p.Add("@CreateBy", createBy);

                conn.Execute("[dbo].[sp_T_ClassAttendAndResult_Insert]", p, commandType: System.Data.CommandType.StoredProcedure);
            }
        }


        public void AddCertificate(string idClass, string idCourse, string employeeID, string certificatePath, string description, string expireDate, string createBy)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@ID_Class", idClass);
                p.Add("@ID_Course", idCourse);
                p.Add("@EmployeeID", employeeID);
                p.Add("@Certificate_Path", certificatePath);
                p.Add("@Description", description);
                if(expireDate.Trim().Length > 0) p.Add("@ExpireDate", expireDate);
                p.Add("@CreateBy", createBy);

                conn.Execute("[dbo].[sp_T_ClassCertificate_InsertU]", p, commandType: System.Data.CommandType.StoredProcedure);
            }
        }

        public void AddCoaching(string idClass, string idCourse, string employeeID, string coachingStatus, string createBy)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@ID_Class", idClass);
                p.Add("@ID_Course", idCourse);
                p.Add("@EmployeeID", employeeID);
                p.Add("@CoachingStatus", coachingStatus);
                p.Add("@CreateBy", createBy);

                conn.Execute("[dbo].[sp_T_Coaching_Insert]", p, commandType: System.Data.CommandType.StoredProcedure);
            }
        }


        public void UpdateClass(string classID, string classStatus, string updateBy)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@ID", classID);
                p.Add("@ClassStatus", classStatus);
                p.Add("@UpdateBy", updateBy);

                conn.Execute("[dbo].[sp_T_Class_UpdateStatus]", p, commandType: System.Data.CommandType.StoredProcedure);
            }
        }


        public List<dynamic> GetEmployeeForClose(string courseID, string classID)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                if (courseID.Trim().Length > 0) p.Add("@ID_Course", courseID);
                if (classID.Trim().Length > 0) p.Add("@ID_Class", classID);

                List<dynamic> ret = conn.Query<dynamic>("[dbo].[sp_T_ClassRegisteration_SelectEmployeeForClose]", p, commandType: System.Data.CommandType.StoredProcedure).ToList();

                return ret;
            }
        }


    }
}
