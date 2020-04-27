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
CREATE OR ALTER PROCEDURE [dbo].[usp_CompetenceAnalytic_Create]
	-- Add the parameters for the stored procedure here
	@CompetenceName nvarchar(50),
	@Criteria1 nvarchar(100),
	@Criteria2 nvarchar(100),
	@Criteria3 nvarchar(100),
	@Criteria4 nvarchar(100),
	@Criteria5 nvarchar(100),
	@ID_Department int = null,
	@ID_JobGrade int= null,
	@CreateBy  nvarchar(50),
	@EmployeeTable EmployeeIdList readonly,
	@Topics TopicList readonly
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION;
	BEGIN TRY
			DECLARE @ID_CompetenceAnalytic INT;
			DECLARE @ID_EmployeeManager nvarchar(50);

			SET @ID_EmployeeManager = @CreateBy;

			INSERT INTO [dbo].[LDMS_T_CompetenceAnalytic]([ID_EmployeeManager],[CompetenceAnalyticName],[Criteria1]
				   ,[Criteria2] ,[Criteria3],[Criteria4],[Criteria5],[CreateBy],[CreateDate] ,[ID_Department] ,[ID_JobGrade],[IS_ACTIVE])
			VALUES (0 ,@CompetenceName ,@Criteria1  ,@Criteria2 ,@Criteria3 ,@Criteria4 ,@Criteria5 ,@CreateBy ,GETDATE()  ,@ID_Department ,@ID_JobGrade,1);
	
			SELECT @ID_CompetenceAnalytic =  SCOPE_IDENTITY();

			INSERT INTO [dbo].[LDMS_T_CompetenceAnalytic_Employee] ([ID_CompetenceAnalytic] ,[EmployeeID] ,[CreateBy] ,[CreateDate]  ,[IS_ACTIVE])
			SELECT @ID_CompetenceAnalytic ,EmployeeId ,@CreateBy ,GETDATE(), 1 FROM @EmployeeTable;

			INSERT INTO [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic] ([ID_CompetenceAnalytic] ,[ID_Course] ,[KnowledgeTopicName] ,[CreateBy] ,[CreateDate],[IS_ACTIVE])
			SELECT @ID_CompetenceAnalytic ,ID_Course,TopicName,@CreateBy ,GETDATE(), 1 FROM @Topics; 
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
GO
