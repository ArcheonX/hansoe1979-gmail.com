using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class Paging_Search
    {
        public int PageNum { get; set; }
        public int PageSize { get; set; }

        public string SortField { get; set; }
        public string SortOrder { get; set; }
    }
}
