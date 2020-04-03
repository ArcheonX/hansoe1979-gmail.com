using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_M_SubPlatform
	{
		public int ID { get; set; }
		public int ID_Platform { get; set; }
		public string SubPlatformName_EN { get; set; }
		public string SubPlatformName_TH { get; set; }
		public string CreateBy { get; set; }
		public DateTime CreateDate { get; set; }
		public string UpdateBy { get; set; }
		public DateTime UpdateDate { get; set; }
		public byte IsActive { get; set; }
	}
}
