using System;

namespace LDMS.ViewModels
{
    public class LDMS_T_CompetenceStar
    {
        public int ID { get; set; }
        public int ID_Employee { get; set; }
        public int ID_Manager { get; set; }
        public string CompetenceStarTypeID { get; set; }
        public int IsStarActive { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public string UpdateBY { get; set; }
        public DateTime UpdateDate { get; set; }
    }
}
