using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_M_Prefix
	{
		public int PrefixID { get; set; }
		public int PageID { get; set; }
		public string PrefixKey { get; set; }
		public string FormatKey { get; set; }
		public int LenghtKey { get; set; }
		public string LastestKey { get; set; }
		public string Description { get; set; }
		public string CreateBy { get; set; }
		public DateTime CreateDate { get; set; }
		public string UpdateBy { get; set; }
		public DateTime UpdateDate { get; set; }
		public byte IsActive { get; set; }
	}
}
