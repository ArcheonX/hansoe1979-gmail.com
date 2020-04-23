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
CREATE OR ALTER PROCEDURE [dbo].[usp_LDMS_T_DataLog_Create]
	-- Add the parameters for the stored procedure here
	@LogTypeId INT,
	@EmployeeID nvarchar(50)=null,
	@ip_address nvarchar(50)=null,
	@LogDetail text =null,
	@CreateBy  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[LDMS_T_DataLog]
           (LogDateTime
		   ,[LogTypeId]
           ,[EmployeeID]
           ,[ip_address]
           ,[LogDetail]
		   ,[CreateBy]
		   ,[IsActive])
     VALUES
           (getdate()
		   ,@LogTypeId
           ,@EmployeeID
           ,@ip_address
           ,@LogDetail
		   ,@CreateBy
		   ,1)
END
GO
