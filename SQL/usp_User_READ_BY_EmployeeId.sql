USE [veraplus_ldms]
GO

/****** Object:  StoredProcedure [dbo].[usp_User_READ_BY_EmployeeId]    Script Date: 4/6/2020 11:09:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC [dbo].[usp_User_READ_BY_EmployeeId] 'STT00001'
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_User_READ_BY_EmployeeId]
	-- Add the parameters for the stored procedure here
	@param_EmployeeId nvarchar(50) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	--SELECT  *
	--FROM   LDMS_M_User 
	--WHERE  EmployeeID = @param_EmployeeId

	--SELECT  muser.*,
	--		usrRole.ID as UserRoleId,usrRole.ID_Role,usrRole.IsInstructor,usrRole.Password,usrRole.Remark,
	--		rol.ID as RoleId,rol.RoleDescription,rol.RoleName_EN,rol.RoleName_TH
	--FROM   LDMS_M_User  muser
	--LEFT OUTER JOIN LDMS_M_UserRole usrRole on muser.EmployeeID = usrRole.EmployeeID
	--LEFT OUTER JOIN LDMS_M_Role rol on usrRole.ID_Role = rol.ID
	--WHERE  USRROLE.EmployeeID = @param_EmployeeId AND   muser.IsActive =1

	SELECT ROW_NUMBER() OVER(ORDER BY muser.EmployeeID ASC)  as RowIndex,
	muser.DateOfBirth,muser.DriverLicenseID,muser.email,muser.EmployeeID,muser.Gender,muser.ID_Center,
	muser.ID_Division,muser.ID_JobGrade,muser.ID_JobTitle,muser.ID_Section,muser.IDCardNumber,muser.IsAD,muser.JoinDate
	,muser.Name,muser.Nationality,muser.OutDate,muser.PhoneNumber,muser.Surname,
	usrRole.ID as UserRoleId,usrRole.ID_Role,usrRole.IsInstructor,usrRole.Password,usrRole.Remark,
	rol.ID as RoleId,rol.RoleDescription,rol.RoleName_EN,rol.RoleName_TH,
	dep.ID as ID_Department,dep.DepartmentID,dep.DepartmentName_EN,dep.DepartmentName_TH,dep.Description,
	muser.ID_Plant,plant.PlantDescription,plant.PlantID,plant.PlantName_EN,plant.PlantName_TH
	FROM   LDMS_M_User  muser WITH (NOLOCK) 
	LEFT OUTER JOIN LDMS_M_UserRole usrRole WITH (NOLOCK)  on muser.EmployeeID = usrRole.EmployeeID
	LEFT OUTER JOIN LDMS_M_Role rol WITH (NOLOCK)  on usrRole.ID_Role = rol.ID
	LEFT OUTER JOIN LDMS_M_Department dep WITH (NOLOCK)  on muser.ID_Department = dep.ID
	LEFT OUTER JOIN LDMS_M_Plant plant WITH (NOLOCK)  on muser.ID_Plant = plant.ID
	WHERE USRROLE.EmployeeID = @param_EmployeeId AND muser.IsActive =1

END
GO


