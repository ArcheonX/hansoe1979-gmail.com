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
-- =============================================
CREATE OR ALTER PROCEDURE usp_Section_Create
	-- Add the parameters for the stored procedure here
	@param_derpartmentId int,
	@para_sectionCode nvarchar(50),
	@param_sectionNameEN nvarchar(50),
	@param_sectionNameTH nvarchar(50),
	@param_sectionDesc nvarchar(100),
	@paramCreateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[LDMS_M_Section]
           ([ID]
           ,[SectionID]
           ,[ID_Department]
           ,[SectionName_EN]
           ,[SectionName_TH]
           ,[Description]
           ,[CreateBy]
           ,[CreateDate] 
           ,[IsActive])
	values ((SELECT ISNULL(MAX(ID),0)+1 FROM [dbo].[LDMS_M_Section]),
	@para_sectionCode,
	@param_derpartmentId,
	@param_sectionNameEN,
	@param_sectionNameTH,
	@param_sectionDesc,
	@paramCreateBy,
	GETDATE(),
	1)
END
GO
