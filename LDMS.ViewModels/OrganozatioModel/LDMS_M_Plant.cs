using System;

namespace LDMS.ViewModels
{
    public class LDMS_M_Plant : BaseViewModel
    {
        public int ID_Plant { get; set; }
        public string PlantID { get; set; }
        public string PlantName_EN { get; set; }
        public string PlantName_TH { get; set; }
        public string PlantDescription { get; set; }
        //public string CreateBy { get; set; }
        //public DateTime CreateDate { get; set; }
        //public string UpdateBy { get; set; }
        //public DateTime UpdateDate { get; set; }
        //public byte IsActive { get; set; }
    }
}
