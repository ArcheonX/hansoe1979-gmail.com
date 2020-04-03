using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_M_JobTitle
	{
		public int ID { get; set; }
		public string JobTitleID { get; set; }
		public string JobTitleName_EN { get; set; }
		public string JobTitleName_TH { get; set; }
		public string Description { get; set; }
		public string CreateBy { get; set; }
		public DateTime CreateDate { get; set; }
		public string UpdateBy { get; set; }
		public DateTime UpdateDate { get; set; }
		public byte IsActive { get; set; }
	}
}
