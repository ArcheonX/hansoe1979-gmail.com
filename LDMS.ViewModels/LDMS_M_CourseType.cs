using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class LDMS_M_CourseType
    {
        public int ID { get; set; }
        public string CourseTypeName_EN { get; set; }
        public string CourseTypeName_TH { get; set; }
        public string ID_PlatformType { get; set; }
        public string PrefixFormat { get; set; }
        public string PrefixCode { get; set; }
        public string SubPrefixCode { get; set; }
        public string RunningLength { get; set; }
        public string Description { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime UpdateDate { get; set; }
        public byte IsActive { get; set; }
    }
}
