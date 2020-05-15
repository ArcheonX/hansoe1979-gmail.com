using System;

namespace LDMS.ViewModels
{
    public class LDMS_T_ClassCertificate
    {
        public int ID { get; set; }
        public int ID_Class { get; set; }
        public int ID_Course { get; set; }
        public int ID_Employee { get; set; }
        public string Certificate_Path { get; set; }
        public string Description { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime UpdateDate { get; set; }
    }
}
