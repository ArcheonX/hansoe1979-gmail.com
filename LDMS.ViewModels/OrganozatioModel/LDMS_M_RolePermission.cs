﻿using System;

namespace LDMS.ViewModels
{
	public class LDMS_M_RolePermission
	{
		public LDMS_M_RolePermission()
		{
			LDMS_M_Role = new LDMS_M_Role();
		}
		public int RolePermissionId { get; set; }
		public int ID_Role { get; set; }
		public int ID_SubModule { get; set; }
		public int PermissionType { get; set; }
		public string RolePermissionDescription { get; set; }
		public string CreateBy { get; set; }
		public DateTime CreateDate { get; set; }
		public string UpdateBy { get; set; }
		public DateTime UpdateDate { get; set; }
		public byte IsActive { get; set; }
		public LDMS_M_Role LDMS_M_Role { get; set; }
	}
}
