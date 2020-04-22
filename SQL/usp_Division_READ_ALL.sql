--USE [veraplus_ldms]
--GO

/****** Object:  StoredProcedure [dbo].[usp_Division_READ_ALL]    Script Date: 4/6/2020 11:08:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_Division_READ_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,
	ID as ID_Division,
	DivisionID,
	DivisionName_EN,
	DivisionName_TH,
	[Description] AS DivisionDescription,
	ID_Center
	FROM LDMS_M_Division WITH (NOLOCK) WHERE IsActive=1;
END
GO


