using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_T_IDP_Topic
	{
		public int ID { get; set; }
		public int ID_IDP { get; set; }
		public string DevelopementTopic { get; set; }
		public string ExpectedOutcom { get; set; }
		public string CreateBy { get; set; }
		public DateTime CreateDate { get; set; }
		public string UpdateBy { get; set; }
		public DateTime UpdateDate { get; set; }
	}
}
