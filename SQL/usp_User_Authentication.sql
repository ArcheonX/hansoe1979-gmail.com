--USE [veraplus_ldms]
--GO

/****** Object:  StoredProcedure [dbo].[usp_User_READ_BY_EmployeeId]    Script Date: 4/6/2020 11:09:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,> 
-- EXEC [usp_User_Authentication] @employeeId='STT00001',@password='BY3ziz1R73/IfRP8NYB3APHh/0M='
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_User_Authentication]
	-- Add the parameters for the stored procedure here
	@employeeId nvarchar(50) ,
	@password nvarchar(1024)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON; 

	SELECT   muser.ID_User
	FROM LDMS_M_User  muser WITH (NOLOCK)   
	WHERE muser.EmployeeID = @employeeId AND muser.IsActive =1 and muser.[Password] =@password and muser.IsLocked =0 and muser.IsDeleted =0

END
GO


