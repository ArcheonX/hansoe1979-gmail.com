USE [veraplus_ldms]
GO

/****** Object:  StoredProcedure [dbo].[usp_User_READ_ALL]    Script Date: 4/6/2020 11:09:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC [dbo].[usp_User_READ_ALL] @paramEmployeeId=null,@paramEmployeeName=null,@paramdepartments='2'
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_User_READ_ALL]
	 @paramEmployeeId nvarchar(50) = null,
	 @paramEmployeeName nvarchar(50) = null,
	 @paramdepartments nvarchar(max) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @paramdepartments IS NULL
		SET @paramdepartments=''; 
    Declare @departments table (ID INT);

	INSERT INTO @departments SELECT  Item FROM dbo.SplitInts(@paramdepartments, ','); 

    -- Insert statements for procedure here
	SELECT  
	ROW_NUMBER() OVER(ORDER BY muser.EmployeeID ASC)  as RowIndex,
	muser.DateOfBirth,muser.DriverLicenseID,muser.email,muser.EmployeeID,muser.Gender,muser.ID_Center,
	muser.ID_Division,muser.ID_JobGrade,muser.ID_JobTitle,muser.ID_Section,muser.IDCardNumber,muser.IsAD,muser.JoinDate
	,muser.Name,muser.Nationality,muser.OutDate,muser.PhoneNumber,muser.Surname,
	usrRole.ID as UserRoleId,usrRole.ID_Role,usrRole.IsInstructor,usrRole.Password,usrRole.Remark,
	rol.ID as RoleId,rol.RoleDescription,rol.RoleName_EN,rol.RoleName_TH,
	dep.ID as ID_Department,dep.DepartmentID,dep.DepartmentName_EN,dep.DepartmentName_TH,dep.Description,
	muser.ID_Plant,plant.PlantDescription,plant.PlantID,plant.PlantName_EN,plant.PlantName_TH
	FROM   LDMS_M_User  muser WITH (NOLOCK) 
	LEFT OUTER JOIN LDMS_M_UserRole usrRole WITH (NOLOCK)  on muser.EmployeeID = usrRole.EmployeeID
	LEFT OUTER JOIN LDMS_M_Role rol  WITH (NOLOCK) on usrRole.ID_Role = rol.ID
	LEFT OUTER JOIN LDMS_M_Department dep  WITH (NOLOCK) on muser.ID_Department = dep.ID
	LEFT OUTER JOIN LDMS_M_Plant plant  WITH (NOLOCK) on muser.ID_Plant = plant.ID
	WHERE muser.IsActive =1
	AND (1 =  CASE WHEN @paramEmployeeId IS NOT NULL AND @paramEmployeeId <> '' AND @paramEmployeeId <> ' ' THEN
				CASE WHEN UPPER(muser.EmployeeID) like ''+ UPPER(@paramEmployeeId) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)
    AND (1 =  CASE WHEN @paramEmployeeName IS NOT NULL AND @paramEmployeeName <> '' AND @paramEmployeeName <> ' ' THEN
				CASE WHEN UPPER(muser.Name) like ''+ UPPER(@paramEmployeeName) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)
	AND (1 =  CASE WHEN @paramEmployeeName IS NOT NULL AND @paramEmployeeName <> '' AND @paramEmployeeName <> ' ' THEN
				CASE WHEN UPPER(muser.Surname) like ''+ UPPER(@paramEmployeeName) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)
	AND (1 =  CASE WHEN exists (select * from @departments dp)THEN
				CASE WHEN exists (select * from @departments dp where dp.ID= muser.ID_Department)  THEN 1 ELSE 0 END
			  ELSE 1 END)
END
GO


