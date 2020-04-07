using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace LDMS.WEB.Models.Employee
{
    public class EmployeeModel
    {
        public string EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public string EmployeeSurName { get; set; }
        public int JobGradeId { get; set; }
        public int JobTitleId { get; set; }
        public string Gender { get; set; }
        public int CenterId { get; set; }
        public string Nationality { get; set; }
        public int DivisionId { get; set; }
        public string Email { get; set; }
        public int DepartmentId { get; set; }
        public string Phone { get; set; }
        public int SectionId { get; set; }
        public string Password { get; set; } 
        public string Remark { get; set; } 
        public int RoleId { get; set; }
        public bool IsInstructer { get; set; }
        public bool IsSectionHead { get; set; }
    }
}
