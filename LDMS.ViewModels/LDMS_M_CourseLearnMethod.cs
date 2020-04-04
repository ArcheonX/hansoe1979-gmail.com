using System;

namespace LDMS.ViewModels
{
    public class LDMS_M_CourseLearnMethod
    {
        public int ID { get; set; }
        public string Course_LearnMethodName_EN { get; set; }
        public string Course_LearnMethodName_TH { get; set; }
        public int IsInterface { get; set; }
        public string Url { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime UpdateDate { get; set; }
        public byte IsActive { get; set; }
    }
}
