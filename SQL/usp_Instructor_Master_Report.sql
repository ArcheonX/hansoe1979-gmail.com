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
-- EXEC usp_Instructor_Master_Report @paramTrainingDateFrm ='2020/04/01',@paramTrainingDateTo='2020/04/30'
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_Instructor_Master_Report]
	@paramTrainingDateFrm DATETIME,
	@paramTrainingDateTo DATETIME,
	@paramInstructorId nvarchar(100) =null,
	@paramDepartmentId INT =null,
	@paramJobGradeId INT =null,
	@paramStatus INT =null,	
	@paramTrainingStatus INT =null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	Instructor.Instructor_ID AS "ID",
	Instructor.Instructor_Name as "Name",
	CASE Instructor.IsActive WHEN 1 THEN 'Active' ELSE 'In Active' END AS   "Status",
	Instructor.[Type] AS "Type",
	Instructor.ID_Employee AS "EmpID",
	'' AS "Job Level",
	'' AS "Job Grade",
	'' AS "Job Title",
	'' AS "Department",
	'' AS "Division",
	'' AS "Section",
	Instructor.Organization AS "Organization",
	Instructor.[Address] AS "Adress",
	Instructor.Phone AS "Phone no.",
	Instructor.Email AS "email",
	Instructor.Course_Experience AS "Experience",
	Instructor.Education_Level AS "Education",
	Instructor.Customer_Reference AS "Customer Referrence", 
	'' AS "Industrusty",
	Course.CourseID AS "courseID",
	Course.CourseName AS "Coursename",
	50 AS "Amount Learner",
	20 AS "Amount Qualifield",
	20 AS "Amount Unqualifield",
	100 AS "Avg.Score"
	FROM  LDMS_M_Course  Course 
	LEFT OUTER JOIN LDMS_T_Class class on Course.ID = class.ID_Course
	LEFT OUTER JOIN LDMS_M_Instructor Instructor on class.ID_Instructor = Instructor.Id

	WHERE 1 = (CASE WHEN @paramInstructorId <> '' and @paramInstructorId is not null THEN
				CASE WHEN Instructor.Instructor_ID = @paramInstructorId THEN 1 ELSE 0 END
				ELSE 1 END)


END
GO
