USE [veraplus_ldms]
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalyticScore_READ_BY_AnalyticId]    Script Date: 5/2/2020 12:15:30 AM ******/
DROP PROCEDURE [dbo].[usp_CompetenceAnalyticScore_READ_BY_AnalyticId]
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalyticKnowledgeTopic_READ_BY_AnalyticId]    Script Date: 5/2/2020 12:15:30 AM ******/
DROP PROCEDURE [dbo].[usp_CompetenceAnalyticKnowledgeTopic_READ_BY_AnalyticId]
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalyticExpectatoin_READ_BY_AnalyticId]    Script Date: 5/2/2020 12:15:30 AM ******/
DROP PROCEDURE [dbo].[usp_CompetenceAnalyticExpectatoin_READ_BY_AnalyticId]
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalyticEmployee_READ_BY_AnalyticId]    Script Date: 5/2/2020 12:15:30 AM ******/
DROP PROCEDURE [dbo].[usp_CompetenceAnalyticEmployee_READ_BY_AnalyticId]
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_Update]    Script Date: 5/2/2020 12:15:30 AM ******/
DROP PROCEDURE [dbo].[usp_CompetenceAnalytic_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_Score]    Script Date: 5/2/2020 12:15:30 AM ******/
DROP PROCEDURE [dbo].[usp_CompetenceAnalytic_Score]
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_READ_BY_AnalyticId]    Script Date: 5/2/2020 12:15:30 AM ******/
DROP PROCEDURE [dbo].[usp_CompetenceAnalytic_READ_BY_AnalyticId]
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_READ_ALL]    Script Date: 5/2/2020 12:15:30 AM ******/
DROP PROCEDURE [dbo].[usp_CompetenceAnalytic_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_Create]    Script Date: 5/2/2020 12:15:30 AM ******/
DROP PROCEDURE [dbo].[usp_CompetenceAnalytic_Create]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Score]    Script Date: 5/2/2020 12:15:30 AM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic_Score]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]    Script Date: 5/2/2020 12:15:30 AM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Employee]    Script Date: 5/2/2020 12:15:30 AM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic_Employee]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic]    Script Date: 5/2/2020 12:15:30 AM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic]
GO 
/****** Object:  UserDefinedTableType [dbo].[CompetenceScore]    Script Date: 5/2/2020 12:15:30 AM ******/
--CREATE TYPE [dbo].[CompetenceScore] AS TABLE(
--	[ID_CompetenceKnowledgeTopic] [bigint] NULL,
--	[ID_CompetenceAnalytic] [int] NULL,
--	[ID_CompetenceEmployee] [nvarchar](50) NULL,
--	[Score] [int] NULL
--)
--GO
--/****** Object:  UserDefinedTableType [dbo].[EmployeeIdList]    Script Date: 5/2/2020 12:15:30 AM ******/
--CREATE TYPE [dbo].[EmployeeIdList] AS TABLE(
--	[EmployeeId] [nvarchar](50) NULL
--)
--GO
--/****** Object:  UserDefinedTableType [dbo].[TopicList]    Script Date: 5/2/2020 12:15:30 AM ******/
--CREATE TYPE [dbo].[TopicList] AS TABLE(
--	[ID_Topic] [bigint] NULL,
--	[ID_Course] [int] NULL,
--	[TopicName] [nvarchar](100) NULL,
--	[Expectatoin] [int] NULL
--)
--GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic]    Script Date: 5/2/2020 12:15:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CompetenceAnalytic](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_EmployeeManager] [nvarchar](50) NOT NULL,
	[CompetenceAnalyticName] [nvarchar](100) NOT NULL,
	[Criteria1] [nvarchar](100) NULL,
	[Criteria2] [nvarchar](100) NULL,
	[Criteria3] [nvarchar](100) NULL,
	[Criteria4] [nvarchar](100) NULL,
	[Criteria5] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[ID_Department] [int] NULL,
	[ID_JobGrade] [int] NULL,
	[Is_Active] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Employee]    Script Date: 5/2/2020 12:15:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CompetenceAnalytic_Employee](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_CompetenceAnalytic] [int] NOT NULL,
	[EmployeeID] [nvarchar](50) NOT NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[Is_Active] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]    Script Date: 5/2/2020 12:15:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_CompetenceAnalytic] [int] NOT NULL,
	[ID_Course] [int] NULL,
	[Expectatoin] [int] NULL,
	[KnowledgeTopicName] [nvarchar](100) NOT NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[Is_Active] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic_KnwldTopicr] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Score]    Script Date: 5/2/2020 12:15:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CompetenceAnalytic_Score](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_CompetenceAnalytic] [int] NOT NULL,
	[ID_CompetenceKnowledgeTopic] [int] NOT NULL,
	[ID_CompetenceEmployee] [nvarchar](50) NOT NULL,
	[Score] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic_Score] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_Create]    Script Date: 5/2/2020 12:15:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
