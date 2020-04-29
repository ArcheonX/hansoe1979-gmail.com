--USE [veraplus_ldms]
--GO

/****** Object:  StoredProcedure [dbo].[usp_Center_READ_ALL]    Script Date: 4/6/2020 11:07:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC [dbo].[usp_CompetenceAnalyticEmployee_READ_BY_AnalyticId] 4
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_CompetenceAnalyticEmployee_READ_BY_AnalyticId] 
@AnalyticId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY Employee.ID ORDER BY Employee.ID ASC)  as RowIndex,
	Employee.ID,
	Employee.ID_CompetenceAnalytic, 
	Employee.EmployeeID,

	muser.DateOfBirth,muser.DriverLicenseID,muser.email,muser.EmployeeID,muser.Gender,muser.IDCardNumber,muser.IsAD,muser.JoinDate ,muser.Name,
	muser.Nationality,muser.OutDate,muser.PhoneNumber,muser.Surname, 
	muser.ID_Section,
	muser.ID_JobGrade,
	muser.ID_JobTitle  

	--usrRole.ID as UserRoleId,usrRole.ID_Role,usrRole.IsInstructor,usrRole.Password,usrRole.Remark,usrRole.passwordSalt,usrRole.IsSectionHead,usrRole.IsAllowGPP as Is_AcceptGPP

	FROM LDMS_T_CompetenceAnalytic_Employee Employee WITH (NOLOCK)
	LEFT OUTER JOIN LDMS_M_User muser WITH (NOLOCK) on  Employee.EmployeeID = muser.EmployeeID 
	LEFT OUTER JOIN LDMS_M_Role rol  WITH (NOLOCK) on muser.ID_Role = rol.ID
	where Employee.ID_CompetenceAnalytic = @AnalyticId and Employee.Is_Active = 1;

END
GO


