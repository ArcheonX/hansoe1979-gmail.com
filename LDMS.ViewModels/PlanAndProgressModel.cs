using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class PlanAndProgressModel
    {
        public int ID_Platform { get; set; }
        public int ID_Course { get; set; }
        public string PlatformID { get; set; }
        public string PlatformName_EN { get; set; }
        public string PlatformName_TH { get; set; }

        public string SubPlatformName_EN { get; set; }
        public string SubPlatformName_TH { get; set; }

        public string CourseID { get; set; }
        public string CourseName { get; set; }

        public string Course_LearnMethodName_EN { get; set; }
        public string Course_LearnMethodName_TH { get; set; }

        public DateTime? TargetDate { get; set; }
        public int RemainDay { get; set; }
        public string CourseStatus { get; set; }
    }
}
