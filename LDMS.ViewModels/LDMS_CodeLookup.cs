using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class LDMS_CodeLookup
    {
        public int ID { get; set; }
        public string TableName { get; set; }
        public string FieldName { get; set; }
        public string Code { get; set; }
        public string StateName { get; set; }
        public int Sequence { get; set; }
        public string Description { get; set; }
        public Int16 IsDefault { get; set; }
    }
}
