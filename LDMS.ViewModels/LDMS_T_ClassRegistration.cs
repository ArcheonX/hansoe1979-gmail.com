using System;

namespace LDMS.ViewModels
{
    public class LDMS_T_ClassRegistration
    {
        public int ID { get; set; }
        public int ID_Class { get; set; }
        public int ID_Course { get; set; }
        public int ID_Employee { get; set; }
        public int RegisterStatus { get; set; }
        public string RemarkManager { get; set; }
        public DateTime RegisterDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime UpdateDate { get; set; }
        public string RemarkAdmin { get; set; }
    }
}
