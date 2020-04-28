using System;

namespace LDMS.ViewModels
{
    public class LDMS_T_CompetenceAnalytic_Employee:BaseViewModel
    {
        public int? ID { get; set; }
        public int ID_CompetenceAnalytic { get; set; }
        public string EmployeeID { get; set; }
        public LDMS_M_User LDMS_M_User { get; set; }
        public LDMS_T_CompetenceAnalytic_Employee()
        {
            LDMS_M_User = new LDMS_M_User();
        }
        //public string EmployeeName { get; set; }
        //public string CreateBy { get; set; }
        //public DateTime CreateDate { get; set; }
    }
}
