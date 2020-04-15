using System;

namespace LDMS.ViewModels
{
    public class LDMS_M_Division : BaseViewModel
    {
        public int ID { get; set; }
        public string DivisionID { get; set; }
        public int ID_Center { get; set; }
        public string DivisionName_EN { get; set; }
        public string DivisionName_TH { get; set; }
        public string Description { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public string UpdateBY { get; set; }
        public DateTime UpdateDate { get; set; }
        public byte IsActive { get; set; }
    }
}
