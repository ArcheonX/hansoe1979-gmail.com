using System;

namespace LDMS.ViewModels
{
    public class LDMS_M_Platform
    {
        public int ID { get; set; }
        public string PlatformID { get; set; }
        public string PlatformName_EN { get; set; }
        public string PlatformName_TH { get; set; }
        public int ID_PlatformType { get; set; }
        public string PlatformDescription { get; set; }
        public int ID_Department_Create { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime UpdateDate { get; set; }
        public byte IsActive { get; set; }
    }
}
