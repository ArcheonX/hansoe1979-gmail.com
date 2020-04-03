using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_T_IDP_ReviewHead
	{
		public int ID { get; set; }
		public int ID_IDP_SubTopic { get; set; }
		public string EmployeeReport { get; set; }
		public string AttachFilePath { get; set; }
		public DateTime PostDate { get; set; }
		public int ID_PostByEmployee { get; set; }
		public int ReviewStatus { get; set; }
	}
}
