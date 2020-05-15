using System;

namespace LDMS.ViewModels
{
    public class LDMS_M_CodeLookUp
    {
        public int ID { get; set; }
        public string TableName { get; set; }
        public string FieldName { get; set; }
        public string Code { get; set; }
        public string StateName { get; set; }
        public int Sequence { get; set; }
        public string Description { get; set; }
        public byte IsDefault { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime UpdateDate { get; set; }
        public byte IsActive { get; set; }
    }
}
