using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class Paging_Result
    {
        public int TotalRecords { get; set; }

        public dynamic Results { get; set; }
    }
}
