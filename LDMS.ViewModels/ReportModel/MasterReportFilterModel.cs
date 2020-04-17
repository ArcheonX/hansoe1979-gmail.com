using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels.ReportModel
{
    public class MasterReportFilterModel
    {
        public string InstructorId { get; set; }
        public int? CourseId { get; set; }
        public int? PlatformId { get; set; }
        public int? ActiveStatus { get; set; }
        public int? TrainingStatus { get; set; }
        public int? JobGradeId { get; set; }
        public int? DepartmentId { get; set; }
        public DateTime TrainingDateFrm { get; set; }
        public DateTime TrainingDateTo { get; set; }
    }
}
