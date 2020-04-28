using System;

namespace LDMS.ViewModels
{
    public class LDMS_M_Center : BaseViewModel
    {
        public int ID_Center { get; set; }
        public string CenterID { get; set; }
        public int ID_Plant { get; set; }
        public string CenterName_EN { get; set; }
        public string CenterName_TH { get; set; }
        public string CenterDescription { get; set; }
        //public string CreateBy { get; set; }
        //public DateTime CreateDate { get; set; }
        //public string UpdateBy { get; set; }
        //public DateTime UpdateDate { get; set; }
        //public byte IsActive { get; set; }
    }
}
