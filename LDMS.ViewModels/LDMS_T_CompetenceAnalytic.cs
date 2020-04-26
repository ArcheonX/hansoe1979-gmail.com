using System;

namespace LDMS.ViewModels
{
    public class LDMS_T_CompetenceAnalytic : BaseViewModel
    {
        public int ID_Analytic { get; set; }
        public int ID_EmployeeManager { get; set; }
        public string CompetenceAnalyticName { get; set; }
        public string Criteria1 { get; set; }
        public string Criteria2 { get; set; }
        public string Criteria3 { get; set; }
        public string Criteria4 { get; set; }
        public string Criteria5 { get; set; } 
        public int ID_Department { get; set; }
        public int ID_JobGrade { get; set; }
    }
}
