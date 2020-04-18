using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class LDMS_M_Employee_Search :  Paging_Search
    {
        public string EmployeeID { get; set; }
        public string EmployeeName { get; set; }
        public string DepartmentID { get; set; }
        public string SectionID { get; set; }
        public string JobGradeID { get; set; }
        public string JobTitleID { get; set; }
    }
}
