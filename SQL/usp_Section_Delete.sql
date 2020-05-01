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
CREATE OR ALTER PROCEDURE usp_Section_Delete
	-- Add the parameters for the stored procedure here
	@param_sectionId int, 
	@paramUpdateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[LDMS_M_Section]
   SET 
	   [UpdateBy] = @paramUpdateBy
      ,[UpdateDate] = GETDATE()
      ,[IsActive] = 0
   WHERE [ID] =@param_sectionId; 

   UPDATE LDMS_M_User
   SET ID_Section = NULL 
   WHERE ID_Section = @param_sectionId;

END
GO
