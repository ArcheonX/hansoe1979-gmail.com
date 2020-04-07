using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace LDMS.WEB.Models.Employee
{
    public class EmployeeModel
    {
        [Required(ErrorMessage = "Employee Id  is required")]
        public string EmployeeId { get; set; }
        [Required(ErrorMessage = "Employee Name  is required")]
        public string EmployeeName { get; set; }
        [Required(ErrorMessage = "Employee Surname  is required")]
        public string EmployeeSurName { get; set; }
        [Required(ErrorMessage = "Employee Grade  is required")]
        public int JobGradeId { get; set; }
        [Required(ErrorMessage = "Employee Job Title is required")]
        public int JobTitleId { get; set; }
        [Required(ErrorMessage = "Employee Gender is required")]
        public string Gender { get; set; }
        [Required(ErrorMessage = "Employee Center is required")]
        public int CenterId { get; set; }
        public string Nationality { get; set; }
        [Required(ErrorMessage = "Employee Division is required")]
        public int DivisionId { get; set; }
        public string Email { get; set; }
        [Required(ErrorMessage = "Employee Department is required")]
        public int DepartmentId { get; set; }
        public string Phone { get; set; }
        [Required(ErrorMessage = "Employee Section is required")]
        public int SectionId { get; set; }
        public string Password { get; set; } 
        public string Remark { get; set; } 
        [Required(ErrorMessage = "Employee Role is required")]
        public int RoleId { get; set; }
    }
}
