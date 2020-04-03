using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_T_CompetenceAnalytic_Employee
	{
		public int ID { get; set; }
		public int ID_CompetenceAnalytic { get; set; }
		public int ID_Employee { get; set; }
		public string EmployeeName { get; set; }
		public string CreateBy { get; set; }
		public DateTime CreateDate { get; set; }
	}
}
