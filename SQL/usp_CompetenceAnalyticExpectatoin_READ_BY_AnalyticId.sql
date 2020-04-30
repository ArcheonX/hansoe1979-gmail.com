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
-- EXEC [dbo].[usp_CompetenceAnalyticExpectatoin_READ_BY_AnalyticId] 1
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_CompetenceAnalyticExpectatoin_READ_BY_AnalyticId] 
@AnalyticId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER( ORDER BY ex.ID ASC)  as RowIndex,
	ex.ID,
	topc.ID_CompetenceAnalytic,  
	topc.ID AS  [ID_CompetenceKnowledgeTopic],
	ISNULL([Score],5) AS [Score]
	FROM LDMS_T_CompetenceAnalytic_KnwldTopic topc WITH (NOLOCK) 
	LEFT JOIN LDMS_T_CompetenceAnalytic_Expectatoin ex  WITH (NOLOCK)  on ex.ID_CompetenceKnowledgeTopic = topc.ID   and topc.ID_CompetenceAnalytic = ex.ID_CompetenceAnalytic and topc.Is_Active =1 
	where topc.ID_CompetenceAnalytic = @AnalyticId and topc.Is_Active =1 

END
GO


