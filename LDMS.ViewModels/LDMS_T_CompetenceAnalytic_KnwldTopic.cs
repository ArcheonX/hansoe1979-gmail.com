using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_T_CompetenceAnalytic_KnwldTopic
	{
		public int ID { get; set; }
		public int ID_CompetenceAnalytic { get; set; }
		public int ID_Course { get; set; }
		public string KnowledgeTopicName { get; set; }
		public string CreateBy { get; set; }
		public DateTime CreateDate { get; set; }
	}
}
