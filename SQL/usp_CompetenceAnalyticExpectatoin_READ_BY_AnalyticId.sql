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
-- EXEC [dbo].[usp_CompetenceAnalyticExpectatoin_READ_BY_AnalyticId] 4
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_CompetenceAnalyticExpectatoin_READ_BY_AnalyticId] 
@AnalyticId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,
	ID,
	ID_CompetenceAnalytic,  
	[ID_CompetenceKnowledgeTopic],
	[Score]
	FROM LDMS_T_CompetenceAnalytic_Expectatoin  WITH (NOLOCK)
	where ID_CompetenceAnalytic = @AnalyticId;

END
GO


