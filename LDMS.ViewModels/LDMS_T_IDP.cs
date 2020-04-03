using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_T_IDP
	{
		public int ID { get; set; }
		public int ID_Employee { get; set; }
		public int ID_Manager { get; set; }
		public DateTime IDP_StartDate { get; set; }
		public DateTime IDP_EndDate { get; set; }
		public string IDP_Objective { get; set; }
		public int IDP_Status { get; set; }
		public string CreateBy { get; set; }
		public DateTime CreateDate { get; set; }
		public string UpdateBy { get; set; }
		public DateTime UpdateDate { get; set; }
		public int ID_Department { get; set; }
	}
}