/*
declare @p10 dbo.EmployeeIdList 
declare @p11 dbo.TopicList
insert into @p11 values(0,1,N'(HR-S001-01) Course Name1')
insert into @p11 values(0,11,N'(HR-S011-02) Course Name11')
insert into @p11 values(0,24,N'(LCO003) [ST-00001111kdfsdfsdfdsf]czxczcxzxc')
insert into @p11 values(0,0,N'TTTT')  
insert into @p10 values('5000001144')
insert into @p10 values('5010421485')
insert into @p10 values('5012032455') 
exec [dbo].[usp_CompetenceAnalytic_Create] @CompetenceName=N'Competence  Test',
@Criteria1=N'Limited Knowledge',@Criteria2=N'Have Knowledge but lack Skill',
@Criteria3=N'Have Knowledge with skilled',@Criteria4=N'Have Knowledge and skillful',@Criteria5=N'Professional Skilled & Can train the others',
@ID_Department=1,@ID_JobGrade=NULL,@ID_EmployeeManager=N'STT00001',@CreateBy=N'STT00001',@EmployeeTable=@p10,@Topics=@p11
*/
-- =============================================
CREATE   PROCEDURE [dbo].[usp_CompetenceAnalytic_Create]
	-- Add the parameters for the stored procedure here
	@CompetenceName nvarchar(50),
	@Criteria1 nvarchar(100),
	@Criteria2 nvarchar(100),
	@Criteria3 nvarchar(100),
	@Criteria4 nvarchar(100),
	@Criteria5 nvarchar(100),
	@ID_Department int = null,
	@ID_JobGrade int= null,
	@ID_EmployeeManager  nvarchar(50),
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

			INSERT INTO [dbo].[LDMS_T_CompetenceAnalytic](ID_EmployeeManager,[CompetenceAnalyticName],[Criteria1]
				   ,[Criteria2] ,[Criteria3],[Criteria4],[Criteria5],[CreateBy],[CreateDate] ,[ID_Department] ,[ID_JobGrade],[IS_ACTIVE])
			VALUES (@ID_EmployeeManager ,@CompetenceName ,@Criteria1  ,@Criteria2 ,@Criteria3 ,@Criteria4 ,@Criteria5 ,@CreateBy ,GETDATE()  ,@ID_Department ,@ID_JobGrade,1);
	
			SELECT @ID_CompetenceAnalytic =  SCOPE_IDENTITY();

			INSERT INTO [dbo].[LDMS_T_CompetenceAnalytic_Employee] ([ID_CompetenceAnalytic] ,[EmployeeID] ,[CreateBy] ,[CreateDate]  ,[IS_ACTIVE])
			SELECT @ID_CompetenceAnalytic ,EmployeeId ,@CreateBy ,GETDATE(), 1 FROM @EmployeeTable;

			INSERT INTO [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic] 
			([ID_CompetenceAnalytic] ,[ID_Course] ,[KnowledgeTopicName] ,[CreateBy] ,[CreateDate],[IS_ACTIVE],[Expectatoin])
			SELECT @ID_CompetenceAnalytic ,ID_Course,TopicName,@CreateBy ,GETDATE(), 1,Expectatoin  FROM @Topics;

			--INSERT INTO [dbo].[LDMS_T_CompetenceAnalytic_Expectatoin] ([ID_CompetenceAnalytic] ,[ID_CompetenceKnowledgeTopic] ,[Score] ,[CreateBy] ,[CreateDate],[UpdateDate])
			--SELECT @ID_CompetenceAnalytic ,sc.ID_CompetenceKnowledgeTopic,sc.Score,@CreateBy ,getdate() ,getdate()
			--FROM @Expectatoins sc 


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
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_READ_ALL]    Script Date: 5/2/2020 12:15:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC [dbo].[usp_CompetenceAnalytic_READ_ALL] 
-- =============================================
CREATE   PROCEDURE [dbo].[usp_CompetenceAnalytic_READ_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(ORDER BY ID ASC)  as RowIndex,
	ID as ID_Analytic,
	ID_EmployeeManager,
	CompetenceAnalyticName,
	Criteria1,
	Criteria2,
	Criteria3,
	Criteria4,
	Criteria5,
	ID_Department,
	ID_JobGrade
	FROM LDMS_T_CompetenceAnalytic WITH (NOLOCK) WHERE Is_Active=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_READ_BY_AnalyticId]    Script Date: 5/2/2020 12:15:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC [dbo].[usp_CompetenceAnalytic_READ_BY_AnalyticId]  1
