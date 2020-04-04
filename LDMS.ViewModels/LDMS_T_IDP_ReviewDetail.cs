using System;

namespace LDMS.ViewModels
{
    public class LDMS_T_IDP_ReviewDetail
    {
        public int ID { get; set; }
        public int ID_IDP_ReviewHead { get; set; }
        public string PostDetail { get; set; }
        public string AttachFilePath { get; set; }
        public DateTime PastDate { get; set; }
        public int ID_PostByEmployee { get; set; }
    }
}
