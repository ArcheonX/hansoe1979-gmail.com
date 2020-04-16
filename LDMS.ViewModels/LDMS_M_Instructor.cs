using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
    public class LDMS_M_Instructor
    {
        public int rownumber { get; set; }
        public string ID { get; set; }
        public string Instructor_ID { get; set; }
        public string Instructor_Name { get; set; }

        public string ID_Employee { get; set; }
        public int ID_Department { get; set; }
        public string Type { get; set; }
        public string TypeName { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Organization { get; set; }
        public string Address { get; set; }
        public string District_Id { get; set; }
        public string Aumphur_Id { get; set; }
        public string Provice_Id { get; set; }
        public string Post_Code { get; set; }
        public string Path_Image { get; set; }
        public string Path_Certificate { get; set; }
        public string Education_Level { get; set; }
        public string Major { get; set; }
        public string Course_Experience { get; set; }
        public string Skill_Professional { get; set; }
        public string Customer_Reference { get; set; }
        public string Manufacturing_Area { get; set; }
        public string Create_By { get; set; }
        public DateTime Create_Date { get; set; }
        public string Update_By { get; set; }
        public DateTime Update_Date { get; set; }
        public bool IsActive { get; set; }

        public int ID_Course { get; set; }
        public string CourseName { get; set; }

        public string DepartmentName_EN { get; set; }
        public string PROVINCE_NAME { get; set; }
        public string AMPHUR_NAME { get; set; }
        public string DISTRICT_NAME { get; set; }
    }
}
