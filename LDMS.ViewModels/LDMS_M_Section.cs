using System;

namespace LDMS.ViewModels
{
    public class LDMS_M_Section : BaseViewModel
    {
        public int ID_Section { get; set; }
        public string SectionID { get; set; }
        public int ID_Department { get; set; }
        public string SectionName_EN { get; set; }
        public string SectionName_TH { get; set; }
        public string SectionDescription { get; set; }
        //public string CreateBy { get; set; }
        //public DateTime CreateDate { get; set; }
        //public string UpdateBy { get; set; }
        //public DateTime UpdateDate { get; set; }
        //public byte IsActive { get; set; }
    }
}
