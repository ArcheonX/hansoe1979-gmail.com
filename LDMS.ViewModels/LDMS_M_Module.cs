using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_M_Module
	{
		//public LDMS_M_Module()
		//{
		//	LDMS_M_SubModules = new List<LDMS_M_SubModule>();
		//}
		public int ID { get; set; }
		public string ModuleID { get; set; }
		public string ModuleName_EN { get; set; }
		public string ModuleName_TH { get; set; }
		public int Sequence { get; set; }
		public int Parent { get; set; }
		public string URL { get; set; }
		public string Icon { get; set; }
		public string Description { get; set; }
		public string CreateBy { get; set; }
		public DateTime CreateDate { get; set; }
		public string UpdateBy { get; set; }
		public DateTime UpdateDate { get; set; }
		public byte IsActive { get; set; }
		//public List<LDMS_M_SubModule> LDMS_M_SubModules { get; set; }
	}
}
