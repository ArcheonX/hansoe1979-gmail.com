-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC usp_Course_Master_Report @paramTrainingDateFrm ='2020/04/01',@paramTrainingDateTo='2020/04/30'
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_Course_Master_Report]
	@paramTrainingDateFrm DATETIME,
	@paramTrainingDateTo DATETIME,
	@paramCourseId nvarchar(100) =null,
	@paramDepartmentId INT =null,
	@paramJobGradeId INT =null,
	@paramStatus INT =null,	
	@paramTrainingStatus INT =null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT
	Platfor.PlatformName_EN AS "Platform",
	SubPlatform.SubPlatformName_EN AS "Sub Platform",
	Course.CourseID AS "Course Code",
	Course.CourseName AS "Course Name",
	CourseType.CourseTypeName_EN AS "Course Type",
	class.ClassID AS "Class ID",
	'' AS "Emp ID",
	'' AS "Employee Name",
	'' AS "Job Grade",
	'' AS "Job Title",
	'' AS "Department",
	'' AS "Division",
	'' AS "Section",
	'' AS "Status Register",
	'' AS "Status Approval",
	'' AS "Status Attend",
	1200 AS "Class Fee",
	100 AS "Course Amount Learner",
	80 AS "Course Amount Qualifield",
	20 AS "Course Amount Unqualifield",
	80 AS "Course Avg.Score"
	FROM  LDMS_M_Course  Course 
	INNER JOIN LDMS_M_CourseType CourseType ON Course.ID_CourseType = CourseType.ID
	INNER JOIN LDMS_M_SubPlatformCourse  SubPlatformCourse ON Course.ID = SubPlatformCourse.ID_Course
	INNER JOIN LDMS_M_SubPlatform SubPlatform ON SubPlatformCourse.ID_SubPlatform =  SubPlatform.ID
	INNER JOIN LDMS_M_Platform  Platfor ON SubPlatform.ID_Platform = Platfor.ID
	INNER JOIN LDMS_T_Class class on Course.ID = class.ID_Course

	WHERE 1 = (CASE WHEN @paramCourseId <> '' and @paramCourseId is not null THEN
				CASE WHEN Course.ID = @paramCourseId THEN 1 ELSE 0 END
				ELSE 1 END)


END
GO
