using System;
using System.Collections.Generic;

namespace LDMS.ViewModels
{
    public class LDMS_T_CompetenceAnalytic : BaseViewModel
    {
        public int? ID_Analytic { get; set; }
        public string ID_EmployeeManager { get; set; }
        public string CompetenceAnalyticName { get; set; }
        public string Criteria1 { get; set; }
        public string Criteria2 { get; set; }
        public string Criteria3 { get; set; }
        public string Criteria4 { get; set; }
        public string Criteria5 { get; set; } 
        public int? ID_Department { get; set; }
        public int? ID_JobGrade { get; set; }

        public List<LDMS_T_CompetenceAnalytic_Employee> Employees { get; set; }
        public List<LDMS_T_CompetenceAnalytic_KnwldTopic> Topics { get; set; }
        public List<LDMS_T_CompetenceAnalytic_Score> Scores { get; set; }
        public LDMS_T_CompetenceAnalytic()
        {
            Employees = new List<LDMS_T_CompetenceAnalytic_Employee>();
            Topics = new List<LDMS_T_CompetenceAnalytic_KnwldTopic>();
            Scores = new List<LDMS_T_CompetenceAnalytic_Score>();
        }
    }
}
