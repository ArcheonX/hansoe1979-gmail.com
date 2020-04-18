using System;

namespace LDMS.ViewModels
{
    public class LDMS_M_Course
    {
        public int rownumber { get; set; }
        public int ID { get; set; }
        public string CourseID { get; set; }
        public string CourseName { get; set; }
        public int ID_LearnMethod { get; set; }
        public int ID_CourseType { get; set; }
        public string Objective { get; set; }
        public string Description { get; set; }
        public string OutLine { get; set; }
        public int IsRefreshment { get; set; }
        public int RefreshmentPeriod { get; set; }
        public int RefreshmentUnit { get; set; }
        public string TargetEmployeeID { get; set; }
        public int ID_PlantTarget { get; set; }
        public int ID_CenterTarget { get; set; }
        public int ID_DivisionTarget { get; set; }
        public int ID_DepartmentTarget { get; set; }
        public int ID_SectionTarget { get; set; }
        public string JobGradeTargetID { get; set; }
        public string JobTitleTargetID { get; set; }
        public int ID_DepartmentCreate { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime UpdateDate { get; set; }
        public int IsActive { get; set; }

        public string CourseStatus { get; set; }
        public string LearnMethodName { get; set; }
    }
}
