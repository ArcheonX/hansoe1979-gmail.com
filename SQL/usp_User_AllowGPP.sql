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
CREATE OR ALTER   PROCEDURE [dbo].[usp_User_AllowGPP]
-- Add the parameters for the stored procedure here
		@EmployeeId nvarchar(50),
		@IsAllow tinyint,
		@UpdateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF EXISTS (SELECT * FROM [dbo].[LDMS_M_User] WHERE [EmployeeID]  = @EmployeeId)
		BEGIN
		-- Insert statements for procedure here
		UPDATE	[dbo].[LDMS_M_User]
			SET  
				[IsActive] = 1 
			   ,IsAllowGPP = @IsAllow
			   ,[UpdateBy] = @UpdateBy
			   ,[UpdateDate] = GETDATE()
		   		WHERE [EmployeeID]  = @EmployeeId
		END
		ELSE
		BEGIN
		 SELECT -- As many or few of these as you care to return
			100 AS ErrorNumber
		   ,100 AS ErrorSeverity
		   ,100 AS ErrorState
		   ,'usp_User_AllowGPP' AS ErrorProcedure
		   ,0 AS ErrorLine
		   ,'Cannot Update user does'' exists' AS ErrorMessage;
	   END
END
GO
