using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class LDMS_T_CoachingSearch : Paging_Search
    {
        public string ID_Plant { get; set; }
        public string ID_Center { get; set; }
        public string ID_Division { get; set; }
        public string ID_Department { get; set; }
        public string ID_Status { get; set; }
        public string ID_Employee { get; set; }
        public string ID_Platform { get; set; }
        public string ID_UserLogin { get; set; }

    }
}
