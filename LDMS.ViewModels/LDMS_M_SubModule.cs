using System;

namespace LDMS.ViewModels
{
	public class LDMS_M_SubModule
	{
		public LDMS_M_SubModule()
		{
			LDMS_M_RolePermission = new LDMS_M_RolePermission();
			LDMS_M_Module = new LDMS_M_Module();
		}
		public int ID_SubModule { get; set; }
		public string SubModuleID { get; set; }
		public int ID_Module { get; set; }
		public string SubModuleName_EN { get; set; }
		public string SubModuleName_TH { get; set; }
		public int Sequence { get; set; }
		public int Parent { get; set; }
		public string URL { get; set; }
		public string Icon { get; set; }
		public string Description { get; set; }
		public string CreateBy { get; set; }
		public DateTime CreateDate { get; set; }
		public string UpdateBy { get; set; }
		public DateTime UpdateDate { get; set; }
		public int IsActive { get; set; }
		public LDMS_M_RolePermission LDMS_M_RolePermission { get; set; }
		public LDMS_M_Module LDMS_M_Module { get; set; }
	}
}
