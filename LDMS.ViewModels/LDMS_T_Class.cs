using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_T_Class
	{
		public int ID { get; set; }
		public string ClassID { get; set; }
		public int ID_Course { get; set; }
		public int ID_Instructor { get; set; }
		public int ClassCapacity { get; set; }
		public decimal ClassFee { get; set; }
		public DateTime LearnDateStart { get; set; }
		public TimeSpan LearnTimeStart { get; set; }
		public DateTime LearnDateEnd { get; set; }
		public TimeSpan LearnTimeEnd { get; set; }
		public DateTime RegisterDateStart { get; set; }
		public DateTime RegisterDateEnd { get; set; }
		public int ID_PlantVenue { get; set; }
		public int ID_VenueRoom { get; set; }
		public string PlaceAndLocation { get; set; }
		public int ClassStatus { get; set; }
		public byte IsAttend { get; set; }
		public int AttendNum { get; set; }
		public byte IsTest { get; set; }
		public int TestFullScore { get; set; }
		public int TestPercentage { get; set; }
		public byte IsSkill { get; set; }
		public int SkillFullScore { get; set; }
		public int SkillPercentage { get; set; }
		public byte IsCoaching { get; set; }
		public byte IsCertificate { get; set; }
		public byte IsAttachCert { get; set; }
		public string CertificationRemark { get; set; }
		public int ReminderDurationDay { get; set; }
		public string CreateBy { get; set; }
		public DateTime CreateDate { get; set; }
		public string UpdateBy { get; set; }
		public DateTime UpdateDate { get; set; }
		public byte IsActive { get; set; }
	}
}
