using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class LDMS_User
    { 
        public string EmployeeID { get; set; }  
        public byte IsAD { get; set; }
        public string DriverLicenseID { get; set; }
        public string IDCardNumber { get; set; }
        public string Gender { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Nationality { get; set; }
        public int? ID_JobGrade { get; set; }
        public int? ID_JobTitle { get; set; }
        public int ID_Plant { get; set; }
        public int? ID_Center { get; set; }
        public int? ID_Division { get; set; }
        public int? ID_Department { get; set; }
        public int? ID_Section { get; set; }
        public DateTime? JoinDate { get; set; }
        public DateTime? OutDate { get; set; }
        public DateTime? DateOfBirth { get; set; }
        public string PhoneNumber { get; set; }
        public string email { get; set; }
        public string CreateBy { get; set; }
        public DateTime? CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime? UpdateDate { get; set; }
        public byte IsActive { get; set; }
    }
}
