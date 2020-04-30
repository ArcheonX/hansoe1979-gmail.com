-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
/*
 declare @p3 dbo.CompetenceScore
insert into @p3 values(5,2,N'5000001144',2)
insert into @p3 values(5,2,N'5010421485',3)
insert into @p3 values(5,2,N'5012032455',3)
insert into @p3 values(6,2,N'5000001144',4)
insert into @p3 values(6,2,N'5010421485',5)
insert into @p3 values(6,2,N'5012032455',4)
insert into @p3 values(7,2,N'5000001144',2)
insert into @p3 values(7,2,N'5010421485',3)
insert into @p3 values(7,2,N'5012032455',1)
insert into @p3 values(8,2,N'5000001144',0)
insert into @p3 values(8,2,N'5010421485',0)
insert into @p3 values(8,2,N'5012032455',0)

declare @p4 dbo.CompetenceExpectatoin
insert into @p4 values(5,2,5)
insert into @p4 values(6,2,5)
insert into @p4 values(7,2,5)
insert into @p4 values(8,2,0)

exec [dbo].[usp_CompetenceAnalytic_Score] @AnalyticId=2,@CreateBy=N'STT00001',@Scores=@p3,@Expectatoins=@p4
*/
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_CompetenceAnalytic_Score]
	@AnalyticId INT, 
	@CreateBy  nvarchar(50), 
	@Scores CompetenceScore readonly,
	@Expectatoins CompetenceExpectatoin readonly
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
	    
		UPDATE [dbo].[LDMS_T_CompetenceAnalytic_Expectatoin]
		SET  
		   [Score] = SC.Score
		  ,[UpdateDate] = getdate()
		FROM [dbo].[LDMS_T_CompetenceAnalytic_Expectatoin]
		JOIN @Expectatoins SC 
		ON [LDMS_T_CompetenceAnalytic_Expectatoin].ID_CompetenceKnowledgeTopic = sc.ID_CompetenceKnowledgeTopic 
		WHERE [LDMS_T_CompetenceAnalytic_Expectatoin].ID_CompetenceAnalytic = @AnalyticId;

		INSERT INTO [dbo].[LDMS_T_CompetenceAnalytic_Expectatoin] ([ID_CompetenceAnalytic] ,[ID_CompetenceKnowledgeTopic] ,[Score] ,[CreateBy] ,[CreateDate]           ,[UpdateDate])
		SELECT @AnalyticId ,sc.ID_CompetenceKnowledgeTopic,sc.Score,@CreateBy ,getdate() ,getdate()
		FROM @Scores sc 
		WHERE NOT EXISTS (SELECT * FROM [dbo].[LDMS_T_CompetenceAnalytic_Expectatoin] sm 
							where sm.ID_CompetenceAnalytic = @AnalyticId
							AND sm.ID_CompetenceKnowledgeTopic = SC.ID_CompetenceKnowledgeTopic); 


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
