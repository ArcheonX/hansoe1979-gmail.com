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
-- EXEC [dbo].[usp_User_READ_BY_DepartmentId] 22
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_User_READ_BY_DepartmentId]
	-- Add the parameters for the stored procedure here
	@param_DepartmentId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON; 

SELECT  
	ROW_NUMBER() OVER(ORDER BY muser.EmployeeID ASC)  as RowIndex,
	muser.DateOfBirth,muser.DriverLicenseID,muser.email,muser.EmployeeID,muser.Gender,muser.IDCardNumber,muser.IsAD,muser.JoinDate ,muser.Name,
	muser.Nationality,muser.OutDate,muser.PhoneNumber,muser.Surname, 
	usrRole.ID_Section,
	muser.ID_JobGrade,
	muser.ID_JobTitle,



	usrRole.ID as UserRoleId,usrRole.ID_Role,usrRole.IsInstructor,usrRole.Password,usrRole.Remark,usrRole.passwordSalt,usrRole.IsSectionHead,usrRole.IsAllowGPP as Is_AcceptGPP,
	
	rol.ID as RoleId,rol.RoleDescription,rol.RoleName_EN,rol.RoleName_TH,
	
	Plant.ID as ID_Plant,Plant.PlantID,Plant.PlantName_EN,Plant.PlantName_TH,Plant.PlantDescription AS PlantDescription,

	Center.ID as ID_Center,Center.CenterID,Center.CenterName_EN,Center.CenterName_TH,Center.Description AS CenterDescription,

	Division.ID as ID_Division,Division.DivisionID,Division.DivisionName_EN,Division.DivisionName_TH,Division.Description AS DivisionDescription,

	dep.ID as ID_Department,dep.DepartmentID,dep.DepartmentName_EN,dep.DepartmentName_TH,dep.Description AS DepartmentDescription 
	
	--section.ID as ID_Section,section.SectionID,section.SectionName_EN,section.SectionName_TH,section.Description AS SectionDescription,

	----muser.ID_Plant,plant.PlantDescription,plant.PlantID,plant.PlantName_EN,plant.PlantName_TH,

	--grade.JobGradeID, grade.ID as ID_JobGrade,grade.JobGradeName_EN,grade.JobGradeName_TH,grade.Description  AS JobGradeDescription,

	--title.JobTitleID, title.ID as ID_JobTitle,title.JobTitleName_EN,title.JobTitleName_TH,title.Description  AS JobTitleDescription


	FROM LDMS_M_User  muser WITH (NOLOCK) 
	LEFT OUTER JOIN LDMS_M_UserRole usrRole WITH (NOLOCK)  on muser.EmployeeID = usrRole.EmployeeID
	LEFT OUTER JOIN LDMS_M_Role rol  WITH (NOLOCK) on usrRole.ID_Role = rol.ID
	LEFT OUTER JOIN LDMS_M_Plant plant  WITH (NOLOCK) on muser.ID_Plant = plant.ID
	LEFT OUTER JOIN LDMS_M_Center Center  WITH (NOLOCK) on muser.ID_Center = Center.ID
	LEFT OUTER JOIN LDMS_M_Division Division  WITH (NOLOCK) on muser.ID_Division = Division.ID 
	LEFT OUTER JOIN LDMS_M_Department dep  WITH (NOLOCK) on muser.ID_Department = dep.ID
	--LEFT OUTER JOIN LDMS_M_Section section  WITH (NOLOCK) on usrRole.ID_Section = section.ID
	--LEFT OUTER JOIN LDMS_M_JobGrade grade  WITH (NOLOCK) on muser.ID_JobGrade = grade.ID	
	--LEFT OUTER JOIN LDMS_M_JobTitle title  WITH (NOLOCK) on muser.ID_JobTitle = title.ID
	WHERE dep.DepartmentID = @param_DepartmentId AND muser.IsActive =1

END
GO


