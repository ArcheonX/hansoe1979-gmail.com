using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class LDMS_M_Platform_Search : Paging_Search
    {
        public string PlatformId { get; set; }
        public string PlatformName { get; set; }
        public string PlatformType { get; set; }
        public string PlatformStatus { get; set; }
    }
}
