USE [veraplus_ldms]
GO

/****** Object:  StoredProcedure [dbo].[usp_RoleMenu_READ_By_Role]    Script Date: 4/6/2020 11:09:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- exec [usp_RoleMenu_READ_By_Role] 1
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_RoleMenu_READ_By_Role]
	-- Add the parameters for the stored procedure here
	@paramRoleId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 
	 SELECT
	 ROW_NUMBER() OVER(ORDER BY subm.ID  ASC)  as RowIndex,
	 subm.ID as ID_SubModule,
	 subm.Description as 'Description',
	 subm.Icon,
	 subm.Sequence,	 
	 subm.SubModuleID,
	 subm.SubModuleName_EN,
	 subm.SubModuleName_TH,
	 subm.URL AS SubModule_URL,

	 mol.ID AS ID_Module,
	 mol.ModuleID,
	 mol.ModuleName_EN,
	 mol.ModuleName_TH,
	 mol.Sequence as Module_Sequence,
	 mol.URL as Module_URL,
	 
	 rolm.ID as RolePermissionId,
	 rolm.PermissionType,
	 rolm.RolePermissionDescription, 

	 rol.ID as RoleId,
	 rol.RoleDescription,
	 rol.RoleName_EN,
	 rol.RoleName_TH  
	 FROM 
	 LDMS_M_RolePermission rolm   WITH (NOLOCK) 
	 INNER JOIN LDMS_M_Role rol   WITH (NOLOCK)  on rolm.ID_Role = rol.ID AND rol.IsActive =1
	 INNER JOIN LDMS_M_SubModule subm  WITH (NOLOCK)  on rolm.ID_Module = subm.ID and subm.IsActive =1
	 INNER JOIN LDMS_M_Module mol WITH (NOLOCK)  on subm.ID_Module = mol.ID and mol.IsActive =1
	 WHERE rolm.IsActive = 1 and rol.ID = @paramRoleId
END
GO


