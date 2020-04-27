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
-- EXEC [dbo].[usp_CompetenceAnalytic_READ_ALL] 
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_CompetenceAnalyticScore_READ_BY_AnalyticId] 
@AnalyticId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,
	Score.ID,
	Score.ID_CompetenceAnalytic, 
	Score.ID_CompetenceKnowledgeTopic,
	Score.ID_CompetenceEmployee,
	Score.Score,
	Score.ScoreRange
	FROM LDMS_T_CompetenceAnalytic_Score Score WITH (NOLOCK)
	where Score.ID_CompetenceAnalytic = @AnalyticId;

END
GO


