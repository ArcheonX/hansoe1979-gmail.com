using System;

namespace LDMS.ViewModels
{
    public class TCompetenceAnalyticTopic
    {
        public int? ID { get; set; }
        public int ID_CompetenceAnalytic { get; set; }
        public int ID_Course { get; set; }
        public int Expectatoin { get; set; }

        public string KnowledgeTopicName { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
    }
}
