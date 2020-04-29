using System;

namespace LDMS.ViewModels
{
    public class LDMS_T_CompetenceAnalytic_Score:BaseViewModel
    {
        public long ID { get; set; }
        public int ID_CompetenceAnalytic { get; set; }
        public int ID_CompetenceKnowledgeTopic { get; set; }
        public string ID_CompetenceEmployee { get; set; }
        public int Score { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime UpdateDate { get; set; }
    }
}
