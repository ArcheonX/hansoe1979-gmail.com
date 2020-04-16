using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class Paging_Result
    {
        public int draw { get; set; }
        public int recordsTotal { get; set; }
        public int recordsFiltered { get; set; }

        public dynamic data { get; set; }
    }
}
