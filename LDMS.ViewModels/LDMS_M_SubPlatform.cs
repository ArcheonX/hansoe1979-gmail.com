using System;
using System.Collections.Generic;

namespace LDMS.ViewModels
{
    public class LDMS_M_SubPlatform
    {
        public int rownumber { get; set; }
        public int ID { get; set; }
        public int ID_Platform { get; set; }
        public string SubPlatformName_EN { get; set; }
        public string SubPlatformName_TH { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime UpdateDate { get; set; }
        public byte IsActive { get; set; }

        public string SubPlatformStatus { get; set; }

        public string PlatformID { get; set; }
        public string PlatfromName { get; set; }

        public List<LDMS_M_SubPlatformCourse> ListCourse { get; set; }
    }
}
