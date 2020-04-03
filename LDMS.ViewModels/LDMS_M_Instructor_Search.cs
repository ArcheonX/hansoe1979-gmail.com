using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class LDMS_M_Instructor_Search
    {
        public int ID { get; set; }
        public string Instructor_ID { get; set; }
        public string Instructor_Name { get; set; }
        public string Type { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public int Organization { get; set; }
        public string Course_Experience { get; set; }
        public bool IsActive { get; set; }

        // Course
        public string Course { get; set; }
   }
    
}
