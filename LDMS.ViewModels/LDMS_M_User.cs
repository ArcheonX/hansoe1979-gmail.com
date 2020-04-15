using System;

namespace LDMS.ViewModels
{
    public class LDMS_M_User : BaseViewModel
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
        public DateTime? JoinDate { get; set; }
        public DateTime? OutDate { get; set; }
        public DateTime? DateOfBirth { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public string CreateBy { get; set; }
        public DateTime? CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime? UpdateDate { get; set; }
        public byte IsActive { get; set; }
        public string Token { get; set; }

        public string RefreshToken { get; set; }

        public LDMS_M_UserRole LDMS_M_UserRole { get; set; }

        public LDMS_M_Department LDMS_M_Department { get; set; }
        public LDMS_M_Plant LDMS_M_Plant { get; set; }
        public LDMS_M_User()
        {
            LDMS_M_UserRole = new LDMS_M_UserRole();
            LDMS_M_Department = new LDMS_M_Department();
            LDMS_M_Plant = new LDMS_M_Plant();

        }
    }
}
