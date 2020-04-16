using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LDMS.WEB.Models.Employee
{
    public class SectionEmployeeSaveModel
    {
        public string EmployeeId { get; set; }
        public int? SectionId { get; set; }
        public bool IsSectionHead { get; set; }
    }
}
