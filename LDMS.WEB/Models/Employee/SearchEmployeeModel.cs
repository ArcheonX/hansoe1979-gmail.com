using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LDMS.WEB.Models
{
    public class SearchEmployeeModel
    {
        public string EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public string Departments { get; set; }
        public string Sections { get; set; }
        public string JobGrades { get; set; }
        public string JobTitles { get; set; }
        public string Levels { get; set; }
    }
}
