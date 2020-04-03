using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels
{
	public class LDMS_T_ClassAttendAndResult
	{
		public int ID { get; set; }
		public int ID_Class { get; set; }
		public int ID_Course { get; set; }
		public int ID_Employee { get; set; }
		public int ClassState { get; set; }
		public int LearningResult { get; set; }
		public byte AttendCountNum { get; set; }
		public byte[] AttendTimeStamp { get; set; }
		public byte IsScanRFID { get; set; }
		public int PreTestScore { get; set; }
		public int PostTestScore { get; set; }
		public int SkillScore { get; set; }
		public byte CoachingStatus { get; set; }
		public byte CertificateStatus { get; set; }
		public string CreateBy { get; set; }
		public DateTime CreateDate { get; set; }
		public string UpdateBy { get; set; }
		public DateTime UpdateDate { get; set; }
	}
}
