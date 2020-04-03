using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_T_CompetenceAnalytic
	{
		public int ID { get; set; }
		public int ID_EmployeeManager { get; set; }
		public string CompetenceAnalyticName { get; set; }
		public string Criteria1 { get; set; }
		public string Criteria2 { get; set; }
		public string Criteria3 { get; set; }
		public string Criteria4 { get; set; }
		public string Criteria5 { get; set; }
		public DateTime CreateDate { get; set; }
		public string UpdateBy { get; set; }
		public DateTime UpdateDate { get; set; }
		public int ID_Department { get; set; }
	}
}
