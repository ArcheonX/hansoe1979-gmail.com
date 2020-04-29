-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
/*
declare @p10 dbo.CompetenceScore     
insert into @p10 values('5000001144')
insert into @p10 values('5010421485')
insert into @p10 values('5012032455') 
exec [dbo].[usp_CompetenceAnalytic_Score] @AnalyticId = 4,@CreateBy ='5000001144',@Scores =p10
*/
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_CompetenceAnalytic_Score]
	@AnalyticId INT, 
	@CreateBy  nvarchar(50), 
	@Scores CompetenceScore readonly
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION;
	BEGIN TRY
			 UPDATE [dbo].[LDMS_T_CompetenceAnalytic_Score]
			 SET  
				   [Score] = SC.Score
				  ,[UpdateDate] = getdate()
			 FROM [dbo].[LDMS_T_CompetenceAnalytic_Score]
			 JOIN @Scores SC 
			 ON [LDMS_T_CompetenceAnalytic_Score].ID_CompetenceKnowledgeTopic = sc.ID_CompetenceKnowledgeTopic
			 AND [LDMS_T_CompetenceAnalytic_Score].ID_CompetenceEmployee = sc.ID_CompetenceEmployee
			 WHERE [LDMS_T_CompetenceAnalytic_Score].ID_CompetenceAnalytic = @AnalyticId;
			 
 INSERT INTO [dbo].[LDMS_T_CompetenceAnalytic_Score] ([ID_CompetenceAnalytic] ,[ID_CompetenceKnowledgeTopic] ,[ID_CompetenceEmployee] ,[Score] ,[CreateBy] ,[CreateDate]           ,[UpdateDate])
 SELECT @AnalyticId ,sc.ID_CompetenceKnowledgeTopic, sc.ID_CompetenceEmployee,sc.Score,@CreateBy ,getdate() ,getdate()
 FROM @Scores sc 
 WHERE NOT EXISTS (SELECT * FROM [dbo].[LDMS_T_CompetenceAnalytic_Score] sm 
					where sm.ID_CompetenceAnalytic = @AnalyticId
					AND sm.ID_CompetenceKnowledgeTopic = SC.ID_CompetenceKnowledgeTopic
					AND sm.ID_CompetenceEmployee = SC.ID_CompetenceEmployee);


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
