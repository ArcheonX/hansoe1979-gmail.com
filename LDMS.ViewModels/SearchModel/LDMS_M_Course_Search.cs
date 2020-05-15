using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class LDMS_M_Course_Search : Paging_Search
    {
        public string CourseID { get; set; }
        public string CourseName { get; set; }
        public string CourseStatus { get; set; }
        public string LearnMethod { get; set; }
    }
}
