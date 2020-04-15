--USE [veraplus_ldms]
--GO

/****** Object:  StoredProcedure [dbo].[usp_UserRole_READ_BY_EmployeeId]    Script Date: 4/6/2020 11:09:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- exec [dbo].[usp_UserRole_READ_BY_EmployeeId] 'STT00001','azsx'
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_UserRole_READ_BY_EmployeeId]
	-- Add the parameters for the stored procedure here
	@param_EmployeeId nvarchar(50),
	@param_Password nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON; 
	SELECT  ROW_NUMBER() OVER(ORDER BY usrRole.ID ASC)  as RowIndex, usrRole.ID as UserRoleId,usrRole.ID_Role,usrRole.IsInstructor,usrRole.Password,usrRole.Remark,usrRole.passwordSalt,
	rol.ID as RoleId,rol.RoleDescription,rol.RoleName_EN,rol.RoleName_TH
	FROM   LDMS_M_UserRole usrRole WITH (NOLOCK) 
	LEFT OUTER JOIN LDMS_M_Role rol  WITH (NOLOCK) on usrRole.ID_Role = rol.ID
	WHERE  usrRole.EmployeeID = @param_EmployeeId AND usrRole.[Password] = @param_Password
END
GO


