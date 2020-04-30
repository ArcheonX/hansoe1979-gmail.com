using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class LDMS_M_SubPlatform_Search : Paging_Search
    {
        public string ID_Platform { get; set; }
        public string Keyword { get; set; }
    }
}
