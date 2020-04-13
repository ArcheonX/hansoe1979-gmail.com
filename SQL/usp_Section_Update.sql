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
CREATE OR ALTER PROCEDURE usp_Section_Update
	-- Add the parameters for the stored procedure here
	@param_sectionId int,
	@param_derpartmentId int,
	@para_sectionCode nvarchar(50),
	@param_sectionNameEN nvarchar(50),
	@param_sectionNameTH nvarchar(50),
	@param_sectionDesc nvarchar(100),
	@paramUpdateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[LDMS_M_Section]
   SET  [SectionID] = @para_sectionCode 
      ,[SectionName_EN] = @param_sectionNameEN
      ,[SectionName_TH] = @param_sectionNameTH
      ,[Description] =@param_sectionDesc 
      ,[UpdateBy] = @paramUpdateBy
      ,[UpdateDate] = GETDATE()
      ,[IsActive] = 1
 WHERE [ID] =@param_sectionId; 
END
GO
