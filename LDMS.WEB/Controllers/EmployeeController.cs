using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LDMS.Core;
using LDMS.Services;
using LDMS.ViewModels;
using LDMS.WEB.Filters;
using LDMS.WEB.Models;
using LDMS.WEB.Models.Employee;
using Microsoft.AspNetCore.Mvc;

namespace LDMS.WEB.Controllers
{
    public class EmployeeController : BaseController
    {
        private readonly UserService UserService;

        public EmployeeController( UserService userService)
        {
            UserService = userService;
        }

        private EmployeeModel CovertToView(LDMS_M_User user)
        {
            return new EmployeeModel()
            {
                RowIndex = user.RowIndex,
                CenterId = user.ID_Center.GetValueOrDefault(),
                DivisionId = user.ID_Division.GetValueOrDefault(),
                DepartmentId = user.LDMS_M_Department != null ? user.LDMS_M_Department.ID_Department : 0,
                SectionId = user.ID_Section.GetValueOrDefault(),
                JobGradeId = user.ID_JobGrade.GetValueOrDefault(),
                JobTitleId = user.ID_JobTitle.GetValueOrDefault(),

                DepartmentName = user.LDMS_M_Department != null ? user.LDMS_M_Department.DepartmentID : "",
                SectionName = user.LDMS_M_Section != null ? user.LDMS_M_Section.SectionID : "",
                JobGrade = user.LDMS_M_JobGrade != null ? user.LDMS_M_JobGrade.JobGradeID : "",
                JobTitle = user.LDMS_M_JobTitle != null ? user.LDMS_M_JobTitle.JobTitleID : "",

                Email = user.Email,
                EmployeeId = user.EmployeeID,
                EmployeeName = user.Name,
                EmployeeSurName = user.Surname,
                Gender = user.Gender,               
                Nationality = user.Nationality,
                Password = user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.Password : "",
                PhoneNumber = user.PhoneNumber,
                Remark = user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.Remark : "",
                RoleId = user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.ID_Role : 0,               
                IsInstructer = user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.IsInstructor == 1 : false,
                IsSectionHead = user.LDMS_M_UserRole != null ? user.LDMS_M_UserRole.IsSectionHead == 1 : false,
                IsAD = user.IsAD == 1              
            };
        }


        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR)]
        [HttpGet]
        [Route("Employee/SearchEmployee")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> Employees(SearchEmployeeModel model)
        {
            int[] departments = new int[0];
            if (model.Departments != null && model.Departments.Any())
            {
                departments = model.Departments.Split(",").Select(int.Parse).ToArray();
            }
            var users = (await UserService.GetAll(model.EmployeeId, model.EmployeeName, departments.ToList())).Data as List<LDMS_M_User>;
            var userView = users.Select(user => CovertToView(user)).ToList();
            return Response(new ServiceResult(userView));
        }


        [AuthorizeRole(UserRole.All)]
        [HttpGet]
        [Route("Employee/ReadEmployee")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> ReadEmployee(string employeeId)
        {
            var user = (await UserService.GetUserByEmployeeId(employeeId)).Data as LDMS_M_User;
            if (user != null)
            {
                var userView = CovertToView(user);
                return Response(new ServiceResult(userView));
            }
            else
            {
                return Response(new ServiceResult(new EmployeeModel()));
            }
        }


        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR, UserRole.AdminDepartment, UserRole.UserAdmin)]
        [HttpGet]
        [Route("Employee/EmployeeByDepartment")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> ReadEmployeeByDepartment(int departmentId)
        {
            return Response(new ServiceResult((await UserService.GetAllEmployeeByDepartmentId(departmentId))));
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR, UserRole.AdminDepartment, UserRole.UserAdmin)]
        [HttpGet]
        [Route("Employee/EmployeeBySection")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> ReadEmployeeBySection(int sectionId)
        {
            return Response(new ServiceResult((await UserService.GetAllEmployeeBySectionId(sectionId))));
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR, UserRole.AdminDepartment, UserRole.UserAdmin)]
        [HttpGet]
        [Route("Employee/SearchEmployeeName")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<ActionResult> SearchEmployeeName(string EmployeeName)
        {
            var users = await UserService.GetAll(null, EmployeeName, null);
            return Json(users);
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR)]
        [HttpPost]
        [Route("Employee/CreateEmployee")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> SaveEmployee(EmployeeModel model)
        {
            try
            {
                LDMS_M_User user = new LDMS_M_User()
                {
                    Email = model.Email,
                    Name = model.EmployeeName,
                    Nationality = model.Nationality,
                    PhoneNumber = model.PhoneNumber,
                    Surname = model.EmployeeSurName,
                    IsAD = 1,
                    EmployeeID = model.EmployeeId,
                    Gender = model.Gender,
                    ID_Center = model.CenterId,
                    ID_Department = model.DepartmentId,
                    ID_Division = model.DivisionId,
                    ID_JobGrade = model.JobGradeId,
                    ID_JobTitle = model.JobTitleId,
                    IsActive = 1
                };
                LDMS_M_UserRole userRole = new LDMS_M_UserRole()
                {
                    EmployeeID = model.EmployeeId,
                    IsActive = 1,
                    ID_Role = model.RoleId,
                    ID_Section = model.SectionId,
                    IsInstructor = model.IsInstructer ? 1 : 0,
                    IsSectionHead = model.IsSectionHead ? 1 : 0,
                    Password = model.Password,
                    Remark = model.Remark
                };
                return Response(await UserService.CreateUser(user, userRole));
            }
            catch (Exception exp)
            {
                return Response(new ServiceResult(exp));
            }
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR)]
        [HttpPost]
        [Route("Employee/UpdateEmployee")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> UpdateEmployee(Models.Employee.EmployeeModel model)
        {
            try
            {
                LDMS_M_User user = new LDMS_M_User()
                {
                    Email = model.Email,
                    Name = model.EmployeeName,
                    Nationality = model.Nationality,
                    PhoneNumber = model.PhoneNumber,
                    Surname = model.EmployeeSurName,
                    IsAD = 1,
                    EmployeeID = model.EmployeeId,
                    Gender = model.Gender,
                    ID_Center = model.CenterId,
                    ID_Department = model.DepartmentId,
                    ID_Division = model.DivisionId,
                    ID_JobGrade = model.JobGradeId,
                    ID_JobTitle = model.JobTitleId,
                    IsActive = 1
                };
                LDMS_M_UserRole userRole = new LDMS_M_UserRole()
                {
                    EmployeeID = model.EmployeeId,
                    IsActive = 1,
                    ID_Role = model.RoleId,
                    ID_Section = model.SectionId,
                    IsInstructor = model.IsInstructer ? 1 : 0,
                    IsSectionHead = model.IsSectionHead ? 1 : 0,
                    Password = model.Password,
                    Remark = model.Remark
                };
                return Response(await UserService.UpdateUser(user, userRole));
            }
            catch (Exception exp)
            {
                return Response(new ServiceResult(exp));
            }
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR)]
        [HttpDelete]
        [Route("Employee/RemoveEmployee")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> RemoveEmployee(string employeeId)
        {
            try
            {
                return Response(await UserService.DeleteUser(employeeId));
            }
            catch (Exception exp)
            {
                return Response(new ServiceResult(exp));
            }
        }

        [AuthorizeRole(UserRole.SuperAdmin, UserRole.AdminHR)]
        [HttpPost]
        [Route("Employee/ResetPassword")]
        [ResponseCache(Duration = 60, Location = ResponseCacheLocation.None)]
        public async Task<IActionResult> ResetPassword(string employeeId)
        {
            try
            {
                return Response(await UserService.ResetPassword(employeeId));
            }
            catch (Exception exp)
            {
                return Response(new ServiceResult(exp));
            }
        }
    }
}