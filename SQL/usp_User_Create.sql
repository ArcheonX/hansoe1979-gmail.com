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
CREATE OR ALTER   PROCEDURE [dbo].[usp_User_Create]
	-- Add the parameters for the stored procedure here 
	@EmployeeId nvarchar(50),
	@EmployeeName nvarchar(50),
	@EmployeeSurName nvarchar(50),
	@JobGradeId INT,
	@JobTitleId INT,
	@CenterId INT,
	@DivisionId INT,
	@DepartmentId INT,
	@SectionId INT,
	@RoleId INT,
	@IsInstructer INT,
	@IsSectionHead INT,
	@Nationality nvarchar(50)  =null,
	@Gender nvarchar(10)  =null,
	@Password  nvarchar(1024),
	@PasswordSalt  nvarchar(1024),
	@Remark nvarchar(250)  =null,
	@PhoneNumber  nvarchar(50)  =null,
	@Email  nvarchar(50)  =null,
	@CreateBy  nvarchar(50)  =null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @PlantId INT;
	DECLARE @JoinDate DATETIME= GETDATE();
	SELECT @PlantId = ID_Plant FROM LDMS_M_Center  WHERE ID = @CenterId;
	IF EXISTS (SELECT * FROM LDMS_M_User WHERE EmployeeID = @EmployeeId)
		RAISERROR (100,-1,-1, 'An Employee ID already exists');  

BEGIN TRANSACTION;
BEGIN TRY
	INSERT INTO [dbo].[LDMS_M_User]
           ([EmployeeID]
           ,[IsAD]
           ,[DriverLicenseID]
           ,[IDCardNumber]
           ,[Gender]
           ,[Name]
           ,[Surname]
           ,[Nationality]
           ,[ID_JobGrade]
           ,[ID_JobTitle]
           ,[ID_Plant]
           ,[ID_Center]
           ,[ID_Division]
           ,[ID_Department]
           ,[JoinDate]
           ,[OutDate]
           ,[DateOfBirth]
           ,[PhoneNumber]
           ,[Email]
           ,[ProfilePath]
           ,[CreateBy]
           ,[CreateDate]
           ,[UpdateBy]
           ,[UpdateDate]
           ,[IsActive])
     VALUES
           (@EmployeeId
           ,0
           ,null
           ,null
           ,@Gender
           ,@EmployeeName
           ,@EmployeeSurName
           ,@Nationality
           ,@JobGradeId
           ,@JobTitleId
           ,@PlantId
           ,@CenterId
           ,@DivisionId
           ,@DepartmentId
           ,@JoinDate
           ,null
           ,null
           ,@PhoneNumber
           ,@Email
           ,null
           ,@CreateBy
           ,null
           ,null
           ,null
           ,1);

INSERT INTO [dbo].[LDMS_M_UserRole]
           ([EmployeeID]
           ,[ID_Role]
           ,[Password]
           ,[IsInstructor]
           ,[IsSectionHead]
           ,[ID_Section]
           ,[Remark]
           ,[CreateBy]
           ,[CreateDate] 
           ,[IsActive]
           ,[PasswordSalt]
		   ,[IsForceChangePass])
     VALUES
           (@EmployeeId
           ,@RoleId
           ,@Password
           ,@IsInstructer
           ,@IsSectionHead
           ,@SectionId
           ,@Remark
           ,@CreateBy
           ,GETDATE() 
           ,1
           ,@PasswordSalt,
		   0);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
	  ROLLBACK TRANSACTION;
	  SELECT -- As many or few of these as you care to return
		ERROR_NUMBER() AS ErrorNumber
	   ,ERROR_SEVERITY() AS ErrorSeverity
	   ,ERROR_STATE() AS ErrorState
	   ,ERROR_PROCEDURE() AS ErrorProcedure
	   ,ERROR_LINE() AS ErrorLine
	   ,ERROR_MESSAGE() AS ErrorMessage;
	END CATCH
END