-- =============================================
CREATE   PROCEDURE [dbo].[usp_CompetenceAnalytic_READ_BY_AnalyticId] 
@AnalyticId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,
	ID as ID_Analytic,
	ID_EmployeeManager,
	CompetenceAnalyticName,
	Criteria1,
	Criteria2,
	Criteria3,
	Criteria4,
	Criteria5,
	ID_Department,
	ID_JobGrade
	FROM LDMS_T_CompetenceAnalytic WITH (NOLOCK) where ID = @AnalyticId;

END
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_Score]    Script Date: 5/2/2020 12:15:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
CREATE   PROCEDURE [dbo].[usp_CompetenceAnalytic_Score]
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
			ON [LDMS_T_CompetenceAnalytic_Score].ID_CompetenceKnowledgeTopic = sc.ID_CompetenceKnowledgeTopic AND [LDMS_T_CompetenceAnalytic_Score].ID_CompetenceEmployee = sc.ID_CompetenceEmployee 
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
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_Update]    Script Date: 5/2/2020 12:15:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
/*
declare @p12 dbo.EmployeeIdList
insert into @p12 values(N'ST00100019')
insert into @p12 values(N'ST00100020')
insert into @p12 values(N'ST00100021')

declare @p13 dbo.TopicList
insert into @p13 values(0,2,N'(HR-S002-02) Course Name2')
insert into @p13 values(0,15,N'(HR-S015-03) Course Name15')
insert into @p13 values(0,3,N'(HR-S003-03) Course Name3')
insert into @p13 values(0,7,N'(HR-S007-01) Course Name7')
insert into @p13 values(0,1,N'(HR-S001-01) Course Name1')
insert into @p13 values(0,11,N'(HR-S011-02) Course Name11')
insert into @p13 values(0,24,N'(LCO003) [ST-00001111kdfsdfsdfdsf]czxczcxzxc')
exec [dbo].[usp_CompetenceAnalytic_Update] @ID_CompetenceAnalytic=4,@CompetenceName=N'Competence  Update',@Criteria1=N'Limited Knowledge',@Criteria2=N'Have Knowledge but lack Skill',@Criteria3=N'Have Knowledge with skilled',@Criteria4=N'Have Knowledge and skillful',@Criteria5=N'Professional Skilled & Can train the others',@ID_Department=1,@ID_JobGrade=4,@ID_EmployeeManager=N'STT00001',@UpdateBy=N'STT00001',@EmployeeTable=@p12,@Topics=@p13
*/
-- =============================================
CREATE   PROCEDURE [dbo].[usp_CompetenceAnalytic_Update]
	-- Add the parameters for the stored procedure here
	@ID_CompetenceAnalytic INT,
	@CompetenceName nvarchar(50),
	@Criteria1 nvarchar(100),
	@Criteria2 nvarchar(100),
	@Criteria3 nvarchar(100),
	@Criteria4 nvarchar(100),
	@Criteria5 nvarchar(100),
	@ID_Department int = null,
	@ID_JobGrade int= null,
	@ID_EmployeeManager  nvarchar(50),
	@UpdateBy  nvarchar(50),
	@EmployeeTable EmployeeIdList readonly,
	@Topics TopicList readonly 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION;
	BEGIN TRY  		
			UPDATE [dbo].[LDMS_T_CompetenceAnalytic_Employee]
			SET Is_Active = 0 
			WHERE [ID_CompetenceAnalytic] = @ID_CompetenceAnalytic and Is_Active =1
			AND NOT EXISTS (SELECT * FROM @EmployeeTable TT WHERE TT.EmployeeID = [LDMS_T_CompetenceAnalytic_Employee].EmployeeID AND [LDMS_T_CompetenceAnalytic_Employee].Is_Active =1)
			
			UPDATE [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]
			SET Is_Active = 0
			WHERE [ID_CompetenceAnalytic] = @ID_CompetenceAnalytic and Is_Active =1
			AND NOT EXISTS (SELECT * FROM @Topics TT  WHERE TT.ID_Topic = [LDMS_T_CompetenceAnalytic_KnwldTopic].ID AND [LDMS_T_CompetenceAnalytic_KnwldTopic].Is_Active =1)
			
			UPDATE [dbo].[LDMS_T_CompetenceAnalytic]
			   SET [CompetenceAnalyticName] = @CompetenceName
				  ,[Criteria1] = @Criteria1
				  ,[Criteria2] = @Criteria2
				  ,[Criteria3] = @Criteria3
				  ,[Criteria4] = @Criteria4
				  ,[Criteria5] = @Criteria5 
				  ,[UpdateBy] = @UpdateBy
				  ,[UpdateDate] = GETDATE()
				  ,[ID_Department] = @ID_Department
				  ,[ID_JobGrade] = @ID_JobGrade
				  ,[Is_Active] = 1			 	
			 WHERE ID = @ID_CompetenceAnalytic and Is_Active =1;  


			UPDATE [LDMS_T_CompetenceAnalytic_KnwldTopic]
			SET [Expectatoin] =TB.Expectatoin
				 ,[UpdateBy] = @UpdateBy
				 ,[UpdateDate] = GETDATE()
			FROM [LDMS_T_CompetenceAnalytic_KnwldTopic] JOIN  @Topics  TB ON [LDMS_T_CompetenceAnalytic_KnwldTopic].ID = TB.ID_Topic AND [LDMS_T_CompetenceAnalytic_KnwldTopic].ID_CompetenceAnalytic = @ID_CompetenceAnalytic
			WHERE ISNULL(TB.ID_Topic,0) > 0;

			INSERT INTO [dbo].[LDMS_T_CompetenceAnalytic_Employee] ([ID_CompetenceAnalytic] ,[EmployeeID] ,[CreateBy] ,[CreateDate]  ,[IS_ACTIVE])
			SELECT @ID_CompetenceAnalytic ,TB.EmployeeId ,@UpdateBy ,GETDATE(), 1 FROM @EmployeeTable TB
			WHERE NOT EXISTS (SELECT * FROM [LDMS_T_CompetenceAnalytic_Employee] TT WHERE TT.[ID_CompetenceAnalytic]= @ID_CompetenceAnalytic AND TT.EmployeeID=TB.EmployeeId AND TT.Is_Active =1)

			INSERT INTO [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]  ([ID_CompetenceAnalytic] ,[ID_Course] ,[KnowledgeTopicName] ,[CreateBy] ,[CreateDate],[IS_ACTIVE],[Expectatoin])
			SELECT @ID_CompetenceAnalytic ,TB.ID_Course,TB.TopicName,@UpdateBy ,GETDATE(), 1,Expectatoin FROM @Topics TB
			WHERE NOT EXISTS (SELECT * FROM [LDMS_T_CompetenceAnalytic_KnwldTopic] TT WHERE TT.[ID_CompetenceAnalytic]= @ID_CompetenceAnalytic AND TT.ID = TB.ID_Topic AND TT.Is_Active =1);

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
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalyticEmployee_READ_BY_AnalyticId]    Script Date: 5/2/2020 12:15:30 AM ******/
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
CREATE   PROCEDURE [dbo].[usp_CompetenceAnalyticEmployee_READ_BY_AnalyticId] 
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
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalyticExpectatoin_READ_BY_AnalyticId]    Script Date: 5/2/2020 12:15:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC [dbo].[usp_CompetenceAnalyticExpectatoin_READ_BY_AnalyticId] 1
-- =============================================
CREATE   PROCEDURE [dbo].[usp_CompetenceAnalyticExpectatoin_READ_BY_AnalyticId] 
@AnalyticId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER( ORDER BY ex.ID ASC)  as RowIndex,
	ex.ID,
	topc.ID_CompetenceAnalytic,  
	topc.ID AS  [ID_CompetenceKnowledgeTopic],
	ISNULL([Score],5) AS [Score]
	FROM LDMS_T_CompetenceAnalytic_KnwldTopic topc WITH (NOLOCK) 
	LEFT JOIN LDMS_T_CompetenceAnalytic_Expectatoin ex  WITH (NOLOCK)  on ex.ID_CompetenceKnowledgeTopic = topc.ID   and topc.ID_CompetenceAnalytic = ex.ID_CompetenceAnalytic and topc.Is_Active =1 
	where topc.ID_CompetenceAnalytic = @AnalyticId and topc.Is_Active =1 

