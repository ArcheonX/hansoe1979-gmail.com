﻿using System;

namespace LDMS.ViewModels
{
    public class LDMS_T_CoachingReviewHead
    {
        public int ID { get; set; }
        public int ID_Coaching { get; set; }
        public string EmployeeReport { get; set; }
        public string AttachFilePath { get; set; }
        public string AttachFileName { get; set; }
        public DateTime PostDate { get; set; }
        public string PostBy_EmployeeID { get; set; }
    }
}
