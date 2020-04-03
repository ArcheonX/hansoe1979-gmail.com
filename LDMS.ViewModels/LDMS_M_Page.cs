using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_M_Page
	{
		public int PageID { get; set; }
		public string PageCode { get; set; }
		public int ModuleID { get; set; }
		public string PageName_EN { get; set; }
		public string PageName_TH { get; set; }
		public string Description { get; set; }
		public int Sequence { get; set; }
		public string URL { get; set; }
		public string Icon { get; set; }
		public string CreateBy { get; set; }
		public DateTime CreateDate { get; set; }
		public string UpdateBy { get; set; }
		public DateTime UpdateDate { get; set; }
		public byte IsActive { get; set; }
	}
}