END
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalyticKnowledgeTopic_READ_BY_AnalyticId]    Script Date: 5/2/2020 12:15:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC [dbo].[usp_CompetenceAnalyticKnowledgeTopic_READ_BY_AnalyticId] 1
-- =============================================
CREATE   PROCEDURE [dbo].[usp_CompetenceAnalyticKnowledgeTopic_READ_BY_AnalyticId] 
@AnalyticId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,
	KnwldTopic.ID,
	KnwldTopic.ID_CompetenceAnalytic, 
	KnwldTopic.ID_Course,
	KnwldTopic.KnowledgeTopicName,
	ISNULL(KnwldTopic.Expectatoin,5) AS Expectatoin
	FROM LDMS_T_CompetenceAnalytic_KnwldTopic KnwldTopic WITH (NOLOCK)
	where KnwldTopic.ID_CompetenceAnalytic = @AnalyticId  and KnwldTopic.Is_Active = 1;

END
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalyticScore_READ_BY_AnalyticId]    Script Date: 5/2/2020 12:15:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC [dbo].[usp_CompetenceAnalyticScore_READ_BY_AnalyticId] 1
-- =============================================
CREATE   PROCEDURE [dbo].[usp_CompetenceAnalyticScore_READ_BY_AnalyticId] 
@AnalyticId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER( ORDER BY TB.ID ASC)  as RowIndex,TB.* FROM
	(	
		SELECT
		score.ID,
		score.ID_CompetenceAnalytic, 
		score.ID_CompetenceKnowledgeTopic,
		score.ID_CompetenceEmployee,
		score.Score,
		CAST(0 AS INT) as MinScore,
		CAST(5 AS INT) as MaxScore
		FROM LDMS_T_CompetenceAnalytic_Score score WITH (NOLOCK) 
		LEFT OUTER JOIN LDMS_T_CompetenceAnalytic_Employee emp WITH (NOLOCK)  on score.ID_CompetenceEmployee = emp.EmployeeID and emp.Is_Active =1 and emp.ID_CompetenceAnalytic = score.ID_CompetenceAnalytic
		LEFT OUTER JOIN LDMS_T_CompetenceAnalytic_KnwldTopic topc WITH (NOLOCK)  on score.ID_CompetenceKnowledgeTopic = topc.ID and emp.Is_Active =1 and topc.ID_CompetenceAnalytic = score.ID_CompetenceAnalytic and topc.Is_Active =1 
		where score.ID_CompetenceAnalytic = @AnalyticId AND ISNULL(topc.ID_Course,0) = 0
		UNION ALL
		SELECT
		0 AS ID,
		emp.ID_CompetenceAnalytic, 
		topc.ID AS ID_CompetenceKnowledgeTopic,
		emp.EmployeeID AS ID_CompetenceEmployee,

		(CASE WHEN score.Score IS NOT NULL THEN score.Score
		      WHEN res.LearningResult = 99 OR res.LearningResult = 30 THEN 0
			 WHEN res.LearningResult = 70 THEN 3
			 ELSE 0 END) Score,
		(CASE WHEN res.LearningResult = 99 OR res.LearningResult = 30 THEN 0
			 WHEN res.LearningResult = 70 THEN 3
			 ELSE 0 END) AS MinScore,

		(CASE WHEN res.LearningResult = 99 OR res.LearningResult = 30 THEN 2
			 WHEN res.LearningResult = 70 THEN 5
			 ELSE 0 END) AS MaxScore 
		FROM LDMS_T_CompetenceAnalytic_Employee emp WITH (NOLOCK)
		LEFT OUTER JOIN LDMS_T_CompetenceAnalytic_KnwldTopic topc WITH (NOLOCK)  on  topc.ID_CompetenceAnalytic = emp.ID_CompetenceAnalytic and topc.Is_Active =1 
		LEFT OUTER JOIN LDMS_T_ClassAttendAndResult res WITH (NOLOCK) on topc.ID_Course = res.ID_Course and emp.EmployeeID = res.EmployeeID
		LEFT OUTER JOIN LDMS_T_CompetenceAnalytic_Score score WITH (NOLOCK) on score.ID_CompetenceEmployee = emp.EmployeeID and emp.Is_Active =1 and emp.ID_CompetenceAnalytic = score.ID_CompetenceAnalytic
		where emp.ID_CompetenceAnalytic = @AnalyticId AND ISNULL(topc.ID_Course,0)<> 0 and emp.Is_Active =1 
	) TB
	
	--if pass default = 3 can changes 3,4,5
	--if not pass default = 0 can change 0,1,2
	--if no result fixed  = 0
END
GO
