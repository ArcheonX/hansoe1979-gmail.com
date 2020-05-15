﻿using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class LDMS_T_Coaching_Result
    {
        public int rownumber { get; set; }
        public int ID { get; set; }
        public string SubPlatformName_EN { get; set; }
        public int ID_Class { get; set; }
        public int ID_Course { get; set; }
        public string CourseName { get; set; }
        public string EmployeeID { get; set; }
        public string EmployeeName { get; set; }
        public string CoachingStatus { get; set; }
        public string Topic { get; set; }
        public DateTime AssignDate { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime UpdateDate { get; set; }
    }
}
