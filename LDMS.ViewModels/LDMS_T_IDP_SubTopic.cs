using System;

namespace LDMS.ViewModels
{
    public class LDMS_T_IDP_SubTopic
    {
        public int ID { get; set; }
        public int ID_IDP_Topic { get; set; }
        public string DevelopementTopic { get; set; }
        public string TopicExpectedOutcom { get; set; }
        public string HowToDevelopment { get; set; }
        public string ExpectedOutcom { get; set; }
        public DateTime ByWhen { get; set; }
        public int SubTopicStatus { get; set; }
        public string SubTopicStatusName { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime UpdateDate { get; set; }
    }
}
