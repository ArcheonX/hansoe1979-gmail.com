using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_M_UserRole
	{
		public int ID { get; set; }
		public string EmployeeID { get; set; }
		public int ID_Role { get; set; }
		public string Password { get; set; }
		public int IsInstructor { get; set; }
		public string Remark { get; set; }
		public string CreateBy { get; set; }
		public DateTime CreateDate { get; set; }
		public string UpdateBy { get; set; }
		public DateTime UpdateDate { get; set; }
		public byte IsActive { get; set; }
		public LDMS_M_Role LDMS_M_Role { get; set; }
		public LDMS_M_UserRole()
		{
			LDMS_M_Role = new LDMS_M_Role();

		}
	}
}
