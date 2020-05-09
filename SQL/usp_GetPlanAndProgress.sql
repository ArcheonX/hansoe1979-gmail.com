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
-- [dbo].[usp_GetPlanAndProgress_By_Employee] @employeeId ='STT00001' ,@startDate ='2020-04-01' ,@endDate ='2021-03-31'
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_GetPlanAndProgress_By_Employee]
	-- Add the parameters for the stored procedure here
	@employeeId nvarchar(50),
	@startDate Datetime,
	@endDate Datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
IF OBJECT_ID('tempdb..#ProgressResult') IS NOT NULL
    DROP TABLE #ProgressResult

    -- Insert statements for procedure here
select 
		plat.ID AS ID_Platform,
		course.ID AS ID_Course,
        plat.PlatformID, plat.PlatformName_EN, plat.PlatformName_TH,
		subplat.SubPlatformName_EN,subplat.SubPlatformName_TH,
		course.CourseID,course.CourseName,--course.ID_LearnMethod,
		method.Course_LearnMethodName_EN,method.Course_LearnMethodName_TH,
		--class.ClassID,class.LearnDateStart,class.LearnDateEnd,
		--targetEmp.EmployeeID,register.RegisterDate,register.RegisterStatus,
		--result.ClassState, result.CertificateStatus, result.LearningResult,
		class.LearnDateEnd As TargetDate,
		CASE WHEN class.LearnDateEnd > getdate() THEN datediff(day,getdate(),class.LearnDateEnd) ELSE 0 END AS RemainDay,

		CASE WHEN result.EmployeeID IS NOT NULL AND result.LearningResult = 70 AND result.ClassState = 70 THEN 'COMPLETED' 
			 WHEN class.ClassStatus = 70 AND (result.EmployeeID IS NULL OR result.LearningResult = 30  OR result.LearningResult = 99) THEN 'OVER DUE' 
		     WHEN result.EmployeeID IS NOT NULL AND result.LearningResult = 30 THEN 'ON PROGRESS'			
			 WHEN result.EmployeeID IS NOT NULL AND result.LearningResult = 30 AND  getdate()> class.LearnDateEnd  THEN 'OVER DUE'
			ELSE 'NOT START' END AS CourseStatus
		INTO #ProgressResult
		FROM LDMS_M_Platform plat
		INNER JOIN LDMS_M_SubPlatform subplat on subplat.ID_Platform = plat.ID
		INNER JOIN LDMS_M_SubPlatformCourse subplatcourse on subplatcourse.ID_SubPlatform = subplat.ID
		INNER JOIN  LDMS_M_Course course on  course.ID = subplatcourse.ID_Course
		INNER JOIN LDMS_M_CourseLearnMethod method on course.ID_LearnMethod = method.ID
		INNER JOIN LDMS_T_Class class on course.ID = class.ID_Course		
		INNER JOIN LDMS_T_CourseEmployee targetEmp on course.ID = targetEmp.ID_Course
		LEFT OUTER JOIN LDMS_T_ClassRegistration register on class.ID = register.ID_Class
		LEFT OUTER JOIN LDMS_T_ClassAttendAndResult result on class.ID = result.ID_Class and targetEmp.EmployeeID = result.EmployeeID
		WHERE class.RegisterDateStart>= @startDate AND class.RegisterDateEnd <= @endDate
		and course.IsActive = 1
		and targetEmp.EmployeeID = @employeeId; 

		select * from #ProgressResult;

END
GO
