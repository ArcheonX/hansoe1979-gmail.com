﻿using LDMS.Core;
using LDMS.ViewModels;
using Microsoft.Extensions.Options;
using System.Collections.Generic;
using Dapper;
using System.Linq;
using Microsoft.AspNetCore.Http;
using LDMS.Daos;
using System.Threading.Tasks;
using System;

namespace LDMS.Services
{
    public class InstructorService : ILDMSService
    {
        private readonly AppSettings _appSettings;
        public InstructorService(IOptions<AppSettings> appSettings,
            ILDMSConnection iLDMSConnection, IHttpContextAccessor httpContextAccessor) : base(iLDMSConnection, httpContextAccessor)
        {
            _appSettings = appSettings.Value;
        }

        public LDMS_M_Instructor GetInstructor(string id)
        {
            LDMS_M_Instructor result = new LDMS_M_Instructor();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@ID", id);

                result = conn.Query<LDMS_M_Instructor>("[dbo].[sp_M_Instructor_Select]", p, commandType: System.Data.CommandType.StoredProcedure).First();

                return result;
            }
        }

        public Paging_Result GetInstructors(LDMS_M_Instructor_Search criteria)
        {
            Paging_Result ret = new Paging_Result();
            List<LDMS_M_Instructor> InstructorList = new List<LDMS_M_Instructor>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                if(criteria.Instructor_ID != null) p.Add("@Instructor_ID", criteria.Instructor_ID);
                if (criteria.IsActive != null) p.Add("@IsActive", criteria.IsActive);
                if (criteria.Instructor_Name != null) p.Add("@Instructor_Name", criteria.Instructor_Name);
                if (criteria.Organization != null) p.Add("@Organization", criteria.Organization);
                if (criteria.Type != null) p.Add("@Type", criteria.Type);
                if (criteria.Course_Experience != null) p.Add("@Course_Experience", criteria.Course_Experience);
                if (criteria.CourseName != null) p.Add("@CourseName", criteria.CourseName);
                p.Add("@PageNum", criteria.PageNum);
                p.Add("@PageSize", criteria.PageSize);
                p.Add("@SortField", criteria.SortField);
                p.Add("@SortOrder", criteria.SortOrder);

                var grid = conn.QueryMultiple("[dbo].[sp_M_Instructor_SelectPaging]", p, commandType: System.Data.CommandType.StoredProcedure);

                InstructorList = grid.Read<LDMS_M_Instructor>().ToList();
                var totalRec = grid.Read().ToList();

                ret.data = InstructorList;
                ret.recordsTotal = totalRec[0].TotalRecords;
                ret.recordsFiltered = totalRec[0].TotalRecords;
                ret.draw = 0;

                return ret;
            }
        }


        public int GetInstructorByInstructorID(string instructorID)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@Instructor_ID", instructorID);

                int ret = conn.Query<int>("[dbo].[sp_M_Instructor_SelectByInstructorID]", p, commandType: System.Data.CommandType.StoredProcedure).Single();

                return ret;
            }
        }



        public int AddInstructors(LDMS_M_Instructor mod)
        {
            List<LDMS_M_CodeLookUp> result = new List<LDMS_M_CodeLookUp>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@Instructor_ID", mod.Instructor_ID);
                p.Add("@Instructor_Name", mod.Instructor_Name);
                if (mod.Email != null) p.Add("@ID_Employee", mod.ID_Employee);
                p.Add("@Type", mod.Type);
                p.Add("@Phone", mod.Phone);
                p.Add("@Email", mod.Email);
                p.Add("@Organization", mod.Organization);
                p.Add("@Address", mod.Address);
                if (mod.District_Id != null)
                    p.Add("@District_Id", mod.District_Id);
                if (mod.Aumphur_Id != null)
                    p.Add("@Aumphur_Id", mod.Aumphur_Id);
                if (mod.Provice_Id != null)
                    p.Add("@Provice_Id", mod.Provice_Id);
                p.Add("@Post_Code", mod.Post_Code);
                p.Add("@Path_Image", mod.Path_Image);
                p.Add("@Path_Certificate", mod.Path_Certificate);
                p.Add("@Education_Level", mod.Education_Level);
                p.Add("@Major", mod.Major);
                p.Add("@Course_Experience", mod.Course_Experience);
                p.Add("@Skill_Professional", mod.Skill_Professional);
                p.Add("@Customer_Reference", mod.Customer_Reference);
                p.Add("@Manufacturing_Area", mod.Manufacturing_Area);
                p.Add("@Create_By", mod.Create_By);
                p.Add("@IsActive", (mod.IsActive? 1: 0));

                int ret = conn.Query<int>("[dbo].[sp_M_Instructor_Insert]", p, commandType: System.Data.CommandType.StoredProcedure).Single();

                return ret;
            }
        }

        public void UpdateInstructors(LDMS_M_Instructor mod)
        {
            List<LDMS_M_CodeLookUp> result = new List<LDMS_M_CodeLookUp>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@ID", int.Parse(mod.ID));
                p.Add("@Instructor_ID", mod.Instructor_ID);
                p.Add("@Instructor_Name", mod.Instructor_Name);
                if (mod.ID_Employee != null) p.Add("@ID_Employee", mod.ID_Employee);
                p.Add("@Type", mod.Type);
                p.Add("@Phone", mod.Phone);
                p.Add("@Email", mod.Email);
                p.Add("@Organization", mod.Organization);
                p.Add("@Address", mod.Address);
                if (mod.District_Id != null)
                    p.Add("@District_Id", mod.District_Id);
                if (mod.Aumphur_Id != null)
                    p.Add("@Aumphur_Id", mod.Aumphur_Id);
                if (mod.Provice_Id != null)
                    p.Add("@Provice_Id", mod.Provice_Id);
                p.Add("@Post_Code", mod.Post_Code);
                p.Add("@Path_Image", mod.Path_Image);
                p.Add("@Path_Certificate", mod.Path_Certificate);
                p.Add("@Education_Level", mod.Education_Level);
                p.Add("@Major", mod.Major);
                p.Add("@Course_Experience", mod.Course_Experience);
                p.Add("@Skill_Professional", mod.Skill_Professional);
                p.Add("@Customer_Reference", mod.Customer_Reference);
                p.Add("@Manufacturing_Area", mod.Manufacturing_Area);
                p.Add("@Update_By", mod.Update_By);
                p.Add("@IsActive", (mod.IsActive ? 1 : 0));

                conn.Execute("[dbo].[sp_M_Instructor_Update]", p, commandType: System.Data.CommandType.StoredProcedure);
            }
        }

        public void UpdateInstructorStatus(string id, string updateBy)
        {
            List<LDMS_M_CodeLookUp> result = new List<LDMS_M_CodeLookUp>();
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@ID", id);
                p.Add("@Update_By", updateBy);

                conn.Execute("[dbo].[sp_M_Instructor_UpdateStatus]", p, commandType: System.Data.CommandType.StoredProcedure);
            }
        }

        public List<dynamic> GetCourseByInstructorID(string instructorID)
        {
            using (System.Data.IDbConnection conn = Connection)
            {
                var p = new DynamicParameters();
                p.Add("@ID_Instructor", instructorID);

                List<dynamic> ret = conn.Query<dynamic>("[dbo].[sp_M_Course_SelectByInstructor]", p, commandType: System.Data.CommandType.StoredProcedure).ToList();

                return ret;
            }
        }

        public async Task<ServiceResult> GetAll(
             string employeeId = null,
             string employeeName = null,
             List<int> departments = null,
             List<int> sectionIds = null,
             List<int> jobgrades = null,
             List<int> jobtitles = null)
        {
            try
            {
                var roles = await All<LDMS_M_Role>("Role");
                var jobGrades = await All<LDMS_M_JobGrade>("JobGrade");
                var jobTitles = await All<LDMS_M_JobTitle>("JobTitle");
                using (System.Data.IDbConnection conn = Connection)
                {
                    var items = Connection.Query<LDMS_M_User, LDMS_M_Plant, LDMS_M_Center, LDMS_M_Division, LDMS_M_Department, LDMS_M_Section, LDMS_M_User>
                    (_schema + ".[usp_User_READ_ALL] @paramEmployeeId,@paramEmployeeName,@paramdepartments,@paramsections,@paramjobgrades,@paramjobtitles",
                      map: (user, plant, center, division, depart, section) =>
                      {
                          if (plant != null)
                          {
                              user.LDMS_M_Plant = plant;
                              user.ID_Plant = plant.ID_Plant;
                          }
                          if (center != null)
                          {
                              user.LDMS_M_Center = center;
                              user.ID_Center = center.ID_Center;
                          }
                          if (division != null)
                          {
                              user.LDMS_M_Division = division;
                              user.ID_Division = division.ID_Division;
                          }
                          if (depart != null)
                          {
                              user.LDMS_M_Department = depart;
                              user.ID_Department = depart.ID_Department;
                          }
                          if (section != null)
                          {
                              user.LDMS_M_Section = section;
                              user.ID_Section = section.ID_Department;
                          }
                          return user;
                      },
                      splitOn: "ID_Plant,ID_Center,ID_Division,ID_Department,ID_Section",
                      param: new
                      {
                          @paramEmployeeId = employeeId,
                          @paramEmployeeName = employeeName,
                          @paramdepartments = departments != null ? string.Join(",", departments) : "",
                          @paramsections = sectionIds != null ? string.Join(",", sectionIds) : "",
                          @paramjobgrades = jobgrades != null ? string.Join(",", jobgrades) : "",
                          @paramjobtitles = jobtitles != null ? string.Join(",", jobtitles) : "",
                      });
                    var users = items.ToList();
                    users.ForEach(user =>
                    {
                        user.LDMS_M_Role = roles.FirstOrDefault(e => e.ID_Role == user.ID_Role);
                        user.LDMS_M_JobGrade = jobGrades.FirstOrDefault(e => e.ID_JobGrade == user.ID_JobGrade);
                        user.LDMS_M_JobTitle = jobTitles.FirstOrDefault(e => e.ID_JobTitle == user.ID_JobTitle);
                    });
                    return new ServiceResult(users);
                }
            }
            catch (Exception x)
            {
                //_logger.LogError(x.Message);
                return new ServiceResult(x);
            }
        }

    }
}
