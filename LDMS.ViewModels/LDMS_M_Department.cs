using System;

namespace LDMS.ViewModels
{
    public class LDMS_M_Department : BaseViewModel
    {
        public int ID_Department { get; set; }
        public string DepartmentID { get; set; }
        public int? ID_Division { get; set; }
        public string DepartmentName_EN { get; set; }
        public string DepartmentName_TH { get; set; }
        public string Description { get; set; }
        public string CreateBy { get; set; }
        public DateTime? CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime? UpdateDate { get; set; }
        public byte IsActive { get; set; }
    }
}
