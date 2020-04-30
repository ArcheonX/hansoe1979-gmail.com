--USE [veraplus_ldms]
--GO

/****** Object:  StoredProcedure [dbo].[usp_Center_READ_ALL]    Script Date: 4/6/2020 11:07:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC [dbo].[usp_CompetenceAnalyticScore_READ_BY_AnalyticId] 1
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_CompetenceAnalyticScore_READ_BY_AnalyticId] 
@AnalyticId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER( ORDER BY TB.ID ASC)  as RowIndex,TB.* FROM
	(	
		SELECT
		score.ID,
		score.ID_CompetenceAnalytic, 
		score.ID_CompetenceKnowledgeTopic,
		score.ID_CompetenceEmployee,
		score.Score
		FROM LDMS_T_CompetenceAnalytic_Score score WITH (NOLOCK) 
		LEFT JOIN LDMS_T_CompetenceAnalytic_Employee emp WITH (NOLOCK)  on score.ID_CompetenceEmployee = emp.EmployeeID and emp.Is_Active =1 and emp.ID_CompetenceAnalytic = score.ID_CompetenceAnalytic
		LEFT JOIN LDMS_T_CompetenceAnalytic_KnwldTopic topc WITH (NOLOCK)  on score.ID_CompetenceKnowledgeTopic = topc.ID and emp.Is_Active =1 and topc.ID_CompetenceAnalytic = score.ID_CompetenceAnalytic and topc.Is_Active =1 
		where score.ID_CompetenceAnalytic = @AnalyticId AND ISNULL(topc.ID_Course,0)= 0
		UNION ALL
		SELECT
		0 AS ID,
		emp.ID_CompetenceAnalytic, 
		topc.ID AS ID_CompetenceKnowledgeTopic,
		emp.EmployeeID AS ID_CompetenceEmployee,
		(CASE WHEN ISNULL(res.SkillScore,0) < 20 THEN 1
			 WHEN ISNULL(res.SkillScore,0) < 40 THEN 2
			 WHEN ISNULL(res.SkillScore,0) < 60 THEN 3
			 WHEN ISNULL(res.SkillScore,0) < 80 THEN 4
			 ELSE 5 END) AS Score
		FROM LDMS_T_CompetenceAnalytic_Employee emp WITH (NOLOCK)
		LEFT JOIN LDMS_T_CompetenceAnalytic_KnwldTopic topc WITH (NOLOCK)  on  topc.ID_CompetenceAnalytic = emp.ID_CompetenceAnalytic and topc.Is_Active =1 
		LEFT JOIN LDMS_T_ClassAttendAndResult res WITH (NOLOCK) on topc.ID_Course = res.ID_Course and emp.EmployeeID = res.EmployeeID
		where emp.ID_CompetenceAnalytic = @AnalyticId AND ISNULL(topc.ID_Course,0)<> 0 and emp.Is_Active =1 
	) TB
END
GO


