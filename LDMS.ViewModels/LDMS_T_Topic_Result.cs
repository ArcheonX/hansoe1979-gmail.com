using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class LDMS_T_Topic_Result
    {
        public int rownumber { get; set; }
        public int ID { get; set; }
        public int ID_IDP { get; set; }
        public string DevelopementTopic { get; set; }
        public string ExpectedOutcom { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime UpdateDate { get; set; }
        public string ID_SubTopic { get; set; }
        public string HowToDevelopment { get; set; }
        public string SubTopic_ExpectedOutcom { get; set; }
        public DateTime ByWhen { get; set; }
        public string SubTopicStatus { get; set; }
        public string SubTopicStatusName { get; set; }

    }
}
