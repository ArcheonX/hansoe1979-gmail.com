using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class LDMS_M_Instructor_Search  : Paging_Search
    {
        public string Instructor_ID { get; set; }
        public string IsActive { get; set; }
        public string Instructor_Name { get; set; }
        public string Organization { get; set; }
        public string Type { get; set; }
        public string Course_Experience { get; set; }

        // Course
        public string CourseName { get; set; }

       
        
   }
    
}
