using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_T_CoachingReviewDetail
	{
		public int ID { get; set; }
		public int ID_CoachingReviewHead { get; set; }
		public string PostDetail { get; set; }
		public string AttachFilePath { get; set; }
		public DateTime PostDate { get; set; }
		public int ID_PostByEmployee { get; set; }
	}
}
