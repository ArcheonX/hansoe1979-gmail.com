--USE [veraplus_ldms]
--GO
DECLARE @sql VARCHAR(MAX)
SET @sql=''
SELECT @sql=@sql+'drop procedure ['+name +'];' FROM sys.objects
WHERE type = 'p' AND  is_ms_shipped = 0
exec(@sql);

/****** Object:  StoredProcedure [dbo].[sp_M_Amphur_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_M_Amphur_Select]
	@PROVINCE_ID int
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [AMPHUR_ID]
      ,[AMPHUR_CODE]
      ,[AMPHUR_NAME]
      ,[AMPHUR_NAME_ENG]
      ,[GEO_ID]
      ,[PROVINCE_ID]
	FROM [dbo].[LDMS_M_Amphurs]
	WHERE [PROVINCE_ID] = @PROVINCE_ID
	ORDER BY [AMPHUR_NAME]



END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_CodeLookUp_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_M_CodeLookUp_Select]
	@TableName nvarchar(50),
	@FieldName nvarchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [ID]
      ,[TableName]
      ,[FieldName]
      ,[Code]
      ,[StateName]
      ,[Sequence]
      ,[Description]
      ,[IsDefault]
	FROM [dbo].[LDMS_M_CodeLookUp]
	WHERE [IsActive] = 1 AND [TableName] = @TableName AND [FieldName] = @FieldName
	ORDER BY [Sequence] ASC


END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Course_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_M_Course_Insert]
			@paramCourseName nvarchar(50)
           ,@paramID_LearnMethod int
           ,@paramID_CourseType int
           ,@paramObjective nvarchar(200)
           ,@paramDescription nvarchar(200)
           ,@paramOutLine nvarchar(200)
           ,@paramIsRefreshment int
           ,@paramRefreshmentPeriod int
           ,@paramRefreshmentUnit nvarchar(10)
           ,@paramTargetEmployeeID EmployeeIdList REadonly
           ,@paramID_PlantTarget int
           ,@paramID_CenterTarget int
           ,@paramID_DivisionTarget int
           ,@paramID_DepartmentTarget int
           ,@paramID_SectionTarget int
           ,@paramJobGradeTargetID EmployeeIdList REadonly
           ,@paramJobTitleTargetID EmployeeIdList REadonly
           ,@paramID_DepartmentCreate int
           ,@paramCreateBy nvarchar(50)
           
           
           ,@paramIsActive tinyint
AS
BEGIN
	Declare @paramCourseID nvarchar(50)
	DEclare @IDCOurse int
	SET NOCOUNT ON;
	set @paramCourseID = null
	SET @paramCourseID =  dbo.[genCourseID](@paramID_CourseType,@paramID_DepartmentCreate);
	

    INSERT INTO [dbo].[LDMS_M_Course]
           ([CourseID]
           ,[CourseName]
           ,[ID_LearnMethod]
           ,[ID_CourseType]
           ,[Objective]
           ,[Description]
           ,[OutLine]
           ,[IsRefreshment]
           ,[RefreshmentPeriod]
           ,[RefreshmentUnit]
           --,[TargetEmployeeID]
           ,[ID_PlantTarget]
           ,[ID_CenterTarget]
           ,[ID_DivisionTarget]
           ,[ID_DepartmentTarget]
           ,[ID_SectionTarget]
           --,[JobGradeTargetID]
           --,[JobTitleTargetID]
           ,[ID_DepartmentCreate]
           ,[CreateBy]
           ,[CreateDate]
           ,[UpdateBy]
           ,[UpdateDate]
           ,[IsActive])
     VALUES
           (@paramCourseID			
			,@paramCourseName
			,@paramID_LearnMethod
			,@paramID_CourseType		
			,@paramObjective		
			,@paramDescription		
			,@paramOutLine			
			,@paramIsRefreshment		
			,@paramRefreshmentPeriod	
			,@paramRefreshmentUnit		
			--,@paramTargetEmployeeID		
			,@paramID_PlantTarget		
			,@paramID_CenterTarget		
			,@paramID_DivisionTarget	
			,@paramID_DepartmentTarget	
			,@paramID_SectionTarget		
			--,@paramJobGradeTargetID		
			--,@paramJobTitleTargetID		
			,@paramID_DepartmentCreate	
			,@paramCreateBy			
			,getdate()		
			,@paramCreateBy			
			,getdate()		
			,@paramIsActive)

	SELECT @IDCOurse = ID from [LDMS_M_Course] where CourseID =  @paramCourseID
	INSERT INTO [dbo].[LDMS_T_CourseEmployee]
           ([ID_Course]
           ,[EmployeeID]
           ,[CreateDateTime])
    Select @IDCOurse as [ID_Course] ,[EmployeeId] as [EmployeeID], getdate() as [CreateDateTime]
	from @paramTargetEmployeeID

	INSERT INTO [dbo].[LDMS_T_CourseJobGrade]
           ([ID_Course]
           ,[ID_JobGrade]
           ,[CreateDateTime])
	select @IDCOurse as [ID_Course],[EmployeeId] as [ID_JobGrade], getdate() as [CreateDateTime]
	from @paramJobGradeTargetID

	INSERT INTO [dbo].[LDMS_T_CourseJobTitle]
           ([ID_Course]
           ,[ID_JobTitle]
           ,[CreateDateTime])
	select @IDCOurse as [ID_Course],[EmployeeId] as [ID_JobTitle], getdate() as [CreateDateTime]
	from @paramJobTitleTargetID

	 SELECT [CourseID]
      ,[ID]
      ,[CourseName]
      ,[ID_LearnMethod]
      ,[ID_CourseType]
      ,[Objective]
      ,[Description]
      ,[OutLine]
      ,[IsRefreshment]
      ,[RefreshmentPeriod]
      ,[RefreshmentUnit]
      ,[ID_PlantTarget]
      ,[ID_CenterTarget]
      ,[ID_DivisionTarget]
      ,[ID_DepartmentTarget]
      ,[ID_SectionTarget]
      ,[ID_DepartmentCreate]
      ,[CreateBy]
      ,[CreateDate]
      ,[UpdateBy]
      ,[UpdateDate]
      ,[IsActive]
      ,[TargetEmployeeID]
      ,[TargetJobgrade]
      ,[TargetJobTitle]
  FROM [dbo].[VW_M_Course_Display] where id= @IDCOurse 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Course_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_Course_Select]
	 @paramCourseId nvarchar(50) = null,
	 @paramCourseName nvarchar(50) = null,
	 @paramCourseStatus varchar(1) = null,
	 @paramLearnMethod varchar(1) = null
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	IF @paramCourseId IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND c.[CourseID] LIKE ''%'+@paramCourseId+ '%'' '

	IF @paramCourseName IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND c.[CourseName] LIKE ''%'+@paramCourseName+ '%'' ' 
	
	IF @paramLearnMethod IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND c.[ID_LearnMethod] = ' + @paramLearnMethod + ' '

	IF @paramCourseStatus IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND c.IsActive = ' + @paramCourseStatus + ' '



	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @Sql = 'SELECT  
				ROW_NUMBER() OVER(ORDER BY c.CourseID ASC)  as RowIndex, 
				c.ID,
				c.CourseID,
				C.CourseName,
				c.ID_LearnMethod,
				cm.Course_LearnMethodName_EN,
				CASE WHEN c.IsActive = 1 THEN
						''Active''
					 WHEN c.IsActive = 0 THEN
						''In Active''
				END
				AS  CourseStatus

				FROM  LDMS_M_Course  c WITH (NOLOCK) 
				LEFT OUTER JOIN LDMS_M_CourseLearnMethod cm WITH (NOLOCK)  on c.ID_LearnMethod = cm.ID ' + @RowFilter

    print (@Sql)
	exec (@Sql) 

	--WHERE c.IsActive = @paramCourseStatus

	/*AND  c.ID_LearnMethod = @paramLearnMethod OR @paramLearnMethod IS NOT NULL

	AND (1 =  CASE WHEN @paramCourseId IS NOT NULL AND @paramCourseId <> '' AND @paramCourseId <> ' ' THEN
				CASE WHEN UPPER(c.CourseID) like '%'+ UPPER(@paramCourseId) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)
    AND (1 =  CASE WHEN @paramCourseName IS NOT NULL AND @paramCourseName <> '' AND @paramCourseName <> ' ' THEN
				CASE WHEN UPPER(c.CourseName) like '%'+ UPPER(@paramCourseName) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)

	--AND ( @paramLearnMethod IS NOT NULL AND c.ID_LearnMethod = @paramLearnMethod )*/
			  
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Course_Select_ByID]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_Course_Select_ByID]
	 @paramIDCourse int 
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	



	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [ID]
      ,[CourseID]
      ,[CourseName]
      ,[ID_LearnMethod]
      ,[ID_CourseType]
      ,[Objective]
      ,[Description]
      ,[OutLine]
      ,[IsRefreshment]
      ,[RefreshmentPeriod]
      ,[RefreshmentUnit]
      ,[TargetEmployeeID]
      ,[ID_PlantTarget]
      ,[ID_CenterTarget]
      ,[ID_DivisionTarget]
      ,[ID_DepartmentTarget]
      ,[ID_SectionTarget]
      ,TargetJobgrade  as [JobGradeTargetID]
      ,TargetJobTitle as[JobTitleTargetID]
      ,[ID_DepartmentCreate]
      ,[CreateBy]
      ,[CreateDate]
      ,[UpdateBy]
      ,[UpdateDate]
      ,[IsActive]
	FROM [dbo].[VW_M_Course_Display]
	where id = @paramIDCourse

	--WHERE c.IsActive = @paramCourseStatus

	/*AND  c.ID_LearnMethod = @paramLearnMethod OR @paramLearnMethod IS NOT NULL

	AND (1 =  CASE WHEN @paramCourseId IS NOT NULL AND @paramCourseId <> '' AND @paramCourseId <> ' ' THEN
				CASE WHEN UPPER(c.CourseID) like '%'+ UPPER(@paramCourseId) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)
    AND (1 =  CASE WHEN @paramCourseName IS NOT NULL AND @paramCourseName <> '' AND @paramCourseName <> ' ' THEN
				CASE WHEN UPPER(c.CourseName) like '%'+ UPPER(@paramCourseName) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)

	--AND ( @paramLearnMethod IS NOT NULL AND c.ID_LearnMethod = @paramLearnMethod )*/
			  
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Course_SelectByInstructor]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_M_Course_SelectByInstructor]
	@ID_Instructor int
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT c.[ID] [ID_Class], cu.[ID] [ID_Course], ps.[ID_Platform], sc.[ID_SubPlatform],
	  cu.[CourseID], cu.[CourseName], pl.[PlatformName_TH], pl.[PlatformName_EN], cu.[IsActive],
	  cu.[UpdateDate],
	  (SELECT ISNULL(AVG(cs.[PostTestScore]),0)  FROM [dbo].[LDMS_T_ClassAttendAndResult] cs WHERE cs.[ID_Class] = c.[ID] AND cs.[ID_Course] = cu.[ID]) [avgScore]
	FROM [dbo].[LDMS_T_Class] c 
	 LEFT JOIN [dbo].[LDMS_M_Course] cu ON cu.[ID] = c.[ID_Course]
	 LEFT JOIN [dbo].[LDMS_M_SubPlatformCourse] sc ON sc.[ID_Course] = cu.[ID]
	 LEFT JOIN [dbo].[LDMS_M_SubPlatform] ps ON ps.ID = sc.[ID_SubPlatform]
	 LEFT JOIN [dbo].[LDMS_M_Platform] pl ON pl.[ID] = ps.[ID_Platform]
	WHERE c.[ID_Instructor] = @ID_Instructor

   
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Course_SelectPaging]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--EXEC [dbo].[sp_M_Instructor_SelectPaging] NULL, NULL, NULL, NULL, 'INT', NULL, NULL, 1, 10, '',''
CREATE PROCEDURE [dbo].[sp_M_Course_SelectPaging]
	@Course_ID varchar(100) = NULL,
	@IsActive varchar(10) = NULL,
	@Course_Name varchar(100) = NULL,
	@Learn_Method varchar(500) = NULL,
	@PageNum  int = null,
	@PageSize int = null,
	@SortField varchar(100) = null,
	@SortOrder varchar(4) = null
AS
BEGIN
	
	SET NOCOUNT ON;

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1'

	IF @Course_ID IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[CourseID] LIKE ''%'+@Course_ID+ '%'' '

	IF @IsActive IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[IsActive] = '+@IsActive+ ' '
	
	IF @Course_Name IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[CourseName] LIKE = ''%'+@Course_Name+ '%'' '

	IF @Learn_Method IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[ID_LearnMethod] = '+@Learn_Method+ ' '

	
	
	SET @CountColumn = '[ID]'
	
	
    IF ISNULL(@SortField, '' ) = ''
		SET @SortField = ' [UpdateDate] DESC'
	ELSE
		SET @SortField = @SortField + ' '+ @SortOrder
		 
	SET @sql = 'SELECT i.ID, i.CourseID, i.CourseName, o.Course_LearnMethodName_EN, 
	case i.isActive when 1 then ''active'' else ''inactive'' end as CourseStatus, i.[UpdateDate]
  FROM [dbo].[LDMS_M_Course] i
  LEFT JOIN [dbo].[LDMS_M_CourseLearnMethod] o on i.ID_LearnMethod = o.ID '+ @RowFilter;

   
	 exec dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn

	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Course_Update]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_Course_Update]
	-- Add the parameters for the stored procedure here 
	@ID_Course			    int
	,@paramCourseID			nvarchar(50)
	,@paramCourseName		nvarchar(50)            
,@paramID_LearnMethod		int                 
,@paramID_CourseType		int                  
,@paramObjective		    nvarchar(200)            
,@paramDescription		    nvarchar(200)          
,@paramOutLine			    nvarchar(200)              
,@paramIsRefreshment		int                  
,@paramRefreshmentPeriod	int              
,@paramRefreshmentUnit		nvarchar(10)       
,@paramTargetEmployeeID		EmployeeIdList Readonly
,@paramID_PlantTarget		int                 
,@paramID_CenterTarget		int                
,@paramID_DivisionTarget	int              
,@paramID_DepartmentTarget	int            
,@paramID_SectionTarget		int               
,@paramJobGradeTargetID		EmployeeIdList Readonly    
,@paramJobTitleTargetID		EmployeeIdList Readonly             
,@paramID_DepartmentCreate	int            
,@paramUpdateBy			nvarchar(50) = NULL
,@paramIsActive			tinyint	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	UPDATE [dbo].[LDMS_M_Course]
       SET [CourseID]		= @paramCourseID
      ,[CourseName]		= @paramCourseName		
      ,[ID_LearnMethod]		= @paramID_LearnMethod		
      ,[ID_CourseType]		= @paramID_CourseType		
      ,[Objective]		= @paramObjective		
      ,[Description]		= @paramDescription		
      ,[OutLine]		= @paramOutLine			
      ,[IsRefreshment]		= @paramIsRefreshment		
      ,[RefreshmentPeriod]	= @paramRefreshmentPeriod	
      ,[RefreshmentUnit]	= @paramRefreshmentUnit		
     -- ,[TargetEmployeeID]	= @paramTargetEmployeeID	
      ,[ID_PlantTarget]		= @paramID_PlantTarget		
      ,[ID_CenterTarget]	= @paramID_CenterTarget		
      ,[ID_DivisionTarget]	= @paramID_DivisionTarget	
      ,[ID_DepartmentTarget]	= @paramID_DepartmentTarget	
      ,[ID_SectionTarget]	= @paramID_SectionTarget	
    --  ,[JobGradeTargetID]	= @paramJobGradeTargetID	
     -- ,[JobTitleTargetID]	= @paramJobTitleTargetID	
      ,[ID_DepartmentCreate]	= @paramID_DepartmentCreate	
      ,[UpdateBy]		= @paramUpdateBy		
      ,[UpdateDate]		= getdate()		
      ,[IsActive]		= @paramIsActive
    WHERE [ID] = @ID_Course
	
	Delete from [dbo].[LDMS_T_CourseEmployee]
	where [ID_Course] = @ID_Course

	Delete from [dbo].[LDMS_T_CourseJobGrade]
	where [ID_Course] = @ID_Course

	Delete from [dbo].[LDMS_T_CourseJobTitle]
	where [ID_Course] = @ID_Course

	INSERT INTO [dbo].[LDMS_T_CourseEmployee]
           ([ID_Course]
           ,[EmployeeID]
           ,[CreateDateTime])
    Select @ID_Course as [ID_Course] ,[EmployeeId] as [EmployeeID], getdate() as [CreateDateTime]
	from @paramTargetEmployeeID
		
	INSERT INTO [dbo].[LDMS_T_CourseJobGrade]
           ([ID_Course]
           ,[ID_JobGrade]
           ,[CreateDateTime])
	select @ID_Course as [ID_Course],[EmployeeId] as [ID_JobGrade], getdate() as [CreateDateTime]
	from @paramJobGradeTargetID

	INSERT INTO [dbo].[LDMS_T_CourseJobTitle]
           ([ID_Course]
           ,[ID_JobTitle]
           ,[CreateDateTime])
	select @ID_Course as [ID_Course],[EmployeeId] as [ID_JobTitle], getdate() as [CreateDateTime]
	from @paramJobTitleTargetID

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

	SELECT [CourseID]
      ,[ID]
      ,[CourseName]
      ,[ID_LearnMethod]
      ,[ID_CourseType]
      ,[Objective]
      ,[Description]
      ,[OutLine]
      ,[IsRefreshment]
      ,[RefreshmentPeriod]
      ,[RefreshmentUnit]
      ,[ID_PlantTarget]
      ,[ID_CenterTarget]
      ,[ID_DivisionTarget]
      ,[ID_DepartmentTarget]
      ,[ID_SectionTarget]
      ,[ID_DepartmentCreate]
      ,[CreateBy]
      ,[CreateDate]
      ,[UpdateBy]
      ,[UpdateDate]
      ,[IsActive]
      ,[TargetEmployeeID]
      ,[TargetJobgrade]
      ,[TargetJobTitle]
  FROM [dbo].[VW_M_Course_Display] where id= @ID_Course 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_CourseLearnMethod_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_CourseLearnMethod_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(ORDER BY ID ASC)  as RowIndex, ID AS ID, Course_LearnMethodName_TH, Course_LearnMethodName_EN FROM LDMS_M_CourseLearnMethod WITH (NOLOCK)  WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_CourseType_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_CourseType_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(ORDER BY ID ASC)  as RowIndex, ID AS ID, 
			   [CourseTypeName_EN] 
			  ,[CourseTypeName_TH]
			  ,[ID_PlatformType]
			  ,[PrefixFormat]
			  ,[PrefixCode]
			  ,[SubPrefixCode]
			  ,[RunningLength]
			  ,[Description]
			  ,[CreateBy]
			  ,[CreateDate]
			  ,[UpdateBy]
			  ,[UpdateDate]

			FROM LDMS_M_CourseType WITH (NOLOCK)  WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_District_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_M_District_Select]
	@PROVINCE_ID int,
	@AMPHUR_ID int
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [DISTRICT_ID]
      ,[DISTRICT_CODE]
      ,[DISTRICT_NAME]
      ,[DISTRICT_NAME_ENG]
      ,[AMPHUR_ID]
      ,[PROVINCE_ID]
      ,[GEO_ID]
	FROM [dbo].[LDMS_M_Districts]
	WHERE [AMPHUR_ID] = @AMPHUR_ID AND [PROVINCE_ID] = @PROVINCE_ID
	ORDER BY [DISTRICT_NAME]

END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Employee_SelectPaging]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC [dbo].[sp_M_Instructor_SelectPaging] NULL, NULL, NULL, NULL, 'INT', NULL, NULL, 1, 10, '',''
CREATE PROCEDURE [dbo].[sp_M_Employee_SelectPaging]
	@EmployeeID varchar(10) = NULL,
	@EmployeeName varchar(50) = NULL,
	@DepartmentID varchar(10) = NULL,
	@SectionID varchar(10) = NULL,
	@JobGradeID varchar(10) = NULL,
	@JobTitleID varchar(10) = NULL
	--@PageNum  int = null,
	--@PageSize int = null,
	--@SortField varchar(100) = null,
	--@SortOrder varchar(4) = null
AS
BEGIN
	
	SET NOCOUNT ON;

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1'

	IF @EmployeeID IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND u.[EmployeeID] LIKE ''%'+@EmployeeID+ '%'' '

	
	IF @EmployeeName IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND u.[Name] LIKE ''%'+@EmployeeName+ '%'' OR  u.[Surname] LIKE ''%'+@EmployeeName+ '%'' '

	IF @DepartmentID IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND u.[ID_Department] = '+@DepartmentID+ ' '

	IF @SectionID IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND r.[ID_Section] = '''+@SectionID+ ''' '

	IF @JobGradeID IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND u.[ID_JobGrade] = '''+@JobGradeID+ ''' '

	IF @JobTitleID IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND u.[ID_JobTitle]  = '''+@JobTitleID+ ''' '
	
	--SET @CountColumn = '[ID]'
	
	
    --IF @SortField = ''
	--	SET @SortField = '[UpdateDate] DESC'
	--ELSE
	--	SET @SortField = @SortField+' '+ @SortOrder

	SET @sql = 'SELECT 
				   u.[EmployeeID]
				  ,u.[Name] + '' '' + u.[Surname] As EmployeeName
				  ,g.[JobGradeName_EN]
				  ,u.[ID_JobGrade]
				  ,t.[JobTitleName_EN]
				  ,u.[ID_JobTitle]
				  ,t.[JobTitleName_EN]
				  ,u.[ID_Department]
				  ,d.[DepartmentName_EN]
				  ,r.[ID_Section]
				  ,se.[SectionName_EN]
				  ,u.[IsActive]
				  ,u.[UpdateDate]
				FROM LDMS_M_User u 
				INNER JOIN LDMS_M_Department d 
				ON u.[ID_Department] = d.[ID]
				INNER JOIN LDMS_M_JobGrade g
				ON u.[ID_JobGrade] = g.[ID]
				INNER JOIN LDMS_M_JobTitle t
				ON u.[ID_JobTitle] = t.[ID]
				INNER JOIN LDMS_M_UserRole r 
				ON u.[EmployeeID] = r.[EmployeeID] 
				INNER JOIN LDMS_M_Section se
				ON r.[ID_Section] = se.[ID]' + @RowFilter;

	 --exec dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn
	 --print (@sql);
	 exec (@sql);
	 
	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_M_Instructor_Insert]
	@Instructor_ID nvarchar(10),
    @Instructor_Name nvarchar(100),
	@ID_Employee nvarchar(50) = null,
    @Type nvarchar(50),
    @Phone nvarchar(20),
    @Email nvarchar(50),
    @Organization nvarchar(250),
    @Address nvarchar(100),
    @District_Id int = NULL,
    @Aumphur_Id int = NULL,
    @Provice_Id int = null,
    @Post_Code nvarchar(5),
    @Path_Image nvarchar(200),
    @Path_Certificate nvarchar(200),
    @Education_Level nvarchar(500),
    @Major nvarchar(200),
    @Course_Experience nvarchar(500),
    @Skill_Professional nvarchar(500),
    @Customer_Reference nvarchar(500),
    @Manufacturing_Area nvarchar(500),
    @Create_By nvarchar(50),
    @IsActive tinyint
AS
BEGIN
	
	SET NOCOUNT ON;

    INSERT INTO [dbo].[LDMS_M_Instructor]
           ([Instructor_ID]
           ,[Instructor_Name]
		   ,[EmployeeID]
           ,[Type]
           ,[Phone]
           ,[Email]
           ,[Organization]
           ,[Address]
           ,[District_Id]
           ,[Aumphur_Id]
           ,[Provice_Id]
           ,[Post_Code]
           ,[Path_Image]
           ,[Path_Certificate]
           ,[Education_Level]
           ,[Major]
           ,[Course_Experience]
           ,[Skill_Professional]
           ,[Customer_Reference]
           ,[Manufacturing_Area]
           ,[Create_By]
           ,[Create_Date]
           ,[Update_By]
           ,[Update_Date]
           ,[IsActive])
     VALUES
           (@Instructor_ID
           ,@Instructor_Name
		   ,@ID_Employee
           ,@Type
           ,@Phone
           ,@Email
           ,@Organization
           ,@Address
           ,@District_Id
           ,@Aumphur_Id
           ,@Provice_Id
           ,@Post_Code
           ,@Path_Image
           ,@Path_Certificate
           ,@Education_Level
           ,@Major
           ,@Course_Experience
           ,@Skill_Professional
           ,@Customer_Reference
           ,@Manufacturing_Area
           ,@Create_By
           ,GETDATE()
           ,@Create_By
           ,GETDATE()
           ,@IsActive)

	SELECT @@IDENTITY [ID]

END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC [dbo].[sp_M_Instructor_Select] 2
CREATE PROCEDURE [dbo].[sp_M_Instructor_Select]
	@ID int
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT i.[ID]
      ,i.[Instructor_ID]
      ,i.[Instructor_Name]
      ,i.[Type]
	  ,i.[EmployeeID] ID_Employee
      ,i.[Phone]
      ,i.[Email]
      ,i.[Organization]
      ,i.[Address]
      ,i.[District_Id]
      ,i.[Aumphur_Id]
      ,i.[Provice_Id]
      ,i.[Post_Code]
      ,i.[Path_Image]
      ,i.[Path_Certificate]
      ,i.[Education_Level]
      ,i.[Major]
      ,i.[Course_Experience]
      ,i.[Skill_Professional]
      ,i.[Customer_Reference]
      ,i.[Manufacturing_Area]
      ,i.[Create_By]
      ,i.[Create_Date]
      ,i.[Update_By]
      ,i.[Update_Date]
      ,i.[IsActive]
	  ,u.[ID_Department]
	  ,dp.[DepartmentName_EN]
	  ,lk.[StateName] [TypeName]
	  ,p.[PROVINCE_NAME]
	  ,a.[AMPHUR_NAME]
	  ,d.[DISTRICT_NAME]
	FROM [dbo].[LDMS_M_Instructor] i
		LEFT JOIN [dbo].[LDMS_M_CodeLookUp] lk ON lk.Code = i.[Type] AND lk.[FieldName] = 'Type' AND lk.[TableName] = 'LDMS_M_Instructor'
		LEFT JOIN [dbo].[LDMS_M_User] u ON u.[EmployeeID] = i.[EmployeeID]
		LEFT JOIN [dbo].[LDMS_M_Department] dp ON dp.[ID] = u.[ID_Department]
		LEFT JOIN [dbo].[LDMS_M_Provinces] p ON p.[PROVINCE_ID] = i.[Provice_Id]
		LEFT JOIN [dbo].[LDMS_M_Amphurs] a ON a.[AMPHUR_ID] = i.[Aumphur_Id]
		LEFT JOIN [dbo].[LDMS_M_Districts] d ON d.[DISTRICT_ID] = i.[District_Id]
	WHERE i.[ID] = @ID
   
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_SelectByInstructorID]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_M_Instructor_SelectByInstructorID]
	@Instructor_ID nvarchar(10)
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT COUNT([ID]) FROM [dbo].[LDMS_M_Instructor]
	WHERE [Instructor_ID] = @Instructor_ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_SelectPaging]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC [dbo].[sp_M_Instructor_SelectPaging] NULL, NULL, NULL, NULL, 'INT', NULL, NULL, 1, 10, '',''
CREATE PROCEDURE [dbo].[sp_M_Instructor_SelectPaging]
	@Instructor_ID varchar(10) = NULL,
	@IsActive varchar(1) = NULL,
	@Instructor_Name varchar(100) = NULL,
	@Organization varchar(250) = NULL,
	@Type varchar(50) = NULL,
	@Course_Experience varchar(500) = NULL,
	@CourseName varchar(50) = NULL,
	@PageNum  int = null,
	@PageSize int = null,
	@SortField varchar(100) = null,
	@SortOrder varchar(4) = null
AS
BEGIN
	
	SET NOCOUNT ON;

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1'

	IF @Instructor_ID IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[Instructor_ID] LIKE ''%'+@Instructor_ID+ '%'' '

	IF @IsActive IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[IsActive] = '+@IsActive+ ' '
	
	IF @Instructor_Name IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[Instructor_Name] LIKE ''%'+@Instructor_Name+ '%'' '

	IF @Organization IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[Organization] = '''+@Organization+ ''' '

	IF @Type IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[Type] = '''+@Type+ ''' '

	IF @Course_Experience IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[Course_Experience] LIKE ''%'+@Course_Experience+ '%'' '

	IF @CourseName IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND u.[CourseName]  LIKE ''%'+@CourseName+ '%'' '
	
	SET @CountColumn = '[ID]'
	
	
    IF @SortField = ''
		SET @SortField = '[update_date] DESC'
	ELSE
		SET @SortField = @SortField+' '+ @SortOrder

	SET @sql = 'SELECT i.[ID]
					  ,i.[Instructor_ID]
					  ,i.[Instructor_Name]
					  ,i.[Type]
					  ,l.[StateName] [TypeName]
					  ,i.[Phone]
					  ,i.[Email]
					  ,i.[Organization]
					  ,i.[Address]
					  ,i.[District_Id]
					  ,i.[Aumphur_Id]
					  ,i.[Provice_Id]
					  ,i.[Post_Code]
					  ,i.[Path_Image]
					  ,i.[Path_Certificate]
					  ,i.[Education_Level]
					  ,i.[Major]
					  ,i.[Course_Experience]
					  ,i.[Skill_Professional]
					  ,i.[Customer_Reference]
					  ,i.[Manufacturing_Area]
					  ,i.[Create_By]
					  ,i.[Create_Date]
					  ,i.[Update_By]
					  ,i.[Update_Date]
					  ,i.[IsActive]
					
				FROM LDMS_M_Instructor i
					LEFT JOIN [dbo].[LDMS_M_CodeLookUp] l ON l.[Code] = i.[Type]
					 '+@RowFilter;

	 exec dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn

	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Update]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_M_Instructor_Update]
	@ID int,
	@Instructor_ID nvarchar(10),
    @Instructor_Name nvarchar(100),
	@ID_Employee nvarchar(50) = null,
    @Type nvarchar(50),
    @Phone nvarchar(20),
    @Email nvarchar(50),
    @Organization nvarchar(250) = NULL,
    @Address nvarchar(100),
    @District_Id int = NULL,
    @Aumphur_Id int = NULL,
    @Provice_Id int = NULL,
    @Post_Code nvarchar(5),
    @Path_Image nvarchar(200),
    @Path_Certificate nvarchar(200),
    @Education_Level nvarchar(500),
    @Major nvarchar(200),
    @Course_Experience nvarchar(500),
    @Skill_Professional nvarchar(500),
    @Customer_Reference nvarchar(500),
    @Manufacturing_Area nvarchar(500),
    @Update_By nvarchar(50),
    @IsActive tinyint
AS
BEGIN
	
	SET NOCOUNT ON;

    UPDATE [dbo].[LDMS_M_Instructor] SET
		[Instructor_ID] = @Instructor_ID, [Instructor_Name] = @Instructor_Name, [Type] = @Type, [Phone] = @Phone, [EmployeeID] = @ID_Employee,
		[Email] = @Email, [Organization] = @Organization, [Address] = @Address, [District_Id] = @District_Id, 
		[Aumphur_Id] = @Address, [Provice_Id] = @Provice_Id, [Post_Code] = @Post_Code, [Path_Image] = @Path_Image,
		[Path_Certificate] = @Path_Certificate, [Major] = @Major, [Course_Experience] = @Course_Experience,
		[Skill_Professional] = @Skill_Professional, [Customer_Reference] = @Customer_Reference, [Manufacturing_Area] = @Manufacturing_Area,
		[Update_By] = @Update_By, [Update_Date] = GETDATE(), [IsActive] = @IsActive
	WHERE [ID] = @ID


END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_UpdateStatus]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_M_Instructor_UpdateStatus]
	@ID int,
	@Update_By nvarchar(50)  NULL
AS
BEGIN
	
	SET NOCOUNT ON;

	UPDATE [dbo].[LDMS_M_Instructor] SET
		[IsActive] = CASE [IsActive]  WHEN 1 THEN 0 ELSE 1 END,
		 [Update_By] = @Update_By, [Update_Date] = GETDATE()
	WHERE [ID] = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_JobGrade_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_JobGrade_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(ORDER BY ID ASC)  as RowIndex, 
			   [ID] AS ID 
			  ,[JobGradeID]
			  ,[JobGradeName_EN]
			  ,[JobGradeName_TH]
			  ,[Description]
			  ,[CreateBy]
			  ,[CreateDate]
			  ,[UpdateBy]
			  ,[UpdateDate]

			FROM LDMS_M_JobGrade WITH (NOLOCK)  WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Platform_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_Platform_Insert]
	-- Add the parameters for the stored procedure here 
	@PlatformID nvarchar(20),
	@PlatformName_EN nvarchar(50),
	@PlatformName_TH nvarchar(50),
	@ID_PlatformType int,
	@PlatformDescription nvarchar(500),
	@ID_Department_Create int,
	@PlatformStatus int,
	@CreateBy  nvarchar(50)  =null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	INSERT INTO [dbo].[LDMS_M_Platform]
           (     [PlatformID]
				,[PlatformName_EN]
				,[PlatformName_TH]
				,[ID_PlatformType]
				,[PlatformDescription]
				,[ID_Department_Create]
				,[CreateBy]
				,[CreateDate]
				,[UpdateBy]
				,[UpdateDate]
				,[IsActive])
     VALUES
           (
		     @PlatformID
			,@PlatformName_EN
			,@PlatformName_TH
			,@ID_PlatformType
			,@PlatformDescription
			,@ID_Department_Create
            ,@CreateBy
            ,GETDATE()
            ,null
            ,null
            ,@PlatformStatus);

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

	SELECT @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Platform_Select_byID]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[sp_M_Platform_Select_byID]
	 @ID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  
	   [ID]
	  ,[PlatformID]
      ,[PlatformName_EN]
      ,[PlatformName_TH]
      ,[ID_PlatformType]
      ,[PlatformDescription]
      ,[ID_Department_Create]
      ,[CreateBy]
      ,[CreateDate]
      ,[UpdateBy]
      ,[UpdateDate]
      ,[IsActive]
	FROM  LDMS_M_Platform  p 
	WHERE p.ID = @ID  --p.IsActive = 1
     
	
			  
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Platform_Update]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_Platform_Update]
	-- Add the parameters for the stored procedure here 
	@ID_Platform nvarchar(10),
	@PlatformID nvarchar(50),
	@PlatformName_EN nvarchar(50),
	@PlatformName_TH nvarchar(50),
	@ID_PlatformType int,
	@PlatformDescription nvarchar(500),
	@ID_Department_Create int,
	@PlatformStatus int,
	@UpdateBy  nvarchar(50)  = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	UPDATE [dbo].[LDMS_M_Platform]
          SET [PlatformID] = @PlatformID
				,[PlatformName_EN] = @PlatformName_EN
				,[PlatformName_TH] = @PlatformName_TH
				,[ID_PlatformType] = @ID_PlatformType
				,[PlatformDescription] = @PlatformDescription
				,[ID_Department_Create] = @ID_Department_Create
				,[UpdateBy] = @UpdateBy
				,[UpdateDate] = GETDATE()
				,[IsActive] = @PlatformStatus
    WHERE [ID] = @ID_Platform

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

	SELECT 1
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_PlatformType_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_PlatformType_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(ORDER BY ID ASC)  as RowIndex, ID, PlatformTypeName_TH, PlatformTypeName_EN FROM LDMS_M_PlatformType WITH (NOLOCK)  WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Platfrom_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE   PROCEDURE [dbo].[sp_M_Platfrom_Select]
	 @paramPlatformId nvarchar(50) = null,
	 @paramPlatformName nvarchar(50) = null,
	 @paramPlatformType nvarchar(50) = null,
	 @paramPlatformStatus int = 1
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  
	ROW_NUMBER() OVER(ORDER BY p.PlatformID ASC)  as RowIndex,
	p.ID,
	p.PlatformID,
	p.PlatformName_TH,
	p.PlatformName_EN,
	p.ID_PlatformType,
	pt.PlatformTypeName_EN as PlatformType,
	CASE WHEN p.IsActive = 1 THEN
			'Active'
		 WHEN p.IsActive = 0 THEN
			'In Active'
	END
	AS  PlatformStatus

	FROM  LDMS_M_Platform  p WITH (NOLOCK) 
	LEFT OUTER JOIN LDMS_M_PlatformType pt WITH (NOLOCK)  on p.ID_PlatformType = pt.ID
	WHERE p.IsActive = @paramPlatformStatus

	AND (1 =  CASE WHEN @paramPlatformId IS NOT NULL AND @paramPlatformId <> '' AND @paramPlatformId <> ' ' THEN
				CASE WHEN UPPER(p.PlatformId) like '%'+ UPPER(@paramPlatformId) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)
    AND (1 =  CASE WHEN @paramPlatformName IS NOT NULL AND @paramPlatformName <> '' AND @paramPlatformName <> ' ' THEN
				CASE WHEN UPPER(p.PlatformName_EN) like '%'+ UPPER(@paramPlatformName) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)
	AND (1 =  CASE WHEN @paramPlatformType IS NOT NULL AND @paramPlatformType <> '' AND @paramPlatformType <> ' ' THEN
				CASE WHEN UPPER(pt.PlatformTypeName_EN) like '%'+ UPPER(@paramPlatformType) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)

	ORDER BY p.CreateDate DESC;
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Platfrom_Select_Paging]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE   PROCEDURE [dbo].[sp_M_Platfrom_Select_Paging]
	 @PlatformId nvarchar(50) = null,
	 @PlatformName nvarchar(50) = null,
	 @PlatformType nvarchar(50) = null,
	 @PlatformStatus nvarchar(1) = null,
	 @PageNum  int = null,
	 @PageSize int = null,
	 @SortField varchar(100) = null,
	 @SortOrder varchar(4) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	IF @PlatformId IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND p.[PlatformID] LIKE ''%'+@PlatformId+ '%'' '

	IF 	 @PlatformName IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND p.[PlatformName_EN] LIKE ''%'+@PlatformName+ '%'' ' 
	
	IF @PlatformType IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND p.[ID_PlatformType] = '+@PlatformType+ ' '

	IF @PlatformStatus IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND p.[IsActive] = '+@PlatformStatus+ ' '

	
	
	SET @CountColumn = '[ID]'
	
    IF ISNULL(@SortField, '' ) = ''
		SET @SortField = ' [UpdateDate] DESC'
	ELSE
		SET @SortField = @SortField + ' '+ @SortOrder



	SET @sql = 'SELECT  
				-- ROW_NUMBER() OVER(ORDER BY p.PlatformID ASC)  as RowIndex,
				p.ID AS ID,
				p.PlatformID,
				p.PlatformName_TH,
				p.PlatformName_EN,
				p.ID_PlatformType,
				pt.PlatformTypeName_EN as PlatformType,
				CASE WHEN p.IsActive = 1 THEN
						''Active''
					 WHEN p.IsActive = 0 THEN
						''In Active''
				END
				AS  PlatformStatus,
				p.UpdateDate as UpdateDate

				FROM  LDMS_M_Platform  p WITH (NOLOCK) 
				LEFT OUTER JOIN LDMS_M_PlatformType pt WITH (NOLOCK)  on p.ID_PlatformType = pt.ID ' +  @RowFilter

	
	  exec dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn
  
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Platfrom_SelectALL_WithDep]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE   PROCEDURE [dbo].[sp_M_Platfrom_SelectALL_WithDep]
	 @ID_Department nvarchar(50) = null
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  
	ROW_NUMBER() OVER(ORDER BY p.PlatformID ASC)  as RowIndex,
	p.ID,
	p.PlatformID,
	p.PlatformName_TH,
	p.PlatformName_EN,
	p.ID_PlatformType,
	pt.PlatformTypeName_EN as PlatformType,
	CASE WHEN p.IsActive = 1 THEN
			'Active'
		 WHEN p.IsActive = 0 THEN
			'In Active'
	END
	AS  PlatformStatus,
	p.ID_Department_Create

	FROM  LDMS_M_Platform  p WITH (NOLOCK) 
	LEFT OUTER JOIN LDMS_M_PlatformType pt WITH (NOLOCK)  on p.ID_PlatformType = pt.ID
	WHERE p.IsActive = 1 
	AND p. ID_Department_Create = @ID_Department


END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Provinces_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_M_Provinces_Select]

AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [PROVINCE_ID]
      ,[PROVINCE_CODE]
      ,[PROVINCE_NAME]
      ,[PROVINCE_NAME_ENG]
      ,[GEO_ID]
	FROM [dbo].[LDMS_M_Provinces]
	ORDER BY [PROVINCE_NAME]

END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_SubPlatform_Delete]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_SubPlatform_Delete]
	-- Add the parameters for the stored procedure here 
	@ID_SubPlatform nvarchar(10)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	UPDATE [dbo].[LDMS_M_SubPlatform]
         SET [IsActive] = 0
    WHERE [ID] = @ID_SubPlatform

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

	SELECT 1
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_SubPlatform_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_SubPlatform_Insert]
	-- Add the parameters for the stored procedure here 
	@ID_Platform int,
	@SubPlatformName_EN nvarchar(50),
	@SubPlatformName_TH nvarchar(50),
	@CreateBy  nvarchar(50)  =null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	INSERT INTO [dbo].[LDMS_M_SubPlatform]
           (   [ID_Platform]
			  ,[SubPlatformName_EN]
			  ,[SubPlatformName_TH]
			  ,[CreateBy]
			  ,[CreateDate]
			  ,[UpdateBy]
			  ,[UpdateDate]
			  ,[IsActive])
     VALUES
           (
		    @ID_Platform 
		   ,@SubPlatformName_EN
		   ,@SubPlatformName_TH
           ,@CreateBy
           ,GETDATE()
           ,null
           ,null
           ,1);
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

	SELECT @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_SubPlatform_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[sp_M_SubPlatform_Select]
	 @ID_Platform nvarchar(50),
	 @SubPlatformNameEN nvarchar (50)
	
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  
			p.ID,
			P.ID_Platform,
			p.SubPlatformName_EN,
			p.SubPlatformName_TH,
			CASE WHEN p.IsActive = 1 THEN
					'Active'
					WHEN p.IsActive = 0 THEN
					'In Active'
			END
			AS  SubPlatformStatus,
			p.UpdateDate

			FROM  LDMS_M_SubPlatform  p
			WHERE p.SubPlatformName_EN = @SubPlatformNameEN
			AND p.ID_Platform = @ID_Platform
	
			  
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_SubPlatform_Select_Paging]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[sp_M_SubPlatform_Select_Paging]
	 @ID_Platform nvarchar(10),
	 @Keyword nvarchar(50) = null,
	 @PageNum  int = null,
	 @PageSize int = null,
	 @SortField varchar(100) = null,
	 @SortOrder varchar(4) = null
	
	 
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 AND p.IsActive = 1'

	IF @ID_Platform IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND p.[ID_Platform] = '''+@ID_Platform+ ''' '

	IF 	 @Keyword IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND ( p.[ID_Platform] LIKE ''%'+@Keyword+ '%'' OR  p.[SubPlatformName_EN] LIKE ''%'+@Keyword+ '%'' )' 
	
	SET @CountColumn = '[ID]'
	
	SET @SortField = '[UpdateDate] DESC'

    -- Insert statements for procedure here
	SET @sql = 'SELECT  
					p.ID,
					P.ID_Platform,
					p.SubPlatformName_EN,
					p.SubPlatformName_TH,
					CASE WHEN p.IsActive = 1 THEN
							''Active''
						 WHEN p.IsActive = 0 THEN
							''In Active''
					END
					AS  SubPlatformStatus,
					p.UpdateDate

					FROM  LDMS_M_SubPlatform  p ' + @RowFilter
			
	
		 exec dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn	  
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_SubPlatform_Update]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_SubPlatform_Update]
	-- Add the parameters for the stored procedure here 
	@ID_SubPlatform int,
	@SubPlatformName_EN nvarchar(50),
	@SubPlatformName_TH nvarchar(50),
	@UpdateBy  nvarchar(50)  =null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	
	UPDATE [dbo].LDMS_M_SubPlatform
	SET [SubPlatformName_EN] = @SubPlatformName_EN,
	    [SubPlatformName_TH] = @SubPlatformName_TH,
		[UpdateBy] = @UpdateBy,
		[UpdateDate] = GETDATE()
	WHERE [ID] = @ID_SubPlatform

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

	SELECT 1

END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_SubPlatformByID]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[sp_M_SubPlatformByID]
	 @ID_SubPlatform int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  
	   s.[ID]
      ,s.[ID_Platform]
      ,s.[SubPlatformName_EN]
      ,s.[SubPlatformName_TH]
      ,s.[CreateBy]
      ,s.[CreateDate]
      ,s.[UpdateBy]
      ,s.[UpdateDate]
      ,s.[IsActive]
	  ,p.PlatformID as PlatformID
	  ,p.PlatformName_EN as PlatfromName
	FROM  LDMS_M_SubPlatform  s inner join
	LDMS_M_Platform p on s.ID_Platform = p.ID
	WHERE p.IsActive = 1
    AND S.ID = @ID_SubPlatform
	
			  
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_SubPlatformCourse_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_SubPlatformCourse_Insert]
	-- Add the parameters for the stored procedure here 
	@ID_SubPlatform int,
	@ID_Course int,
	@CreateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	INSERT INTO [dbo].[LDMS_M_SubPlatformCourse]
				(  
				   [ID_SubPlatform]
				  ,[ID_Course]
				  ,[CreateBy]
				  ,[CreateDate])
     VALUES
           (
		    @ID_SubPlatform
		   ,@ID_Course
		   ,@CreateBy
           ,GETDATE()
		   );
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

	-- SELECT @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_SubPlatformCourseBy_SubPlatformID]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[sp_M_SubPlatformCourseBy_SubPlatformID]
	 @ID_SubPlatform int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT  
		ROW_NUMBER() OVER(ORDER BY c.CourseID ASC)  as RowIndex,
		        C.ID,
				c.CourseID,
				C.CourseName,
				c.ID_LearnMethod,
				cm.Course_LearnMethodName_EN,
				CASE WHEN c.IsActive = 1 THEN
						'Active'
					 WHEN c.IsActive = 0 THEN
						'In Active'
				END
				AS  CourseStatus
				FROM [LDMS_M_SubPlatformCourse] s WITH (NOLOCK) 
				INNER JOIN  LDMS_M_Course  c WITH (NOLOCK) on s.ID_Course = c.ID
				INNER JOIN LDMS_M_CourseLearnMethod cm WITH (NOLOCK)  on c.ID_LearnMethod = cm.ID
				WHERE s.[ID_SubPlatform] = @ID_SubPlatform
    

END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_SubPlatformCourseJson_Delete]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_M_SubPlatformCourseJson_Delete]
	-- Add the parameters for the stored procedure here 
	 @ID_SubPlatform varchar(10),
	 @ID_Course varchar(10)
AS
BEGIN

	DELETE [dbo].[LDMS_M_SubPlatformCourse] 
	WHERE ID_SubPlatform = @ID_SubPlatform
		AND ID_Course = @ID_Course

	SELECT  1
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_SubPlatformCourseJson_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_M_SubPlatformCourseJson_Insert]
	-- Add the parameters for the stored procedure here 
	@json NVARCHAR(max),
	@ID_SubPlatform nvarchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	--DELETE [dbo].[LDMS_M_SubPlatformCourse] 
	--WHERE ID_SubPlatform = @ID_SubPlatform

	SET NOCOUNT ON;
	INSERT INTO [dbo].[LDMS_M_SubPlatformCourse]
           (     [ID_SubPlatform]
				,[ID_Course]
				)
			 SELECT
				ID_SubPlatform
			   ,ID_Course
			   
			FROM OPENJSON(@json)
			WITH (
			  ID_SubPlatform      int 
			, ID_Course           int
			) AS jsonValues

	-- SELECT @@IDENTITY
	SELECT  1
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_SubPlatformCourseSelect_Paging]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[sp_M_SubPlatformCourseSelect_Paging]
	 @ID_SubPlatform nvarchar(10),
	 @Keyword nvarchar(50) = null,
	 @PageNum  int = null,
	 @PageSize int = null,
	 @SortField varchar(100) = null,
	 @SortOrder varchar(4) = null
	
	 
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	IF @ID_SubPlatform IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND s.[ID_SubPlatform] = '''+@ID_SubPlatform+ ''' '

	IF @Keyword IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND ( c.[CourseID] LIKE ''%'+@Keyword+ '%'' OR  c.[CourseName] LIKE ''%'+@Keyword+ '%'' OR  c.[Course_LearnMethodName_EN]  LIKE ''%'+@Keyword+ '%'' )' 
	
	SET @CountColumn = '[ID]'
	
	SET @SortField = '[CourseID] DESC'

    -- Insert statements for procedure here
	SET @sql = ' SELECT  
					ROW_NUMBER() OVER(ORDER BY c.CourseID ASC)  as RowIndex,
		        C.ID,
				c.CourseID,
				C.CourseName,
				c.ID_LearnMethod,
				cm.Course_LearnMethodName_EN,
				CASE WHEN c.IsActive = 1 THEN
						''Active''
					 WHEN c.IsActive = 0 THEN
						''In Active''
				END
				AS  CourseStatus
				FROM [LDMS_M_SubPlatformCourse] s WITH (NOLOCK) 
				INNER JOIN  LDMS_M_Course  c WITH (NOLOCK) on s.ID_Course = c.ID
				INNER JOIN LDMS_M_CourseLearnMethod cm WITH (NOLOCK)  on c.ID_LearnMethod = cm.ID ' + @RowFilter
				-- WHERE s.[ID_SubPlatform] = @ID_SubPlatform
			
	
		 exec dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn	  
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_VanueRoom_Select_ByPlantID]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_VanueRoom_Select_ByPlantID]
	 @paramIDPlant int 
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	--DECLARE @sql varchar(3000)
	
	--DECLARE @CountColumn varchar(50)
	--DECLARE @RowFilter varchar(1500)
	--SET @RowFilter = ' WHERE 1 = 1 '

	



	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [ID]
      ,[VenueRoomID]
      ,[ID_Plant]
      ,[RoomName_EN]
      ,[RoomName_TH]
      ,[Description]
      ,[CreateBy]
      ,[CreateDate]
      ,[UpdateBy]
      ,[UpdateDate]
      ,[IsActive]
  FROM [dbo].[LDMS_M_VenueRoom]
	where id = @paramIDPlant

	--WHERE c.IsActive = @paramCourseStatus

	/*AND  c.ID_LearnMethod = @paramLearnMethod OR @paramLearnMethod IS NOT NULL

	AND (1 =  CASE WHEN @paramCourseId IS NOT NULL AND @paramCourseId <> '' AND @paramCourseId <> ' ' THEN
				CASE WHEN UPPER(c.CourseID) like '%'+ UPPER(@paramCourseId) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)
    AND (1 =  CASE WHEN @paramCourseName IS NOT NULL AND @paramCourseName <> '' AND @paramCourseName <> ' ' THEN
				CASE WHEN UPPER(c.CourseName) like '%'+ UPPER(@paramCourseName) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)

	--AND ( @paramLearnMethod IS NOT NULL AND c.ID_LearnMethod = @paramLearnMethod )*/
			  
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_VanueRoom_SelectAll]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_VanueRoom_SelectAll]
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ROW_NUMBER() OVER(ORDER BY ID ASC)  as RowIndex,
	   [ID]
      ,[VenueRoomID]
      ,[ID_Plant]
      ,[RoomName_EN]
      ,[RoomName_TH]
      ,[Description]
      ,[CreateBy]
      ,[CreateDate]
      ,[UpdateBy]
      ,[UpdateDate]
      ,[IsActive]
  FROM [dbo].[LDMS_M_VenueRoom] WITH (NOLOCK) WHERE [IsActive] = 1



END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_VanueRoomByPlantID_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_M_VanueRoomByPlantID_Select]
	 @ID_Plant nvarchar(50) = null
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ROW_NUMBER() OVER(ORDER BY ID ASC)  as RowIndex,
	   [ID]
      ,[VenueRoomID]
      ,[ID_Plant]
      ,[RoomName_EN]
      ,[RoomName_TH]
      ,[Description]
      ,[CreateBy]
      ,[CreateDate]
      ,[UpdateBy]
      ,[UpdateDate]
      ,[IsActive]
  FROM [dbo].[LDMS_M_VenueRoom] WITH (NOLOCK) WHERE [IsActive] = 1 AND [ID_Plant] = @ID_Plant



END
GO
/****** Object:  StoredProcedure [dbo].[sp_PagingHelper]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_PagingHelper]
                (
	                @pagenum  int,
	                @pagesize int,		
	                @orderby varchar(500),
	                @cmd varchar(max),
	                @countColumn varchar(100)
                )
                AS
                BEGIN

	                declare @rowNum1 as integer 
	                declare @rowNum2 as integer 
	                declare @max as integer
	                set @rowNum1 = (@pagenum - 1)* @pagesize + 1
	                set @rowNum2 = (@pagenum * @pagesize)
                    set @max = @pagenum * @pagesize

	                declare @cmdselect as varchar(8000)
	                declare @cmdcnt as varchar(8000)
	                declare @cmdselectEnd  as varchar(8000)
	                declare @cmdcntEnd  as varchar(8000)


	                set @cmdcnt = ' select count('+@countColumn+') as TotalRecords from  ( '
	                set @cmdselect =  ' select top(' + cast(@max as varchar(10)) + ') result.* from ( select row_number() over(order by ' + isnull(@orderby,'')  +  ') as rownumber ,c_all.* from ( '
	                set @cmdselectEnd = ' )c_all)result where result.rownumber between ' + cast(@rowNum1 as varchar(10)) + ' and ' + cast(@rowNum2 as varchar(10))
	                set @cmdcntEnd = ' ) as cnt'
	
	                print (@cmdselect + @cmd + @cmdselectEnd)
	                print (@cmdcnt + @cmd + @cmdcntEnd)

	                exec (@cmdselect + @cmd + @cmdselectEnd)
	                exec (@cmdcnt + @cmd + @cmdcntEnd)
                END





GO
/****** Object:  StoredProcedure [dbo].[sp_T_Class_Delete]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_T_Class_Delete]
	@Class_ID nvarchar(200),	
	@UpdateBy varchar(50)
AS
BEGIN
	
   --UPDATE [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]
   --SET Is_Active = 0
   --WHERE [ID_CompetenceAnalytic] = @ID_CompetenceAnalytic and Is_Active =1
   --AND NOT EXISTS (SELECT * FROM @Topics TT  WHERE TT.ID_Topic = [LDMS_T_CompetenceAnalytic_KnwldTopic].ID AND [LDMS_T_CompetenceAnalytic_KnwldTopic].Is_Active =1)


	
    Declare @cID table (ID INT);
	INSERT INTO @cID SELECT Item FROM dbo.SplitInts(isnuLL(@Class_ID,''), ',');

	SET NOCOUNT ON;

    UPDATE [dbo].[LDMS_T_Class] SET
		[IsActive] = 0, 
		[UpdateBy] = @UpdateBy, 
		[UpdateDate] = GETDATE()
	WHERE [ID] IN ( Select * from @cID )

	Select 1

END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_Class_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_T_Class_Insert]
			
           @paramID_Course int
           ,@paramID_Instructor int
           ,@paramClassCapacity int
           ,@paramClassFee decimal(8,2)
           ,@paramLearnDateStart date
           ,@paramLearnTimeStart nvarchar(10)
           ,@paramLearnDateEnd date
           ,@paramLearnTimeEnd  nvarchar(10)
           ,@paramRegisterDateStart date
           ,@paramRegisterDateEnd date
           ,@paramID_PlantVenue int
           ,@paramID_VenueRoom int
           ,@paramPlaceAndLocation nvarchar(200)
           ,@paramClassStatus int
           ,@paramIsAttend int
           ,@paramAttendNum int
           ,@paramIsTest int
           ,@paramTestFullScore int
           ,@paramTestPercentage int
           ,@paramIsSkill int
           ,@paramSkillFullScore int
           ,@paramSkillPercentage int
           ,@paramIsCoaching int
           ,@paramIsCertificate int
           ,@paramIsAttachCert int
           ,@paramCertificationRemark nvarchar(100)
           ,@paramReminderDurationDay int
           ,@paramCreateBy nvarchar(50)
           ,@paramIsActive int
           
           
           
AS
BEGIN
	
	SET NOCOUNT ON;
	declare @paramClassID nvarchar(50);
	declare @CourseID nvarchar(50);
	select top 1 @CourseID = CourseID
	from LDMS_M_COURSE
	where ID = @paramID_Course
	
	--if (@CourseID is null)  return null;
	
	set @paramClassID = [dbo].[genClassID](@CourseID);

   INSERT INTO [dbo].[LDMS_T_Class]
           ([ClassID]
           ,[ID_Course]
           ,[ID_Instructor]
           ,[ClassCapacity]
           ,[ClassFee]
           ,[LearnDateStart]
           ,[LearnTimeStart]
           ,[LearnDateEnd]
           ,[LearnTimeEnd]
           ,[RegisterDateStart]
           ,[RegisterDateEnd]
           ,[ID_PlantVenue]
           ,[ID_VenueRoom]
           ,[PlaceAndLocation]
           ,[ClassStatus]
           ,[IsAttend]
           ,[AttendNum]
           ,[IsTest]
           ,[TestFullScore]
           ,[TestPercentage]
           ,[IsSkill]
           ,[SkillFullScore]
           ,[SkillPercentage]
           ,[IsCoaching]
           ,[IsCertificate]
           ,[IsAttachCert]
           ,[CertificationRemark]
           ,[ReminderDurationDay]
           ,[CreateBy]
           ,[CreateDate]
           ,[UpdateBy]
           ,[UpdateDate]
           ,[IsActive])
     VALUES
           (@paramClassID		
           ,@paramID_Course		
           ,@paramID_Instructor		
           ,@paramClassCapacity		
           ,@paramClassFee		
           ,@paramLearnDateStart	
           ,@paramLearnTimeStart	
           ,@paramLearnDateEnd		
           ,@paramLearnTimeEnd		
           ,@paramRegisterDateStart	
           ,@paramRegisterDateEnd	
           ,@paramID_PlantVenue		
           ,@paramID_VenueRoom		
           ,@paramPlaceAndLocation	
           ,@paramClassStatus		
           ,@paramIsAttend		
           ,@paramAttendNum		
           ,@paramIsTest		
           ,@paramTestFullScore		
           ,@paramTestPercentage	
           ,@paramIsSkill		
           ,@paramSkillFullScore	
           ,@paramSkillPercentage	
           ,@paramIsCoaching		
           ,@paramIsCertificate		
           ,@paramIsAttachCert		
           ,@paramCertificationRemark	
           ,@paramReminderDurationDay	
           ,@paramCreateBy	
		   ,getdate()
		   ,@paramCreateBy
		   ,getdate()
           ,@paramIsActive)

	SELECT * from LDMS_T_Class where ClassID = @paramClassID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_Class_Schedule]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_Class_Schedule]
	 @ID_Employee nvarchar(50) = null
	
AS
BEGIN
	
	Select tbSchedule.ID_Platform,
       tbSchedule.PlatformName_EN,
	   tbSchedule.ID_SubPlatform,	
		tbSchedule.SubPlatformName_EN,
		tbSchedule.ID_Course,
		tbSchedule.CourseName,
		--tbSchedule.TargetEmployeeID,
		tbSchedule.InstructorName,
		tbSchedule.ID_Class,
		tbSchedule.ClassID,
		'' as [Status],
		tbSchedule.Apr,
		tbSchedule.May,
		tbSchedule.Jun,
		tbSchedule.Jul,
		tbSchedule.Aug,
		tbSchedule.Sep,
		tbSchedule.Oct,
		tbSchedule.Nov,
		tbSchedule.[Dec],
		tbSchedule.Jan,
		tbSchedule.Feb,
		tbSchedule.Mar
				From ( select  p.ID as ID_Platform,
				p.PlatformName_EN,
				s.ID as ID_SubPlatform,
				s.SubPlatformName_EN,
				c.ID as ID_Course,
				c.CourseName,
				--c.TargetEmployeeID,
				-- i.Instructor_Name,
			   (select TOP(1) ii.Instructor_Name from LDMS_T_Class cc
				left join LDMS_M_Instructor ii
				on cc.ID_Instructor = ii.ID WHERE cc.ID_Course = c.ID ) as InstructorName,
				cl.ID as ID_Class,
			    cl.ClassID,
				CASE
				WHEN  MONTH(cl.LearnDateStart) = 4 AND YEAR(cl.LearnDateStart) = YEAR(GETDATE()) 
				THEN  cl.LearnDateStart
				ELSE null
				END as Apr,
				CASE
				WHEN  MONTH(cl.LearnDateStart) = 5 AND YEAR(cl.LearnDateStart) = YEAR(GETDATE()) 
				THEN  cl.LearnDateStart
				ELSE null
				END as May,
				CASE
				WHEN  MONTH(cl.LearnDateStart) = 6 AND YEAR(cl.LearnDateStart) = YEAR(GETDATE()) 
				THEN  cl.LearnDateStart
				ELSE null
				END as Jun,
				CASE
				WHEN  MONTH(cl.LearnDateStart) = 7 AND YEAR(cl.LearnDateStart) = YEAR(GETDATE()) 
				THEN  cl.LearnDateStart
				ELSE null
				END as Jul,
				CASE
				WHEN  MONTH(cl.LearnDateStart) = 8 AND YEAR(cl.LearnDateStart) = YEAR(GETDATE()) 
				THEN  cl.LearnDateStart
				ELSE null
				END as Aug,
				CASE
				WHEN  MONTH(cl.LearnDateStart) = 9 AND YEAR(cl.LearnDateStart) = YEAR(GETDATE()) 
				THEN  cl.LearnDateStart
				ELSE null
				END as Sep,
				CASE
				WHEN  MONTH(cl.LearnDateStart) = 10 AND YEAR(cl.LearnDateStart) = YEAR(GETDATE()) 
				THEN  cl.LearnDateStart
				ELSE null
				END as Oct,
				CASE
				WHEN  MONTH(cl.LearnDateStart) = 11 AND YEAR(cl.LearnDateStart) = YEAR(GETDATE()) 
				THEN  cl.LearnDateStart
				ELSE null
				END as Nov,
				CASE
				WHEN  MONTH(cl.LearnDateStart) = 12 AND YEAR(cl.LearnDateStart) = YEAR(GETDATE()) 
				THEN  cl.LearnDateStart
				ELSE null
				END as [Dec],
				CASE
				WHEN  MONTH(cl.LearnDateStart) = 1 AND YEAR(cl.LearnDateStart)+1 = YEAR(GETDATE())+1  
				THEN  cl.LearnDateStart
				ELSE null
				END as Jan,
				CASE
				WHEN  MONTH(cl.LearnDateStart) = 2 AND YEAR(cl.LearnDateStart)+1 = YEAR(GETDATE())+1  
				THEN  cl.LearnDateStart
				ELSE null
				END as Feb,
				CASE
				WHEN  MONTH(cl.LearnDateStart) = 3 AND YEAR(cl.LearnDateStart)+1 = YEAR(GETDATE())+1  
				THEN  cl.LearnDateStart
				ELSE null
				END as Mar
			  from LDMS_M_Platform p
		inner join LDMS_M_SubPlatform s
		on p.ID = s.ID_Platform
		inner join LDMS_M_SubPlatformCourse sc
		on s.ID = sc.ID_SubPlatform
		inner join LDMS_M_Course c
		on sc.ID_Course = c.ID  
		and ( @ID_Employee IN ( SELECT  * 
										FROM STRING_SPLIT ( 
											(Select TOP 1 CONVERT(varchar(max),u.TargetEmployeeID)
											 from LDMS_M_Course u
												 where ID = c.ID ), ',') )
												 
			  OR c.ID_SectionTarget = ( Select u.ID_Section from LDMS_M_User u WHERE u.EmployeeID = @ID_Employee)   
			  OR ( select top 1 CONVERT(varchar(max), u.ID_JobGrade ) from LDMS_M_User u WHERE u.EmployeeID = @ID_Employee ) 
			                          IN ( 
									 SELECT  * 
										FROM STRING_SPLIT ( 
											(Select TOP 1 CONVERT(varchar(max),u.JobGradeTargetID)
											 from LDMS_M_Course u
												 where ID = c.ID ), ','))
			  OR  ( select top 1 CONVERT(varchar(max), u.ID_JobTitle ) from LDMS_M_User u WHERE u.EmployeeID = @ID_Employee ) 
									IN (
									SELECT  * 
										FROM STRING_SPLIT ( 
											(Select TOP 1 CONVERT(varchar(max),u.JobTitleTargetID)
											 from LDMS_M_Course u
												 where ID = c.ID ), ',')
										)
			  
			  ) 

		left join LDMS_T_Class cl
		on c.ID = cl.ID_Course
		--left join LDMS_M_Instructor i
		--on cl.ID_Instructor = i.ID
		--left join LDMS_M_CodeLookUp code
		--on cl.ClassStatus = code.Code and code.FieldName = 'ClassStatus' 
		Where c.ID is not null
		      and cl.ID_Instructor is not null
			
		
			  and cl.IsActive = 1) tbSchedule

GROUP BY ID_Platform, 
		PlatformName_EN, 
		ID_SubPlatform, 
		SubPlatformName_EN, 
		ID_Course,
		CourseName, 
		InstructorName, 
		ID_Class, 
		ClassID,
		Apr, 
		May, 
		Jun, 
		Jul, 
		Aug, 
		Sep, 
		Oct, 
		Nov, 
		[Dec],
		Jan,
		Feb,
		Mar
		
ORDER BY ID_Course ASC
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_Class_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_Class_Select]
	 @paramCourseId nvarchar(50) = null,
	 @paramCourseName nvarchar(50) = null,
	 @paramCourseStatus varchar(1) = null,
	 @paramLearnMethod varchar(1) = null
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 AND class.[IsActive] = 1'

	IF @paramCourseId IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND course.[ID] = '+@paramCourseId+ ' '

	IF @paramCourseName IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND course.[CourseName] LIKE ''%'+@paramCourseName+ '%'' ' 
	
	IF @paramLearnMethod IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND course.[ID_LearnMethod] = ' + @paramLearnMethod + ' '

	IF @paramCourseStatus IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND course.IsActive = ' + @paramCourseStatus + ' '



	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @Sql = '  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
       class.[ID]
      ,class.[ClassID]
      ,course.CourseName
      ,instructor.Instructor_Name
	  ,class.[LearnDateStart]
	  ,register.RegisterDate    
      ,class.[ClassFee]
      ,class.[ClassCapacity] as Capacity
      ,room.VenueRoomID
	  ,room.RoomName_EN
      ,class.[ID_PlantVenue]
      ,code.StateName as ClassStatus
	  ,code.Description as StatusName
      ,class.[IsActive]
  FROM [LDMS_T_Class] class
  left join [LDMS_M_Instructor] instructor on class.ID_Instructor = instructor.ID
  inner join [LDMS_M_Course] course on class.ID_Course = course.ID
  left join [dbo].[LDMS_T_ClassRegistration] register on Class.ID = register.ID_Class and register.ID_Course = course.ID
  left join [dbo].[LDMS_M_VenueRoom] room on class.ID_VenueRoom = room.ID
  inner join [dbo].[LDMS_M_CodeLookUp] code on code.TableName = ''LDMS_T_Class'' and code.FieldName = ''ClassStatus'' and class.ClassStatus = code.Code ' + @RowFilter

    print (@Sql)
	exec (@Sql) 

	--WHERE c.IsActive = @paramCourseStatus

	/*AND  c.ID_LearnMethod = @paramLearnMethod OR @paramLearnMethod IS NOT NULL

	AND (1 =  CASE WHEN @paramCourseId IS NOT NULL AND @paramCourseId <> '' AND @paramCourseId <> ' ' THEN
				CASE WHEN UPPER(c.CourseID) like '%'+ UPPER(@paramCourseId) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)
    AND (1 =  CASE WHEN @paramCourseName IS NOT NULL AND @paramCourseName <> '' AND @paramCourseName <> ' ' THEN
				CASE WHEN UPPER(c.CourseName) like '%'+ UPPER(@paramCourseName) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)

	--AND ( @paramLearnMethod IS NOT NULL AND c.ID_LearnMethod = @paramLearnMethod )*/
			  
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_Class_Select_ByID]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_Class_Select_ByID]
	 @paramIDClass int 
	 
AS
BEGIN
	SELECT class.[ID]
      ,class.[ClassID]
      ,class.[ID_Course]
      ,class.[ID_Instructor]
      ,class.[ClassCapacity]
      ,class.[ClassFee]
      ,class.[LearnDateStart]
      ,class.[LearnTimeStart]
      ,class.[LearnDateEnd]
      ,class.[LearnTimeEnd]
      ,class.[RegisterDateStart]
      ,class.[RegisterDateEnd]
      ,class.[ID_PlantVenue]
      ,class.[ID_VenueRoom]
      ,class.[PlaceAndLocation]
      ,class.[ClassStatus]
      ,class.[IsAttend]
      ,class.[AttendNum]
      ,class.[IsTest]
      ,class.[TestFullScore]
      ,class.[TestPercentage]
      ,class.[IsSkill]
      ,class.[SkillFullScore]
      ,class.[SkillPercentage]
      ,class.[IsCoaching]
      ,class.[IsCertificate]
      ,class.[IsAttachCert]
      ,class.[CertificationRemark]
      ,class.[ReminderDurationDay]
      ,class.[CreateBy]
      ,class.[CreateDate]
      ,class.[UpdateBy]
      ,class.[UpdateDate]
      ,class.[IsActive]
	  ,course.CourseName
	  ,instructor.[Instructor_Name] as InstructorName
  FROM [dbo].[LDMS_T_Class] class
  inner join [LDMS_M_Course] course on class.ID_Course = course.ID
  left join [LDMS_M_Instructor] instructor on class.ID_Instructor = instructor.ID
  where class.[ID] = @paramIDClass			  

end


GO
/****** Object:  StoredProcedure [dbo].[sp_T_Class_SelectInfo]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec sp_T_Class_SelectInfo  1026
CREATE PROCEDURE [dbo].[sp_T_Class_SelectInfo]
	@ID int
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT c.[ID], c.[ClassID], c.[ClassCapacity], c.[ClassStatus], cs.[StateName] [ClassStatus_Name],
		c.[IsAttend], c.[AttendNum],
		c.[IsTest], c.[TestFullScore], c.[TestPercentage],
		c.[IsSkill], c.[SkillFullScore], c.[SkillPercentage],
		c.[IsCoaching], c.[IsCertificate], c.[IsAttachCert], c.[CertificationRemark],
		co.[CourseName], co.[CourseID],
		(SELECT COUNT(cr.[ID]) FROM [dbo].[LDMS_T_ClassRegistration] cr WHERE
			 cr.[ID_Class] = @ID AND cr.ID_Course = c.[ID_Course]) [Register_Count],
		(SELECT COUNT(cr.[ID]) FROM [dbo].[LDMS_T_ClassRegistration] cr WHERE cr.[RegisterStatus] IN (10, 20) 
			AND cr.[ID_Class] = @ID AND cr.ID_Course = c.[ID_Course]) [Waiting_Count],

		(SELECT COUNT(cr.[ID]) FROM [dbo].[LDMS_T_ClassRegistration] cr WHERE cr.[RegisterStatus] IN (70) 
			AND cr.[ID_Class] = @ID AND cr.ID_Course = c.[ID_Course]) [All_Count],

		(SELECT COUNT(sr.[ID]) FROM [dbo].[LDMS_T_ClassAttendAndResult] sr WHERE sr.[ID_Class] = @ID AND sr.ID_Course = c.[ID_Course] AND [LearningResult] = 70)  [Qualified_Count],
		(SELECT COUNT(sr.[ID]) FROM [dbo].[LDMS_T_ClassAttendAndResult] sr WHERE sr.[ID_Class] = @ID AND sr.ID_Course = c.[ID_Course])  [Attend_Count],
		(SELECT COUNT(sr.[ID]) FROM [dbo].[LDMS_T_ClassAttendAndResult] sr WHERE sr.[ID_Class] = @ID AND sr.ID_Course = c.[ID_Course] AND [PreTestScore] IS NOT NULL)  [PreTest_Count],
		(SELECT COUNT(sr.[ID]) FROM [dbo].[LDMS_T_ClassAttendAndResult] sr WHERE sr.[ID_Class] = @ID AND sr.ID_Course = c.[ID_Course] AND [PostTestScore] IS NOT NULL)  [PostTest_Count],
		(SELECT COUNT(sr.[ID]) FROM [dbo].[LDMS_T_ClassAttendAndResult] sr WHERE sr.[ID_Class] = @ID AND sr.ID_Course = c.[ID_Course] AND [SkillScore] IS NOT NULL)  [Skill_Count],
		(SELECT COUNT(sr.[ID]) FROM [dbo].[LDMS_T_ClassAttendAndResult] sr WHERE sr.[ID_Class] = @ID AND sr.ID_Course = c.[ID_Course] AND [CoachingStatus] = 1)  [Coach_Count],
		(SELECT COUNT(sr.[ID]) FROM [dbo].[LDMS_T_ClassAttendAndResult] sr WHERE sr.[ID_Class] = @ID AND sr.ID_Course = c.[ID_Course] AND [CertificateStatus] = 1)  [Cert_Count]

	FROM [dbo].[LDMS_T_Class] c
		LEFT JOIN [dbo].[LDMS_M_CodeLookUp] cs ON cs.[FieldName] = 'ClassStatus' AND cs.[Code] = c.[ClassStatus]
		LEFT JOIN [dbo].[LDMS_M_Course] co ON co.[ID] = c.[ID_Course]
	WHERE c.[ID] = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_Class_Update]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_Class_Update]
	-- Add the parameters for the stored procedure here 
	@paramIDCLass int,
	-- @paramClassID			nvarchar(50),                               
	@paramID_Course		int,                                      
	@paramID_Instructor		int,                          
	@paramClassCapacity		int,                          
	@paramClassFee		decimal(8,2),                              
	@paramLearnDateStart		date,                        
	@paramLearnTimeStart		nvarchar(7),                     
	@paramLearnDateEnd		date,                                  
	@paramLearnTimeEnd		nvarchar(7),                               
	@paramRegisterDateStart		date,                     
	@paramRegisterDateEnd		date,                       
	@paramID_PlantVenue		int,                          
	@paramID_VenueRoom		int,                                   
	@paramPlaceAndLocation		nvarchar(200),             
	@paramClassStatus		int,                                    
	@paramIsAttend		int,                                   
	@paramAttendNum		int,                                      
	@paramIsTest		int,                                     
	@paramTestFullScore		int,                          
	@paramTestPercentage		int,                         
	@paramIsSkill		int,                                    
	@paramSkillFullScore		int,                         
	@paramSkillPercentage		int,                        
	@paramIsCoaching		int,                                 
	@paramIsCertificate		int,                      
	@paramIsAttachCert		int,                               
	@paramCertificationRemark		nvarchar(100),          
	@paramReminderDurationDay		int,   
	@paramUpdateBy		nvarchar(50),                              
	@paramIsActive		int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	UPDATE [dbo].[LDMS_T_Class]
	SET 
       [ID_Course] =		@paramID_Course
      ,[ID_Instructor] =	@paramID_Instructor	
      ,[ClassCapacity] =	@paramClassCapacity	
      ,[ClassFee] =		@paramClassFee		
      ,[LearnDateStart] =	@paramLearnDateStart	
      ,[LearnTimeStart] =	@paramLearnTimeStart	
      ,[LearnDateEnd] =		@paramLearnDateEnd	
      ,[LearnTimeEnd] =		@paramLearnTimeEnd	
      ,[RegisterDateStart] =	@paramRegisterDateStart	
      ,[RegisterDateEnd] =	@paramRegisterDateEnd	
      ,[ID_PlantVenue] =	@paramID_PlantVenue	
      ,[ID_VenueRoom] =		@paramID_VenueRoom	
      ,[PlaceAndLocation] =	@paramPlaceAndLocation	
      ,[ClassStatus] =		@paramClassStatus	
      ,[IsAttend] =		@paramIsAttend		
      ,[AttendNum] =		@paramAttendNum		
      ,[IsTest] =		@paramIsTest		
      ,[TestFullScore] =	@paramTestFullScore	
      ,[TestPercentage] =	@paramTestPercentage	
      ,[IsSkill] =		@paramIsSkill		
      ,[SkillFullScore] =	@paramSkillFullScore	
      ,[SkillPercentage] =	@paramSkillPercentage	
      ,[IsCoaching] =		@paramIsCoaching	
      ,[IsCertificate] =	@paramIsCertificate	
      ,[IsAttachCert] =		@paramIsAttachCert	
      ,[CertificationRemark] =	@paramCertificationRemark
      ,[ReminderDurationDay] =	@paramReminderDurationDay
      ,[UpdateBy] =		@paramUpdateBy		
      ,[UpdateDate] =		getdate()
      ,[IsActive] =		@paramIsActive	
    WHERE [ID] = @paramIDCLass

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

	SELECT * from [LDMS_T_Class] where [ID] = @paramIDCLass
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_Class_UpdateStatus]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_T_Class_UpdateStatus]
	@ID int,
	@ClassStatus int,
	@UpdateBy varchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;

    UPDATE [dbo].[LDMS_T_Class] SET
		[ClassStatus] = @ClassStatus, [UpdateBy] = @UpdateBy, [UpdateDate] = GETDATE()
	WHERE [ID] = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_ClassAttendandResult_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_T_ClassAttendandResult_Insert]
	@ID_Class int,
    @ID_Course int,
    @EmployeeID nvarchar(50),
    @ClassState int = NULL,
    @LearningResult int = NULL,
    @AttendCountNum tinyint = NULL,
    @IsScanRFID tinyint = NULL,
    @PreTestScore int = NULL,
    @PostTestScore int = NULL,
    @SkillScore int = NULL,
    @CoachingStatus tinyint = NULL,
    @CertificateStatus tinyint = NULL,
    @CreateBy nvarchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;

	IF NOT EXISTS(SELECT [ID] FROM [dbo].[LDMS_T_ClassAttendAndResult] 
		WHERE [ID_Class] = @ID_Class AND [ID_Course] = @ID_Course AND [EmployeeID] = @EmployeeID)
	 BEGIN
		INSERT INTO [dbo].[LDMS_T_ClassAttendAndResult]
			   ([ID_Class]
			   ,[ID_Course]
			   ,[EmployeeID]
			   ,[ClassState]
			   ,[LearningResult]
			   ,[AttendCountNum]
			   ,[IsScanRFID]
			   ,[PreTestScore]
			   ,[PostTestScore]
			   ,[SkillScore]
			   ,[CoachingStatus]
			   ,[CertificateStatus]
			   ,[CreateBy]
			   ,[CreateDate]
			   ,[UpdateBy]
			   ,[UpdateDate])
		 VALUES
			   (@ID_Class
			   ,@ID_Course
			   ,@EmployeeID
			   ,@ClassState
			   ,@LearningResult
			   ,@AttendCountNum
			   ,@IsScanRFID
			   ,@PreTestScore
			   ,@PostTestScore
			   ,@SkillScore
			   ,@CoachingStatus
			   ,@CertificateStatus
			   ,@CreateBy
			   ,GETDATE()
			   ,@CreateBy
			   ,GETDATE())
	 END
	ELSE
	 BEGIN
		UPDATE [dbo].[LDMS_T_ClassAttendAndResult] SET 
			   [AttendCountNum] = @AttendCountNum
			   ,[PreTestScore] = @PreTestScore
			   ,[PostTestScore] = @PostTestScore
			   ,[SkillScore] = @SkillScore
			   ,[UpdateBy] = @CreateBy
			   ,[UpdateDate] = GETDATE()
		WHERE [ID_Class] = @ID_Class AND [ID_Course] = @ID_Course AND [EmployeeID] = @EmployeeID
	 END


END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_ClassCertificate_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_T_ClassCertificate_Insert]
			@paramID_Class		int
           ,@paramID_Course		int
           ,@paramID_Employee		int
           ,@paramCertificate_Path	nvarchar(100)
           ,@paramDescription		nvarchar(100)
           ,@paramCreateBy		nvarchar(50)
           
           
               
           
AS
BEGIN
	
	SET NOCOUNT ON;

   INSERT INTO [dbo].[LDMS_T_ClassCertificate]
           ([ID_Class]
           ,[ID_Course]
           ,[EmployeeID]
           ,[Certificate_Path]
           ,[Description]
           ,[CreateBy]
           ,[CreateDate]
           ,[UpdateBy]
           ,[UpdateDate])
     VALUES
           (@paramID_Class		
           ,@paramID_Course		
           ,@paramID_Employee		
           ,@paramCertificate_Path	
           ,@paramDescription		
           ,@paramCreateBy		
           ,getdate()		
           ,@paramCreateBy		
           ,getdate())

	SELECT @@IDENTITY [ID]

END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_ClassCertificate_InsertU]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC [sp_T_ClassCertificate_InsertU] 1026, 30, '5033669994', '\Uploads\Certificate\202005\202005020157307757_56178466_592554034581374_4725314240146046976_n.jpg', '', '2020-05-29', 'STT00001'
CREATE PROCEDURE [dbo].[sp_T_ClassCertificate_InsertU]
	@ID_Class int,
    @ID_Course int,
    @EmployeeID nvarchar(50),
    @Certificate_Path nvarchar(500),
    @Description nvarchar(100),
	@ExpireDate varchar(30) = NULL,
    @CreateBy nvarchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;

	IF NOT EXISTS(SELECT [ID] FROM [dbo].[LDMS_T_ClassCertificate] 
		WHERE [ID_Class] = @ID_Class AND [ID_Course] = @ID_Course AND [EmployeeID] = @EmployeeID)
	 BEGIN
		INSERT INTO [dbo].[LDMS_T_ClassCertificate]
			   ([ID_Class]
			   ,[ID_Course]
			   ,[EmployeeID]
			   ,[Certificate_Path]
			   ,[ExpireDate]
			   ,[CreateBy]
			   ,[CreateDate]
			   ,[UpdateBy]
			   ,[UpdateDate])
		 VALUES
			   (@ID_Class
			   ,@ID_Course
			   ,@EmployeeID
			   ,@Certificate_Path
			   ,CONVERT(datetime, @ExpireDate, 126)
			   ,@CreateBy
			   ,GETDATE()
			   ,@CreateBy
			   ,GETDATE())
	 END
	ELSE
	 BEGIN
		UPDATE [dbo].[LDMS_T_ClassCertificate] SET
			[Certificate_Path] = @Certificate_Path, [ExpireDate] = CONVERT(datetime, @ExpireDate, 126) , [UpdateBy] = @CreateBy, [UpdateDate] = GETDATE()
		WHERE [ID_Class] = @ID_Class AND [ID_Course] = @ID_Course AND [EmployeeID] = @EmployeeID
	 END


END

SELECT  CONVERT(datetime, '2020-05-29', 126)
GO
/****** Object:  StoredProcedure [dbo].[sp_T_ClassReg_Select_ByID_Course]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_ClassReg_Select_ByID_Course]
	 @ID_Course int 
	 
AS
BEGIN
	SELECT p.ID
      ,p.PlatformName_EN
      ,s.SubPlatformName_EN
      ,course.ID as ID_Course 
      ,class.[ID] as ID_Class
      ,class.[ClassID]
      ,course.CourseName
      ,instructor.Instructor_Name as InstructorName
	  ,class.[LearnDateStart]
	  ,class.[LearnTimeStart]
	  ,class.[LearnTimeEnd]
      ,class.[ClassCapacity] as Capacity
      ,room.VenueRoomID
	  ,room.RoomName_EN
  FROM LDMS_M_Platform p
		left join LDMS_M_SubPlatform s
		on p.ID = s.ID_Platform
		left join LDMS_M_SubPlatformCourse sc
		on s.ID = sc.ID_SubPlatform
		left join LDMS_M_Course course
		on sc.ID_Course = course.ID
		left join [LDMS_T_Class] class
		on course.ID = class.ID_Course
		left join [LDMS_M_Instructor] instructor 
		on class.ID_Instructor = instructor.ID
		
		left join [LDMS_M_VenueRoom] room 
		on class.ID_VenueRoom = room.ID
 
  WHERE 1=1 AND class.IsActive = 1 AND
       ( course.ID = @ID_Course OR @ID_Course IS NULL)

end
GO
/****** Object:  StoredProcedure [dbo].[sp_T_ClassReg_Select_ByID_Department]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_ClassReg_Select_ByID_Department]
	 @ID_Department int,
	 @ID_Course int,
	 @Month nvarchar(5)
	 
AS
BEGIN
	

/*DECLARE @paramCourseID nvarchar(50)
DECLARE @paramMonth nvarchar(50)
--DECLARE @paramClass_ID nvarchar(50)
DECLARE @paramDepartment_ID nvarchar(50)


---- Debug: Start
SET @paramCourseID = 30
SET @paramMonth = 4
--SET @paramClass_ID = 1026
SET @paramDepartment_ID = 40
---- Debug: End*/

SELECT --* 
	mc.CourseID			as CourseID
	,mc.CourseName		as CourseName
	,tc.ClassID				as ClassID
	,tc.ClassCapacity		as Capacity
	,(SELECT Count(ID) FROM LDMS_T_ClassRegistration 
				WHERE ID_CLass = tc.ID AND RegisterStatus = 10) 
				as Registered
	,(SELECT Count(ID) FROM LDMS_T_ClassRegistration 
				WHERE ID_CLass = tc.ID AND RegisterStatus = 20) 
				as  Waiting
	,(SELECT Count(ID) FROM LDMS_T_ClassRegistration 
				WHERE ID_CLass = tc.ID AND RegisterStatus = 70) 
				as Approved
	,tc.LearnDateStart		
	,tc.LearnDateEnd		
	,tc.LearnTimeStart		
	,tc.LearnTimeEnd		
	,mpt.PlantName_EN		
	,mv.RoomName_EN			
	,tc.PlaceAndLocation	
	,mu.EmployeeID			as EmployeeID
	,mu.Name + '' +	mu.Surname	as EmployeeName	
	,mj.JobGradeName_EN	
	,mt.JobTitleName_EN 
FROM LDMS_T_Class tc
	INNER JOIN LDMS_M_Course mc on tc.ID_Course = mc.ID
	INNER JOIN LDMS_T_ClassRegistration tcr on tcr.ID_Class = tc.ID
	INNER JOIN LDMS_M_User mu on mu.EmployeeID = tcr.EmployeeID
	INNER JOIN LDMS_M_JobGrade mj on mj.ID = mu.ID_JobGrade
	INNER JOIN LDMS_M_JobTitle mt on mt.ID = mu.ID_JobTitle
	--INNER JOIN LDMS_M_SubPlatformCourse mspc on mspc.ID_Course = mc.ID
	--INNER JOIN LDMS_M_SubPlatform msp on msp.ID = mspc.ID_SubPlatform
	--INNER JOIN LDMS_M_Platform mp on mp.ID = msp.ID_Platform
	LEFT JOIN LDMS_M_Plant mpt on tc.ID_PlantVenue = mpt.ID
	LEFT JOIN LDMS_M_VenueRoom mv on tc.ID_VenueRoom = mv.ID 

	
WHERE mc.ID = @ID_Course --tc.ID = @paramClass_ID
	AND mu.ID_Department = @ID_Department
	AND MONTH(tc.LearnDateStart) = @Month
	order by mc.CourseID ASC	 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_T_ClassRegisteration_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC [sp_T_ClassRegisteration_Select] 30, 1026
CREATE PROCEDURE [dbo].[sp_T_ClassRegisteration_Select]
	@ID_Course int = NULL,
	@ID_Class int = NULL,
	@EmployeeID nvarchar(50) = NULL,
	@EmployeeName nvarchar(200) = NULL,
	@DepartmentName nvarchar(100) = NULL
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT c.[ID], c.[ID_Class], c.[ID_Course], c.[EmployeeID], c.[RegisterStatus],  rs.[StateName] [RegisterStatus_Name],
		c.[RemarkManager], c.[RemarkAdmin], c.[RegisterDate], c.[UpdateBy], c.[UpdateDate],

		u.[Name], u.[Surname], d.[DepartmentName_EN], d.[DepartmentName_TH], j.[JobGradeName_EN], j.[JobGradeName_TH],
		r.[ID] [Attend], r.[ClassState], cs.[StateName] [ClassState_Name],
		r.[LearningResult], ls.[StateName] [LearningResult_Name],
		r.[LearningResult], r.[AttendCountNum], r.[AttendTimeStamp], r.[IsScanRFID],
		r.[PreTestScore], r.[PostTestScore], r.[SkillScore], r.[CoachingStatus], os.[StateName] [CoachingStatus_Name],
		r.[CertificateStatus], ts.[StateName] [CertificateStatus_Name],
		
		REPLACE(cr.[Certificate_Path], '\', '/') [Certificate_Path], cr.CertificateName, CONVERT(varchar(20),cr.[ExpireDate],103) [ExpireDate] , FORMAT(cr.[ExpireDate], 'yyyy-MM-dd') [ExpireDate_S]

	FROM [dbo].[LDMS_T_ClassRegistration] c
		LEFT JOIN [dbo].[LDMS_M_User] u ON u.[EmployeeID] = c.[EmployeeID]
		LEFT JOIN [dbo].[LDMS_M_Department] d ON d.[ID] = u.[ID_Department]
		LEFT JOIN [dbo].[LDMS_M_JobGrade] j ON j.[ID] = u.[ID_JobGrade]

		LEFT JOIN [dbo].[LDMS_T_ClassAttendAndResult] r ON r.[ID_Course] = c.[ID_Course]
			AND r.[ID_Class] = c.[ID_Class] AND r.[EmployeeID] = c.[EmployeeID]

		LEFT JOIN [dbo].[LDMS_T_ClassCertificate] cr ON cr.[ID_Course] = c.[ID_Course]
			AND cr.[ID_Class] = c.[ID_Class] AND cr.[EmployeeID] = c.[EmployeeID]

		LEFT JOIN [dbo].[LDMS_M_CodeLookUp] rs ON rs.[Code] = c.[RegisterStatus] AND rs.[FieldName] = 'RegisterStatus' 
		LEFT JOIN [dbo].[LDMS_M_CodeLookUp] cs ON cs.[Code] = r.[ClassState] AND cs.[FieldName] = 'ClassState' 
		LEFT JOIN [dbo].[LDMS_M_CodeLookUp] os ON os.[Code] = r.[CoachingStatus] AND os.[FieldName] = 'CoachingStatus' 
		LEFT JOIN [dbo].[LDMS_M_CodeLookUp] ts ON ts.[Code] = r.[CertificateStatus] AND ts.[FieldName] = 'CertificateStatus' 
		LEFT JOIN [dbo].[LDMS_M_CodeLookUp] ls ON ls.[Code] = r.[LearningResult] AND ls.[FieldName] = 'LearningResult' 

	WHERE ( c.[ID_Course] = @ID_Course OR @ID_Course IS NULL) AND
		( c.[ID_Class] = @ID_Class OR @ID_Class IS NULL) AND
		( u.[EmployeeID] LIKE @EmployeeID+'%' OR @EmployeeID IS NULL) AND
		( u.[Name] +' '+ u.[Surname] LIKE @EmployeeName+'%' OR @EmployeeName IS NULL) AND
		( d.[DepartmentName_EN] LIKE @DepartmentName+'%' OR d.[DepartmentName_TH] LIKE @DepartmentName+'%' OR @DepartmentName IS NULL)
		AND c.[RegisterStatus] IN (10, 20, 70)

	ORDER BY c.[EmployeeID] ASC

END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_ClassRegisteration_SelectEmployeeForClose]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--EXEC sp_T_ClassRegisteration_SelectEmployeeForClose 30, 1026
CREATE PROCEDURE [dbo].[sp_T_ClassRegisteration_SelectEmployeeForClose]
	@ID_Course int = NULL,
	@ID_Class int = NULL
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT c.[ID], c.[ID_Class], c.[ID_Course], c.[EmployeeID], c.[RegisterStatus],  rs.[StateName] [RegisterStatus_Name],
		c.[RemarkManager], c.[RemarkAdmin], c.[RegisterDate], c.[UpdateBy], c.[UpdateDate],

		u.[Name], u.[Surname], d.[DepartmentName_EN], d.[DepartmentName_TH], j.[JobGradeName_EN], j.[JobGradeName_TH], 
		s.[SectionName_EN], s.[SectionName_TH], t.[JobTitleName_EN], t.[JobTitleName_TH]

	FROM [dbo].[LDMS_T_ClassRegistration] c
		INNER JOIN [dbo].[LDMS_M_User] u ON u.[EmployeeID] = c.[EmployeeID]
		LEFT JOIN [dbo].[LDMS_M_Department] d ON d.[ID] = u.[ID_Department]
		LEFT JOIN [dbo].[LDMS_M_Section] s ON s.[ID] = u.[ID_Section]

		LEFT JOIN [dbo].[LDMS_M_JobGrade] j ON j.[ID] = u.[ID_JobGrade]
		LEFT JOIN [dbo].[LDMS_M_JobTitle] t ON t.[ID] = u.[ID_JobTitle]

		LEFT JOIN [dbo].[LDMS_M_CodeLookUp] rs ON rs.[Code] = c.[RegisterStatus] AND rs.[FieldName] = 'RegisterStatus' 
	

	WHERE c.[ID_Course] = @ID_Course AND c.[ID_Class] = @ID_Class 
		AND c.[RegisterStatus] IN (10, 20)

	ORDER BY c.[EmployeeID] ASC

END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_ClassRegistration_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_T_ClassRegistration_Insert]
			@paramID_Class			int
           ,@paramID_Course			int
           ,@paramID_Employee		nvarchar(50)
           ,@paramRegisterStatus	int
           ,@paramRemarkManager		nvarchar(50)
           ,@paramRegisterDate		datetime
           ,@paramUpdateBy			nvarchar(50)
           ,@paramRemarkAdmin		nvarchar(50)	        
           
           
AS
BEGIN
	
	SET NOCOUNT ON;

   INSERT INTO [dbo].[LDMS_T_ClassRegistration]
           ([ID_Class]
           ,[ID_Course]
           ,[EmployeeID]
           ,[RegisterStatus]
           ,[RemarkManager]
           ,[RegisterDate]
           ,[UpdateBy]
           ,[UpdateDate]
           ,[RemarkAdmin])
     VALUES
           (@paramID_Class	
           ,@paramID_Course	
           ,@paramID_Employee	
           ,@paramRegisterStatus
           ,@paramRemarkManager	
           ,@paramRegisterDate	
           ,@paramUpdateBy	
           ,getdate()	
           ,@paramRemarkAdmin)

	SELECT @@IDENTITY [ID]

END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_ClassRegistration_Update]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_ClassRegistration_Update]
	-- Add the parameters for the stored procedure here 
	@paramIDCLassREgister int,
	@paramID_Class		int,
	@paramID_Course		int,
	@paramID_Employee	int,
	@paramRegisterStatus	int,
	@paramRemarkManager	nvarchar(50),
	@paramRegisterDate	datetime,
	@paramUpdateBy		nvarchar(50),
	@paramUpdateDate	datetime,
	@paramRemarkAdmin	nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	UPDATE [dbo].[LDMS_T_ClassRegistration]
   SET [ID_Class] =			@paramID_Class		
      ,[ID_Course] =		@paramID_Course			
      ,[EmployeeID] =		@paramID_Employee		
      ,[RegisterStatus] =	@paramRegisterStatus		
      ,[RemarkManager] =	@paramRemarkManager		
      ,[RegisterDate] =		@paramRegisterDate		
      ,[UpdateBy] =			@paramUpdateBy		
      ,[UpdateDate] =		@paramUpdateDate		
      ,[RemarkAdmin] =		@paramRemarkAdmin
    WHERE [ID] = @paramIDCLassREgister

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

	SELECT 1
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_ClassRegistration_UpdateStatus]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_T_ClassRegistration_UpdateStatus]
	@ID_Class int,
	@ID_Course int,
	@EmployeeID nvarchar(50),
	@RegisterStatus int,
	@UpdateBy nvarchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;

    UPDATE [dbo].[LDMS_T_ClassRegistration] SET
		[RegisterStatus] = @RegisterStatus, [UpdateBy] = @UpdateBy, [UpdateDate] = GETDATE()
	WHERE [ID_Class] = @ID_Class AND [ID_Course] = @ID_Course AND [EmployeeID] = @EmployeeID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_ClassRegistration_UpdateStatus_ManagerReject]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_T_ClassRegistration_UpdateStatus_ManagerReject]
	@ID_Class int,
	@ID_Course int,
	@EmployeeID nvarchar(50),
	@RegisterStatus int,
	@RemarkManager nvarchar(200),
	@UpdateBy nvarchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;

    UPDATE [dbo].[LDMS_T_ClassRegistration] SET
		[RegisterStatus] = @RegisterStatus, 
		[RemarkManager] = @RemarkManager,
		[UpdateBy] = @UpdateBy, 
		[UpdateDate] = GETDATE()
	WHERE [ID_Class] = @ID_Class AND [ID_Course] = @ID_Course AND [EmployeeID] = @EmployeeID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_ClassRegistrationJson_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_T_ClassRegistrationJson_Insert]
	-- Add the parameters for the stored procedure here 
	@json NVARCHAR(max),
	@EmployeeID  NVARCHAR(20)
AS
BEGIN

	 INSERT INTO [dbo].[LDMS_T_ClassRegistration]
           ([ID_Class]
           ,[ID_Course]
           ,[EmployeeID]
           ,[RegisterStatus]
           ,[RemarkManager]
           ,[RegisterDate]
           ,[RemarkAdmin]
		   )
     SELECT 
			ID_Class
           ,ID_Course
           ,@EmployeeID
           ,'10'
           ,''
           ,GETDATE()
           ,''
		   FROM OPENJSON(@json)
			WITH (
			  ID_Class       int 
			, ID_Course      int
			-- , EmployeeID     nvarchar(20)
			-- , RegisterStatus nvarchar(20)
			-- , RemarkManager  nvarchar(200)
			-- , RegisterDate   Datetime
			-- , RemarkAdmin    nvarchar(200)
			) AS jsonValues


	SELECT  1
	--SELECT @@IDENTITY [ID]

END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_Coaching_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_T_Coaching_Insert]
	@ID_Class int,
    @ID_Course int,
    @EmployeeID nvarchar(50),
	@CoachingStatus tinyint,
	@CreateBy nvarchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;

	IF NOT EXISTS(SELECT [ID] FROM [dbo].[LDMS_T_Coaching] 
		WHERE [ID_Class] = @ID_Class AND [ID_Course] = @ID_Course AND [EmployeeID] = @EmployeeID)
	 BEGIN
		INSERT INTO [dbo].[LDMS_T_Coaching]
			   ([ID_Class]
			   ,[ID_Course]
			   ,[EmployeeID]
			   ,[CoachingStatus]
			   ,[Topic]
			   ,[AssignDate]
			   ,[CreateBy]
			   ,[CreateDate]
			   ,[UpdateBy]
			   ,[UpdateDate])
		 VALUES
			   (@ID_Class
			   ,@ID_Course
			   ,@EmployeeID
			   ,@CoachingStatus
			   ,NULL
			   ,NULL
			   ,@CreateBy
			   ,GETDATE()
			   ,@CreateBy
			   ,GETDATE())
	 END


END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_Coaching_Select_Paging]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_Coaching_Select_Paging]
	 @ID_Plant nvarchar(50) = null,
	 @ID_Center nvarchar(50) = null,
	 @ID_Division nvarchar(50) = null,
	 @ID_Department nvarchar(50) = null,
	 @ID_Status nvarchar(50) = null,
	 @ID_Employee nvarchar(50) = null,
	 @ID_Platform nvarchar(20) = null,
	 @ID_UserLogin nvarchar(50) = null,
	 @PageNum  int = null,
	 @PageSize int = null,
	 @SortField varchar(100) = null,
	 @SortOrder varchar(4) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	IF @ID_Plant IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND u.[ID_Plant] = '+@ID_Plant+ ' '

	IF 	 @ID_Center IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND u.[ID_Center] = '+@ID_Center+ ' ' 
	
	IF @ID_Division IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND u.[ID_Division] = '+ @ID_Division + ' '

	IF @ID_Department IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND u.[ID_Department] = '+ @ID_Department + ' '

    IF @ID_Employee IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND u.[EmployeeID] = ''' + @ID_Employee + ''''


	IF @ID_Status IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND c.[CoachingStatus] = '+@ID_Status+ ' '


	IF @ID_Platform IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND sb.[ID_Platform] = '+@ID_Platform+ ' '

	
	SET @CountColumn = '[ID]'
	
	IF ISNULL(@SortField, '' ) = ''
		SET @SortField = '[UpdateDate] DESC'
	ELSE
		SET @SortField = @SortField+' '+ @SortOrder



	SET @sql = 'SELECT c.[ID]
				      ,sb.[SubPlatformName_EN]
					  ,c.[ID_Class]
					  ,c.[ID_Course]
					  ,co.[CourseName]
					  ,c.[EmployeeID]
					  ,col1.[StateName] + '' '' + u.[Name] + '' '' + u.[Surname] as EmployeeName
					  ,col.[StateName] as CoachingStatus
					  ,c.[Topic]
					  ,c.[AssignDate]
					  ,c.[UpdateDate]
				  FROM [dbo].[LDMS_T_Coaching] c
				  left join [dbo].[LDMS_T_Class] cls
				  on c.[ID_Class] = cls.ID
				  left join [dbo].[LDMS_M_Course] co
				  on cls.[ID_Course] = co.[ID]
				  left join [dbo].[LDMS_M_SubPlatformCourse] sc
				  on co.[ID] = sc.[ID_Course]
				  left join [dbo].[LDMS_M_SubPlatform] sb
				  on sc.[ID_SubPlatform] = sb.[ID]
				  left join [dbo].[LDMS_M_CodeLookUp] col
				  on c.CoachingStatus = col.Code AND  col.FieldName = ''CoachingStatus''
				  left join [dbo].[LDMS_M_User] u
				  on c.EmployeeID = u.EmployeeID
				  left join [dbo].[LDMS_M_CodeLookUp] col1
				  on u.Gender = col1.Code AND col1.FieldName = ''GENDER''' +  @RowFilter

	
	  exec dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn
  
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_Coaching_Update]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_Coaching_Update]
	-- Add the parameters for the stored procedure here 
 @ID_Coaching			int
,@Topic		            ntext
,@CoachingStatus		nvarchar(5)            
,@UpdateBy			    nvarchar(50) = NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	UPDATE [dbo].[LDMS_T_Coaching]
       SET [Topic]		= @Topic
		  ,[CoachingStatus]		= @CoachingStatus		
		  ,[UpdateBy]		= @UpdateBy		
		  ,[UpdateDate]		= getdate()		
		  
    WHERE [ID] = @ID_Coaching
	
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


	SELECT [ID]
      ,[ID_Class]
      ,[ID_Course]
      ,[EmployeeID]
      ,[CoachingStatus]
      ,[Topic]
      ,[AssignDate]
      ,[CreateBy]
      ,[CreateDate]
      ,[UpdateBy]
      ,[UpdateDate]
  FROM [dbo].[LDMS_T_Coaching]
  WHERE  [ID] = @ID_Coaching
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_CoachingByID_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[sp_T_CoachingByID_Select]
	 @ID_Coaching nvarchar(10) = null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	IF ISNULL(@ID_Coaching,'') <> ''
		SET @RowFilter = @RowFilter + ' AND c.[ID] = ' + @ID_Coaching + ''

	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @Sql = 'SELECT c.[ID]
					  ,p.[PlatformName_EN] 
				      ,sb.[SubPlatformName_EN]
					  ,c.[ID_Class]
					  ,c.[ID_Course]
					  ,co.[CourseName]
					  ,c.[EmployeeID]
					  ,col1.[StateName] + '' '' + u.[Name] + '' '' + u.[Surname] as EmployeeName
					  ,t.[JobTitleName_EN] as Position					 
					  ,c.[CoachingStatus]
					  ,c.[Topic]
					  ,c.[AssignDate]
					  ,c.[UpdateDate]
				  FROM [dbo].[LDMS_T_Coaching] c
				  left join [dbo].[LDMS_T_Class] cls
				  on c.[ID_Class] = cls.ID
				  left join [dbo].[LDMS_M_Course] co
				  on cls.[ID_Course] = co.[ID]
				  left join [dbo].[LDMS_M_SubPlatformCourse] sc
				  on co.[ID] = sc.[ID_Course]
				  left join [dbo].[LDMS_M_SubPlatform] sb
				  on sc.[ID_SubPlatform] = sb.[ID]
				  left join [dbo].[LDMS_M_CodeLookUp] col
				  on c.CoachingStatus = col.Code AND  col.FieldName = ''CoachingStatus''
				  left join [dbo].[LDMS_M_User] u
				  on c.EmployeeID = u.EmployeeID
				  left join [dbo].[LDMS_M_CodeLookUp] col1
				  on u.Gender = col1.Code AND col1.FieldName = ''GENDER''
				  left join [dbo].[LDMS_M_Platform] p
				  on sb.[ID_Platform] = p.ID
				  left join [dbo].[LDMS_M_JobTitle] t
				  on u.ID_JobTitle = t.ID ' + @RowFilter

    -- print @Sql;
	exec (@Sql) 
	
END

GO
/****** Object:  StoredProcedure [dbo].[sp_T_CoachingReviewDetail_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_CoachingReviewDetail_Insert]
	-- Add the parameters for the stored procedure here 
	@ID_CoachingReviewHead nvarchar(20),
	@PostDetail text,
	@AttachFilePath nvarchar(100) = null,
	@AttachFileName nvarchar(100) = null,
	@PostBy_EmployeeID  nvarchar(20) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	INSERT INTO [dbo].[LDMS_T_CoachingReviewDetail]
           (  [ID_CoachingReviewHead],
		      [PostDetail],
			  [AttachFilePath],
			  [AttachFileName],
			  [PostDate],
			  [PostBy_EmployeeID]
		 )
     VALUES
           (
		     @ID_CoachingReviewHead
			,@PostDetail
			,@AttachFilePath
			,@AttachFileName
            ,GETDATE()
            ,@PostBy_EmployeeID);

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

	SELECT @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_CoachingReviewDetail_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[sp_T_CoachingReviewDetail_Select]
	 @ID_CoachingReviewHead nvarchar(10) = null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	IF @ID_CoachingReviewHead IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND d.[ID_CoachingReviewHead] = ' + @ID_CoachingReviewHead + ''

	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @Sql = 'Select d.ID, 
					   d.ID_CoachingReviewHead, 
					   d.PostDetail, 
					   ISNULL(d.AttachFilePath, ''-'' ) as AttachFilePath,
					   ISNULL(d.AttachFileName, ''-'' ) as AttachFileName, 
					   d.PostDate, 
					   d.PostBy_EmployeeID 
					   from LDMS_T_CoachingReviewDetail d' + @RowFilter + ' ORDER BY d.PostDate ASC'

 
	exec (@Sql) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_CoachingReviewHead_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_CoachingReviewHead_Insert]
	-- Add the parameters for the stored procedure here 
	@ID_Coaching nvarchar(20),
	@EmployeeReport text,
	@AttachFilePath nvarchar(100) = null,
	@AttachFileName nvarchar(100) = null,
	@ID_PostByEmployee  nvarchar(20) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	INSERT INTO [dbo].[LDMS_T_CoachingReviewHead]
           (  [ID_Coaching],
		      [EmployeeReport],
			  [AttachFilePath],
			  [AttachFileName],
			  [PostDate],
			  [PostBy_EmployeeID]
		 )
     VALUES
           (
		     @ID_Coaching
			,@EmployeeReport
			,@AttachFilePath
			,@AttachFileName
            ,GETDATE()
            ,@ID_PostByEmployee);

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

	SELECT @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_CoachingReviewHead_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[sp_T_CoachingReviewHead_Select]
	 @ID_Coaching nvarchar(10) = null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	IF @ID_Coaching IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND h.[ID_Coaching] = ' + @ID_Coaching + ''

	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @Sql = 'Select h.ID, 
					   h.ID_Coaching, 
					   h.EmployeeReport, 
					   ISNULL(h.AttachFilePath, ''-'' ) as AttachFilePath,
					   ISNULL(h.AttachFileName, ''-'' ) as AttachFileName, 
					   h.PostDate, 
					   h.PostBy_EmployeeID 
					   from LDMS_T_CoachingReviewHead h' + @RowFilter

 
	exec (@Sql) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_CourseInfo_ByID_Course]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_CourseInfo_ByID_Course]
	 @ID_Course int 
	 
AS
BEGIN
	SELECT p.ID
      ,p.PlatformName_EN
      ,s.SubPlatformName_EN
      ,course.ID as ID_Course 
      ,course.CourseName
	  ,course.[Description]
	  ,course.Objective
	  ,course.OutLine
   
  FROM LDMS_M_Platform p
		left join LDMS_M_SubPlatform s
		on p.ID = s.ID_Platform
		left join LDMS_M_SubPlatformCourse sc
		on s.ID = sc.ID_SubPlatform
		left join LDMS_M_Course course
		on sc.ID_Course = course.ID
	
 
  WHERE 1=1 AND course.IsActive = 1 AND
      ( course.ID = @ID_Course OR @ID_Course IS NULL)
       

end
GO
/****** Object:  StoredProcedure [dbo].[sp_T_CourseTargetAudient_Search]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_CourseTargetAudient_Search]
	 @paramCourseId nvarchar(50) 
	 ,@paramPlantId nvarchar(50) 
	 ,@paramCenterId nvarchar(50) 
	 ,@paramDivisionId nvarchar(50) 
	 ,@paramDepartmentId nvarchar(50) 
	 ,@paramSectionId nvarchar(50) 

AS
BEGIN
	 
	 DECLARE @paramID_Course nvarchar(50) 

	------DEBUG : Start ------------
	 /*DECLARE @paramCourseId nvarchar(50) 
	 DECLARE @paramPlantId nvarchar(50) 
	 DECLARE @paramCenterId nvarchar(50) 
	 DECLARE @paramDivisionId nvarchar(50) 
	 DECLARE @paramDepartmentId nvarchar(50) 
	 DECLARE @paramSectionId nvarchar(50) 

	 SET @paramCourseId = 'LCO001'
	 SET @paramPlantId = '2'
	 SET @paramCenterId = '1'
	 SET @paramDivisionId = '1'
	 SET @paramDepartmentId = '7'
	 SET @paramSectionId = '221'
	------DEBUG : END ----------------*/

	SET @paramID_Course = (SELECT ID FROM LDMS_M_Course WHERE CourseID = @paramCourseId)


	SELECT mu.EmployeeID			as EmployeeID
			,mu.Name				as EmployeeName
			,mjg.JobGradeName_EN	as JobGrade
			,mjt.JobTitleName_EN	as JobTitle
			,mp.PlantName_EN		as Plant
			,mc.CenterName_EN		as Center
			,mdi.DivisionName_EN	as Division
			,mde.DepartmentName_EN	as Department
			,CASE
				WHEN (tcr.EmployeeID is not null) AND ((tca.EmployeeID is not null) or (tca.LearningResult = 99))
				THEN 'Registered' ---- Status: Register + On Progress + Qualified
				ELSE 'UnQualified' ---- Status: Not Register + UnQualified
				END as RegistStatus
	FROM LDMS_M_User mu
	INNER JOIN LDMS_M_UserRole mur on mu.EmployeeID = mur.EmployeeID
	INNER JOIN LDMS_M_JobGrade mjg on mjg.ID = mu.ID_JobGrade
	INNER JOIN LDMS_M_JobTitle mjt on mjt.ID = mu.ID_JobTitle
	INNER JOIN LDMS_M_Plant mp on mp.ID = mu.ID_Plant
	INNER JOIN LDMS_M_Center mc on mc.ID = mu.ID_Center
	INNER JOIN LDMS_M_Division mdi on mdi.ID = mu.ID_Division
	INNER JOIN LDMS_M_Department mde on mde.ID = mu.ID_Department
	LEFT JOIN LDMS_T_ClassAttendAndResult tca on tca.EmployeeID = mur.ID and tca.ID_Course = @paramID_Course
	LEFT JOIN LDMS_T_ClassRegistration tcr on tcr.EmployeeID = mur.ID and tcr.ID_Course = @paramID_Course
	WHERE mu.IsActive = 1
		AND ((mu.EmployeeID IN (SELECT EmployeeID FROM LDMS_T_CourseEmployee WHERE ID_Course = @paramID_Course )) 
				OR ((1 =  CASE WHEN @paramPlantId IS NOT NULL AND @paramPlantId <> '' AND @paramPlantId <> ' ' THEN
								CASE WHEN UPPER(mu.ID_Plant) like '%'+ UPPER(@paramPlantId) +'%' THEN 1 ELSE 0 END
								ELSE 1 END)
					AND (1 =  CASE WHEN @paramCenterId IS NOT NULL AND @paramCenterId <> '' AND @paramCenterId <> ' ' THEN
								CASE WHEN UPPER(mu.ID_Center) like '%'+ UPPER(@paramCenterId) +'%' THEN 1 ELSE 0 END
								ELSE 1 END)
					AND (1 =  CASE WHEN @paramDivisionId IS NOT NULL AND @paramDivisionId <> '' AND @paramDivisionId <> ' ' THEN
								CASE WHEN UPPER(mu.ID_Division) like '%'+ UPPER(@paramDivisionId) +'%' THEN 1 ELSE 0 END
								ELSE 1 END)
					AND (1 =  CASE WHEN @paramDepartmentId is NOT NULL AND @paramDepartmentId <> '' AND @paramDepartmentId<> ' ' THEN
								CASE WHEN UPPER(mu.ID_Department) like '%'+ UPPER(@paramDepartmentId) +'%' THEN 1 ELSE 0 END
								ELSE 1 END)
					AND (1 =  CASE WHEN @paramSectionId IS NOT NULL AND @paramSectionId <> '' AND @paramSectionId <> ' ' THEN
								CASE WHEN UPPER(mur.ID_Section) like '%'+ UPPER(@paramSectionId) +'%' THEN 1 ELSE 0 END
								ELSE 1 END))
					AND (mu.ID_JobGrade IN (SELECT jg.ID FROM LDMS_T_CourseJobGrade cj 
																INNER JOIN LDMS_M_JobGrade jg on cj.ID_JobGrade = jg.JobGradeID
																WHERE cj.ID_Course = @paramID_Course))
					AND (mu.ID_JobTitle IN (SELECT JT.ID FROM LDMS_T_CourseJobTitle ct
																INNER JOIN LDMS_M_JobTitle jt on ct.ID_JobTitle = jt.JobTitleID
																WHERE ID_Course = @paramID_Course))
					)

	GROUP BY mu.EmployeeID
			,mu.Name
			,mjg.JobGradeName_EN
			,mjt.JobTitleName_EN
			,mp.PlantName_EN
			,mc.CenterName_EN
			,mdi.DivisionName_EN
			,mde.DepartmentName_EN
			,tcr.EmployeeID
			,tca.EmployeeID
			,tca.LearningResult
			  
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_CourseTargetRemain]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_CourseTargetRemain]
	  @paramCourseId nvarchar(50) 
	 ,@paramPlantId nvarchar(50) 
	 ,@paramCenterId nvarchar(50) 
	 ,@paramDivisionId nvarchar(50) 
	 ,@paramDepartmentId nvarchar(50) 
	 ,@paramSectionId nvarchar(50) 

AS
BEGIN
	 
	 DECLARE @paramID_Course nvarchar(50) 

	------DEBUG : Start ------------
	/* DECLARE @paramCourseId nvarchar(50) 
	 DECLARE @paramPlantId nvarchar(50) 
	 DECLARE @paramCenterId nvarchar(50) 
	 DECLARE @paramDivisionId nvarchar(50) 
	 DECLARE @paramDepartmentId nvarchar(50) 
	 DECLARE @paramSectionId nvarchar(50) 

	 SET @paramCourseId = 'LCO001'
	 SET @paramPlantId = '2'
	 SET @paramCenterId = '1'
	 SET @paramDivisionId = '1'
	 SET @paramDepartmentId = '7'
	 SET @paramSectionId = '221'
	------DEBUG : END ----------------*/

	Select tb.Total,
        tb.ClassCapacity,
		(tb.Total - tb.ClassCapacity) as Remain
		From ( Select  count(EmployeeID) as Total, 
   (Select SUM(cl.ClassCapacity) 
   from LDMS_T_Class cl 
   WHERE cl.ID_Course = @paramID_Course ) as ClassCapacity
  from ( 
     SELECT mu.EmployeeID			as EmployeeID
			,mu.Name				as EmployeeName
			,mjg.JobGradeName_EN	as JobGrade
			,mjt.JobTitleName_EN	as JobTitle
			,mp.PlantName_EN		as Plant
			,mc.CenterName_EN		as Center
			,mdi.DivisionName_EN	as Division
			,mde.DepartmentName_EN	as Department
			,CASE
				WHEN (tcr.EmployeeID is not null) AND ((tca.EmployeeID is not null) or (tca.LearningResult = 99))
				THEN 'Registered' ---- Status: Register + On Progress + Qualified
				ELSE 'UnQualified' ---- Status: Not Register + UnQualified
				END as RegistStatus
	FROM LDMS_M_User mu
	INNER JOIN LDMS_M_UserRole mur on mu.EmployeeID = mur.EmployeeID
	INNER JOIN LDMS_M_JobGrade mjg on mjg.ID = mu.ID_JobGrade
	INNER JOIN LDMS_M_JobTitle mjt on mjt.ID = mu.ID_JobTitle
	INNER JOIN LDMS_M_Plant mp on mp.ID = mu.ID_Plant
	INNER JOIN LDMS_M_Center mc on mc.ID = mu.ID_Center
	INNER JOIN LDMS_M_Division mdi on mdi.ID = mu.ID_Division
	INNER JOIN LDMS_M_Department mde on mde.ID = mu.ID_Department
	LEFT JOIN LDMS_T_ClassAttendAndResult tca on tca.EmployeeID = mur.ID and tca.ID_Course = @paramID_Course
	LEFT JOIN LDMS_T_ClassRegistration tcr on tcr.EmployeeID = mur.ID and tcr.ID_Course = @paramID_Course
	WHERE mu.IsActive = 1
		AND ((mu.EmployeeID IN (SELECT EmployeeID FROM LDMS_T_CourseEmployee WHERE ID_Course = @paramID_Course )) 
				OR ((1 =  CASE WHEN @paramPlantId IS NOT NULL AND @paramPlantId <> '' AND @paramPlantId <> ' ' THEN
								CASE WHEN UPPER(mu.ID_Plant) like '%'+ UPPER(@paramPlantId) +'%' THEN 1 ELSE 0 END
								ELSE 1 END)
					AND (1 =  CASE WHEN @paramCenterId IS NOT NULL AND @paramCenterId <> '' AND @paramCenterId <> ' ' THEN
								CASE WHEN UPPER(mu.ID_Center) like '%'+ UPPER(@paramCenterId) +'%' THEN 1 ELSE 0 END
								ELSE 1 END)
					AND (1 =  CASE WHEN @paramDivisionId IS NOT NULL AND @paramDivisionId <> '' AND @paramDivisionId <> ' ' THEN
								CASE WHEN UPPER(mu.ID_Division) like '%'+ UPPER(@paramDivisionId) +'%' THEN 1 ELSE 0 END
								ELSE 1 END)
					AND (1 =  CASE WHEN @paramDepartmentId is NOT NULL AND @paramDepartmentId <> '' AND @paramDepartmentId<> ' ' THEN
								CASE WHEN UPPER(mu.ID_Department) like '%'+ UPPER(@paramDepartmentId) +'%' THEN 1 ELSE 0 END
								ELSE 1 END)
					AND (1 =  CASE WHEN @paramSectionId IS NOT NULL AND @paramSectionId <> '' AND @paramSectionId <> ' ' THEN
								CASE WHEN UPPER(mur.ID_Section) like '%'+ UPPER(@paramSectionId) +'%' THEN 1 ELSE 0 END
								ELSE 1 END))
					AND (mu.ID_JobGrade IN (SELECT jg.ID FROM LDMS_T_CourseJobGrade cj 
																INNER JOIN LDMS_M_JobGrade jg on cj.ID_JobGrade = jg.JobGradeID
																WHERE cj.ID_Course = @paramID_Course))
					AND (mu.ID_JobTitle IN (SELECT JT.ID FROM LDMS_T_CourseJobTitle ct
																INNER JOIN LDMS_M_JobTitle jt on ct.ID_JobTitle = jt.JobTitleID
																WHERE ID_Course = @paramID_Course))
					)

	GROUP BY mu.EmployeeID
			,mu.Name
			,mjg.JobGradeName_EN
			,mjt.JobTitleName_EN
			,mp.PlantName_EN
			,mc.CenterName_EN
			,mdi.DivisionName_EN
			,mde.DepartmentName_EN
			,tcr.EmployeeID
			,tca.EmployeeID
			,tca.LearningResult 
		) t
		WHERE t.RegistStatus = 'UnQualified' ) tb
			  
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_IDP_Master_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_IDP_Master_Insert]
	-- Add the parameters for the stored procedure here
	@ID_Assignee_Employee nvarchar(20),
	@ID_Assigner_Employee nvarchar(20),
	@IDP_StartDate Date,
	@IDP_EndDate Date,
	@IDP_Objective text
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
BEGIN TRANSACTION;
BEGIN TRY
	INSERT INTO [dbo].[LDMS_T_IDP]
           ([EmployeeID_Staff]
           ,[EmployeeID_Manager]
           ,[IDP_StartDate]
           ,[IDP_EndDate]
           ,[IDP_Objective]
           ,[IDP_Status]
           ,[CreateBy]
           ,[CreateDate]
           ,[UpdateBy]
           ,[UpdateDate]
           ,[ID_Department]
		   ,[ID_Division]
		   ,[ID_Center]
		   ,[ID_Plant])
     Select @ID_Assignee_Employee
           ,@ID_Assigner_Employee
           ,@IDP_StartDate
           ,@IDP_EndDate 
           ,@IDP_Objective
           ,10
           ,@ID_Assigner_Employee
           ,getdate()
           ,@ID_Assigner_Employee
           ,getdate()
           ,M_USER.ID_Department
		   ,M_USER.ID_Division
		   ,M_USER.ID_Center
		   ,M_USER.ID_Plant
	from [dbo].[LDMS_M_User] M_USER
	where M_USER.EmployeeID = @ID_Assigner_Employee

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

	SELECT @@IDENTITY [ID]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_IDP_Master_Select_Paging]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_IDP_Master_Select_Paging]
	-- Add the parameters for the stored procedure here
	@ID_Assigner_Employee nvarchar(20),
	@ID_Assignee_Employee nvarchar(20) = null,
	@ID_plant int = null,
	@ID_Center int = null,
	@ID_Division int = null,
	@ID_Department int = null,
	@ID_Status int = null,
	 @PageNum  int = null,
	 @PageSize int = null,
	 @SortField varchar(100) = null,
	 @SortOrder varchar(4) = null
	
AS
BEGIN
	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = concat(' where assigner.EmployeeID = ''',  @ID_Assigner_Employee , '''')
	if (@ID_Assignee_Employee is not null)	SET @RowFilter = concat(@RowFilter, ' and assignee.EmployeeID = ''',  @ID_Assignee_Employee, '''')
	if (@ID_plant is not null)	SET @RowFilter = concat(@RowFilter, ' and IDP.ID_Plant = ', @ID_plant  )
	if (@ID_Center is not null) SET @RowFilter = concat(@RowFilter, ' and IDP.ID_Center = ', @ID_Center  )
	if (@ID_Division is not null) SET @RowFilter = concat(@RowFilter, ' and IDP.ID_Division = ', @ID_Division  )
	if (@ID_Department is not null) SET @RowFilter = concat(@RowFilter, ' and IDP.ID_Department = ', @ID_Department  )
	if (@ID_Status <> '0') SET @RowFilter = concat(@RowFilter, ' and IDP.IDP_Status = ', @ID_Status  )
	-- debug select @RowFilter
	SET @CountColumn = '[ID]'
	
	SET @SortField = '[UpdateDate] DESC'

	SET @sql = concat('select IDP.ID as [ID], concat(assignee.Name, '' '', assignee.Surname) as EmployeeName, [dbo].[fn_ShowTimeLine](assignee.JoinDate , getdate()) as Service_Timeline,
[dbo].[fn_ShowTimeLine](IDP.IDP_StartDate, IDP.IDP_EndDate) as IDP_TimeLine,convert(varchar, IDP.IDP_StartDate, 106) as IDP_StartDate, convert(varchar, IDP.IDP_EndDate, 106) as IDP_EndDate,
IDP.IDP_Objective as Objective, Codelookup.statename, convert(varchar, isnull(IDP.UpdateDate, getdate()), 106) as [UpdateDate], JobTitle.JobTitleName_EN, assignee.ProfilePath , review.[Total Review] as TotalReview

from [dbo].[LDMS_M_User] assigner
inner join [dbo].[LDMS_T_IDP] IDP on assigner.EmployeeID = IDP.EmployeeID_Manager
left join [dbo].[LDMS_M_User] assignee on IDP.EmployeeID_Staff = assignee.EmployeeID
left join [dbo].[LDMS_M_JobTitle] JobTitle on assignee.ID_JobTitle = JobTitle.ID
left join [dbo].[LDMS_M_CodeLookUp] Codelookup on IDP.[IDP_Status] = Codelookup.code and Codelookup.FieldName = ''IDP_Status''
left join (
			Select ID_IDP, count(reviewhead.ID) as [Total Review] 
			from [dbo].[LDMS_T_IDP] IDP 
			left join [dbo].[LDMS_T_IDP_Topic] topic on IDP.ID = topic.[ID_IDP]
			left join [dbo].[LDMS_T_IDP_SubTopic] subtopic on topic.id = subtopic.[ID_IDP_Topic]
			left join [dbo].[LDMS_T_IDP_ReviewHead] reviewhead on subtopic.ID = reviewhead.ID_IDP_SubTopic
			group by ID_IDP
) review on review.ID_IDP = IDP.ID', @RowFilter)
	exec dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn

END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_IDP_ReviewDetail_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_IDP_ReviewDetail_Insert]
	-- Add the parameters for the stored procedure here 
	@ID_IDP_ReviewHead nvarchar(20),
	@PostDetail text,
	@AttachFilePath nvarchar(100) = null,
	@AttachFileName nvarchar(100) = null,
	@PostBy_EmployeeID  nvarchar(20) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	INSERT INTO [dbo].[LDMS_T_IDP_ReviewDetail]
           (  [ID_IDP_ReviewHead],
		      [PostDetail],
			  [AttachFilePath],
			  [AttachFileName],
			  [PostDate],
			  [PostBy_EmployeeID]
		 )
     VALUES
           (
		     @ID_IDP_ReviewHead
			,@PostDetail
			,@AttachFilePath
			,@AttachFileName
            ,GETDATE()
            ,@PostBy_EmployeeID);

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

	SELECT @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_IDP_ReviewDetail_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[sp_T_IDP_ReviewDetail_Select]
	 @ID_IDP_ReviewHead nvarchar(10) = null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	IF @ID_IDP_ReviewHead IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND d.[ID_IDP_ReviewHead] = ' + @ID_IDP_ReviewHead + ''

	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @Sql = 'Select d.ID, 
					   d.ID_IDP_ReviewHead, 
					   d.PostDetail, 
					   ISNULL(d.AttachFilePath, ''-'' ) as AttachFilePath,
					   ISNULL(d.AttachFileName, ''-'' ) as AttachFileName, 
					   d.PostDate, 
					   d.PostBy_EmployeeID 
					   from LDMS_T_IDP_ReviewDetail d' + @RowFilter + ' ORDER BY d.PostDate ASC'

 
	exec (@Sql) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_IDP_ReviewHead_CurrentSelect]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[sp_T_IDP_ReviewHead_CurrentSelect]
	 @ID_IDP_SubTopic nvarchar(10) = null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 AND h.ReviewStatus = 1'

	IF @ID_IDP_SubTopic IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND h.[ID_IDP_SubTopic] = ' + @ID_IDP_SubTopic + ''

	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @Sql = 'Select h.ID, 
					   h.ID_IDP_SubTopic, 
					   h.EmployeeReport, 
					   ISNULL(h.AttachFilePath, ''-'' ) as AttachFilePath,
					   ISNULL(h.AttachFileName, ''-'' ) as AttachFileName, 
					   h.PostDate, 
					   h.PostBy_EmployeeID,
					   h.ReviewStatus
					   from LDMS_T_IDP_ReviewHead h' + @RowFilter

 
	exec (@Sql) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_IDP_ReviewHead_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_IDP_ReviewHead_Insert]
	-- Add the parameters for the stored procedure here 
	@ID_IDP_SubTopic nvarchar(20),
	@EmployeeReport text,
	@AttachFilePath nvarchar(100) = null,
	@AttachFileName nvarchar(100) = null,
	@ID_PostByEmployee  nvarchar(20) = null,
	@ReviewStatus nvarchar(1) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	INSERT INTO [dbo].[LDMS_T_IDP_ReviewHead]
           (  [ID_IDP_SubTopic],
		      [EmployeeReport],
			  [AttachFilePath],
			  [AttachFileName],
			  [PostDate],
			  [PostBy_EmployeeID],
			  [ReviewStatus]
			  
		 )
     VALUES
           (
		     @ID_IDP_SubTopic
			,@EmployeeReport
			,@AttachFilePath
			,@AttachFileName
            ,GETDATE()
            ,@ID_PostByEmployee
			,@ReviewStatus);

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

	SELECT @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_IDP_ReviewHead_Select]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[sp_T_IDP_ReviewHead_Select]
	 @ID_IDP_SubTopic nvarchar(10) = null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	DECLARE @sql varchar(3000)
	
	DECLARE @CountColumn varchar(50)
	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	IF @ID_IDP_SubTopic IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND h.[ID_IDP_SubTopic] = ' + @ID_IDP_SubTopic + ''

	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @Sql = 'Select h.ID, 
					   h.ID_IDP_SubTopic, 
					   h.EmployeeReport, 
					   ISNULL(h.AttachFilePath, ''-'' ) as AttachFilePath,
					   ISNULL(h.AttachFileName, ''-'' ) as AttachFileName, 
					   h.PostDate, 
					   h.PostBy_EmployeeID,
					   h.ReviewStatus
					   from LDMS_T_IDP_ReviewHead h' + @RowFilter

 
	exec (@Sql) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_IDP_Select_Employee_ID]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_IDP_Select_Employee_ID]
	 @ID_Employee nvarchar(50) 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @sql varchar(3000)

	DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1 '

	--IF ISNULL(@ID_Employee, '') <> ''
		--SET @RowFilter = @RowFilter + ' AND i.EmployeeID_Staff = ' +  @ID_Employee + ''

	SELECT             i.ID,
	                   i.EmployeeID_Staff,
					   col1.[StateName] + ' ' + u.[Name] + ' ' + u.[Surname] as EmployeeName,
					   i.EmployeeID_Manager, 
					   i.IDP_StartDate, 
					   i.IDP_EndDate, 
					   i.IDP_Objective,
					   i.IDP_Status,
					   col.StateName as IDP_StatusName,
					   i.ID_Department,
					   t.JobTitleName_EN as Position
					   FROM LDMS_T_IDP i
					   left join [dbo].[LDMS_M_CodeLookUp] col
					   on i.IDP_Status = col.Code AND  col.FieldName = 'IDP_Status'
					   left join [dbo].[LDMS_M_User] u
					   on i.EmployeeID_Staff = u.EmployeeID
					   left join [dbo].[LDMS_M_CodeLookUp] col1
					   on u.Gender = col1.Code AND col1.FieldName = 'GENDER'
					   left join [dbo].[LDMS_M_JobTitle] t
					   on u.ID_JobTitle = t.ID 
					   WHERE i.EmployeeID_Staff = @ID_Employee

	
	 -- exec @sql
  
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_IDP_SubTopic_UpdateStatus]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_IDP_SubTopic_UpdateStatus]
	-- Add the parameters for the stored procedure here 
 @ID_IDP_SubTopic	    int
,@SubTopicStatus		nvarchar(5)            
,@UpdateBy			    nvarchar(50) = NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION;
BEGIN TRY
	UPDATE [dbo].[LDMS_T_IDP_SubTopic]
       SET [SubTopicStatus] = @SubTopicStatus		
		  ,[UpdateBy]		= @UpdateBy		
		  ,[UpdateDate]		= getdate()		
		  
    WHERE [ID] = @ID_IDP_SubTopic
	
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


	SELECT [ID]
      ,[ID_IDP_Topic]
      ,[HowToDevelopment]
      ,[ExpectedOutcom]
      ,[ByWhen]
      ,[SubTopicStatus]
      ,[CreateBy]
      ,[CreateDate]
      ,[UpdateBy]
      ,[UpdateDate]
  FROM [dbo].[LDMS_T_IDP_SubTopic]
  WHERE  [ID] = @ID_IDP_SubTopic
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_IDP_Topic_Insert]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_IDP_Topic_Insert]
	-- Add the parameters for the stored procedure here
	@ID_IDP int,
	@Topic nvarchar(100),
	@ExpectedOutcom nvarchar(100),
	@ID_Assigner_Employee nvarchar(20),
	@IDPSubTopicTable IDPSubTopic readonly
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	Declare @IDIdpTopic int;
	Declare @IDPSubTopic IDPSubTopic;
BEGIN TRANSACTION;
BEGIN TRY
	INSERT INTO [dbo].[LDMS_T_IDP_Topic]
           ([ID_IDP]
           ,[DevelopementTopic]
           ,[ExpectedOutcom]
           ,[CreateBy]
           ,[CreateDate]
           ,[UpdateBy]
           ,[UpdateDate])
     VALUES
           (@ID_IDP
           ,@Topic
           ,@ExpectedOutcom 
           ,@ID_Assigner_Employee
           ,getdate()
           ,@ID_Assigner_Employee
           ,getdate())

	SELECT @IDIdpTopic = @@IDENTITY 
	

	INSERT INTO [dbo].[LDMS_T_IDP_SubTopic]
           ([ID_IDP_Topic]
           ,[HowToDevelopment]
           ,[ExpectedOutcom]
           ,[ByWhen]
           ,[SubTopicStatus]
           ,[CreateBy]
           ,[CreateDate]
           ,[UpdateBy]
           ,[UpdateDate])
	Select @IDIdpTopic as [ID_IDP_Topic], 
	subtopic.HowToDevelopment as [HowToDevelopment], 
	subtopic.ExpectedOutcom as [ExpectedOutcom],
	subtopic.ByWhen as [ByWhen],
	10 as [SubTopicStatus],
	@ID_Assigner_Employee as [CreateBy],
	getdate() as [CreateDate],
	@ID_Assigner_Employee as [UpdateBy],
	getdate() as [UpdateDate]
	from @IDPSubTopicTable subtopic
	

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
/****** Object:  StoredProcedure [dbo].[sp_T_IDP_Topic_Select_IDP_ID]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_IDP_Topic_Select_IDP_ID]
	 @ID_IDP nvarchar(50),
	 @IDP_Year nvarchar(4) = null,
	 @PageNum  int,
     @PageSize int,
     @SortField varchar(100) = null,
     @SortOrder varchar(4) = null
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	 DECLARE @sql varchar(8000), @CountColumn varchar(50), @RowFilter varchar(800)

     SET @CountColumn = '[ID]'
	 IF ISNULL(@SortField,'') = ''
		 SET @SortField = '[ID] ASC'
	 ELSE
		 SET @SortField = @SortField+' '+ @SortOrder

	-- DECLARE @RowFilter varchar(1500)
	SET @RowFilter = ' WHERE 1 = 1'

	IF ISNULL(@ID_IDP, '') <> ''
		SET @RowFilter = @RowFilter + ' AND t.[ID_IDP] = ''' +  @ID_IDP + ''' '

	IF ISNULL(@IDP_Year, '') <> ''
		SET @RowFilter = @RowFilter + ' AND YEAR(t.[CREATEDATE]) = ''' + YEAR( @IDP_Year ) + ''' '
   

		SET @sql='SELECT t.ID, 
					   t.ID_IDP,
					   t.DevelopementTopic,
					   t.ExpectedOutcom,
					   s.ID as ID_SubTopic,
					   s.HowToDevelopment,
					   s.ExpectedOutcom as SubTopic_ExpectedOutcom,
					   s.ByWhen,
					   s.subTopicStatus as SubTopicStatus,
					   col.StateName as SubTopicStatusName
					   FROM LDMS_T_IDP_Topic t
				Left join LDMS_T_IDP_SubTopic s
				ON t.ID = s.ID_IDP_Topic
				left join [dbo].[LDMS_M_CodeLookUp] col
				on s.subTopicStatus = col.Code AND  col.FieldName = ''SubTopicStatus'' ' + @RowFilter
			
			--WHERE t.ID_IDP = @ID_IDP

	
  print (@sql);
  exec dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_IDP_Topic_Select_IDP_ID_list]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_IDP_Topic_Select_IDP_ID_list]
	 @ID_IDP nvarchar(50),
	 @IDP_Year nvarchar(4) = null
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
   

		SELECT t.ID, 
					   t.ID_IDP,
					   t.DevelopementTopic,
					   t.ExpectedOutcom,
					   t.CreateBy,
					   t.CreateDate,
					   t.UpdateBy,
					   t.UpdateDate
					   
					   FROM LDMS_T_IDP_Topic t
				--Left join LDMS_T_IDP_SubTopic s
				--ON t.ID = s.ID_IDP_Topic
				--left join [dbo].[LDMS_M_CodeLookUp] col
				--on s.subTopicStatus = col.Code AND  col.FieldName = 'SubTopicStatus'
			
			   WHERE t.ID_IDP = @ID_IDP AND ( YEAR(t.CreateDate) = @IDP_Year OR @IDP_Year IS NULL)

	
  --print (@sql);
  --exec dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_IDP_Topic_Select_SubTopic_ID]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_IDP_Topic_Select_SubTopic_ID]
	 @ID_SubTopic nvarchar(50)
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	 DECLARE @sql varchar(8000), @CountColumn varchar(50), @RowFilter varchar(800)

 
		SELECT t.ID, 
					   t.ID_IDP,
					   t.DevelopementTopic,
					   t.ExpectedOutcom,
					   s.ID as ID_SubTopic,
					   s.HowToDevelopment,
					   s.ExpectedOutcom as SubTopic_ExpectedOutcom,
					   s.ByWhen,
					   s.subTopicStatus as SubTopicStatus,
					   col.StateName as SubTopicStatusName
					   FROM LDMS_T_IDP_Topic t
				Left join LDMS_T_IDP_SubTopic s
				ON t.ID = s.ID_IDP_Topic
				left join [dbo].[LDMS_M_CodeLookUp] col
				on s.subTopicStatus = col.Code AND  col.FieldName = 'SubTopicStatus'
				WHERE s.ID = @ID_SubTopic

	
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_SUB_Topic_Select_SUB_TOPIC_ID]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_SUB_Topic_Select_SUB_TOPIC_ID]
	 @ID_SUB_Topic_ID nvarchar(10)
	
AS
BEGIN
	

		SELECT s.ID, 
					   s.ID_IDP_Topic,
					   t.DevelopementTopic,
					   t.ExpectedOutcom as TopicExpectedOutcom,
					   s.HowToDevelopment,
					   s.ExpectedOutcom,
					   s.ByWhen,
					   s.SubTopicStatus,
					   col.StateName as SubTopicStatusName,
					   s.CreateBy,
					   s.CreateDate,
					   s.UpdateBy,
					   s.UpdateDate
					   
					   FROM LDMS_T_IDP_SubTopic s
					   Left join [dbo].[LDMS_T_IDP_Topic] t
					   on s.ID_IDP_Topic = t.ID
					   left join [dbo].[LDMS_M_CodeLookUp] col
				       on s.subTopicStatus = col.Code AND  col.FieldName = 'SubTopicStatus'
						
			
			   WHERE s.ID = @ID_SUB_Topic_ID 

	
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_T_SUB_Topic_Select_TOPIC_ID]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_T_SUB_Topic_Select_TOPIC_ID]
	 @ID_IDP_Topic nvarchar(10)
	
AS
BEGIN
	

		SELECT s.ID, 
					   s.ID_IDP_Topic,
					   s.HowToDevelopment,
					   s.ExpectedOutcom,
					   s.ByWhen,
					   s.SubTopicStatus,
					   col.StateName as SubTopicStatusName,
					   s.CreateBy,
					   s.CreateDate,
					   s.UpdateBy,
					   s.UpdateDate
					   
					   FROM LDMS_T_IDP_SubTopic s
					   left join [dbo].[LDMS_M_CodeLookUp] col
				       on s.subTopicStatus = col.Code AND  col.FieldName = 'SubTopicStatus'
			
			
			   WHERE s.ID_IDP_Topic = @ID_IDP_Topic 

	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Center_READ_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_Center_READ_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,
	ID as ID_Center,
	CenterID,
	CenterName_EN,
	CenterName_TH,
	[Description] AS CenterDescription,
	ID_Plant
	FROM LDMS_M_Center WITH (NOLOCK) WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_Create]    Script Date: 5/11/2020 7:32:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_READ_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
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
	SELECT ROW_NUMBER() OVER(ORDER BY al.ID ASC)  as RowIndex,
	al.ID as ID_Analytic,
	al.ID_EmployeeManager,
	al.CompetenceAnalyticName,
	al.Criteria1,
	al.Criteria2,
	al.Criteria3,
	al.Criteria4,
	al.Criteria5,
	al.ID_Department,
	al.ID_JobGrade,
	JobGrade.JobGradeName_EN as JobGrade
	FROM LDMS_T_CompetenceAnalytic al WITH (NOLOCK) 
	LEFT OUTER JOIN LDMS_M_JobGrade JobGrade on JobGrade.ID = al.ID_JobGrade
	WHERE al.Is_Active=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_READ_BY_AnalyticId]    Script Date: 5/11/2020 7:32:27 PM ******/
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
	SELECT ROW_NUMBER() OVER(ORDER BY al.ID ASC)  as RowIndex,
	al.ID as ID_Analytic,
	al.ID_EmployeeManager,
	al.CompetenceAnalyticName,
	al.Criteria1,
	al.Criteria2,
	al.Criteria3,
	al.Criteria4,
	al.Criteria5,
	al.ID_Department,
	al.ID_JobGrade,
	JobGrade.JobGradeName_EN as JobGrade
	FROM LDMS_T_CompetenceAnalytic al WITH (NOLOCK) 
	LEFT OUTER JOIN LDMS_M_JobGrade JobGrade on JobGrade.ID = al.ID_JobGrade
	where al.ID = @AnalyticId and al.Is_Active=1;

END
GO
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_Score]    Script Date: 5/11/2020 7:32:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalytic_Update]    Script Date: 5/11/2020 7:32:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalyticEmployee_READ_BY_AnalyticId]    Script Date: 5/11/2020 7:32:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalyticExpectatoin_READ_BY_AnalyticId]    Script Date: 5/11/2020 7:32:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalyticKnowledgeTopic_READ_BY_AnalyticId]    Script Date: 5/11/2020 7:32:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_CompetenceAnalyticScore_READ_BY_AnalyticId]    Script Date: 5/11/2020 7:32:27 PM ******/
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
	SELECT ROW_NUMBER() OVER( ORDER BY TB.ID_CompetenceKnowledgeTopic ASC)  as RowIndex,TB.* FROM
	(	
		SELECT
		score.ID_CompetenceAnalytic, 
		score.ID_CompetenceKnowledgeTopic,
		score.ID_CompetenceEmployee,
		ISNULL(score.Score,0) as Score,
		CAST(0 AS INT) as MinScore,
		CAST(5 AS INT) as MaxScore
		FROM LDMS_T_CompetenceAnalytic_Employee emp WITH (NOLOCK) 
		INNER JOIN LDMS_T_CompetenceAnalytic_Score score WITH (NOLOCK)  on score.ID_CompetenceEmployee = emp.EmployeeID and emp.Is_Active =1 and emp.ID_CompetenceAnalytic = score.ID_CompetenceAnalytic
		INNER JOIN LDMS_T_CompetenceAnalytic_KnwldTopic topc WITH (NOLOCK)  on score.ID_CompetenceKnowledgeTopic = topc.ID and emp.Is_Active =1 and topc.ID_CompetenceAnalytic = score.ID_CompetenceAnalytic and topc.Is_Active =1 
		where score.ID_CompetenceAnalytic = @AnalyticId AND ISNULL(topc.ID_Course,0) = 0

		UNION ALL 

		SELECT
		emp.ID_CompetenceAnalytic, 
		tpc.ID as ID_CompetenceKnowledgeTopic,
		emp.EmployeeID AS ID_CompetenceEmployee,
		CAST(0 AS INT) as Score,
		CAST(0 AS INT) as MinScore,
		CAST(5 AS INT) as MaxScore
		FROM LDMS_T_CompetenceAnalytic_Employee emp WITH (NOLOCK) 
		INNER JOIN LDMS_T_CompetenceAnalytic_KnwldTopic tpc WITH (NOLOCK) on tpc.ID_CompetenceAnalytic = emp.ID_CompetenceAnalytic and tpc.Is_Active =1 
		where emp.ID_CompetenceAnalytic = @AnalyticId AND ISNULL(tpc.ID_Course,0) = 0 and emp.Is_Active =1  
		and not exists (select * from LDMS_T_CompetenceAnalytic_Score score WITH (NOLOCK) where score.ID_CompetenceAnalytic = @AnalyticId and score.ID_CompetenceEmployee = emp.EmployeeID and score.ID_CompetenceKnowledgeTopic=tpc.ID)

		UNION ALL

		SELECT
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
		INNER JOIN LDMS_T_CompetenceAnalytic_KnwldTopic topc WITH (NOLOCK) on  topc.ID_CompetenceAnalytic = emp.ID_CompetenceAnalytic and topc.Is_Active =1  
		INNER JOIN LDMS_T_CompetenceAnalytic_Score score WITH (NOLOCK) on score.ID_CompetenceEmployee = emp.EmployeeID and emp.Is_Active =1 and emp.ID_CompetenceAnalytic = score.ID_CompetenceAnalytic and score.ID_CompetenceKnowledgeTopic = topc.ID
		LEFT OUTER JOIN LDMS_T_ClassAttendAndResult res WITH (NOLOCK) on topc.ID_Course = res.ID_Course and emp.EmployeeID = res.EmployeeID
		where emp.ID_CompetenceAnalytic = @AnalyticId AND ISNULL(topc.ID_Course,0)<> 0 and emp.Is_Active =1 

		UNION ALL

		SELECT
		emp.ID_CompetenceAnalytic, 
		topc.ID AS ID_CompetenceKnowledgeTopic,
		emp.EmployeeID AS ID_CompetenceEmployee,

		(CASE WHEN res.LearningResult = 99 OR res.LearningResult = 30 THEN 0
			 WHEN res.LearningResult = 70 THEN 3
			 ELSE 0 END) Score,

		(CASE WHEN res.LearningResult = 99 OR res.LearningResult = 30 THEN 0
			 WHEN res.LearningResult = 70 THEN 3
			 ELSE 0 END) AS MinScore,

		(CASE WHEN res.LearningResult = 99 OR res.LearningResult = 30 THEN 2
			 WHEN res.LearningResult = 70 THEN 5
			 ELSE 0 END) AS MaxScore 

		FROM LDMS_T_CompetenceAnalytic_Employee emp WITH (NOLOCK)
		INNER JOIN LDMS_T_CompetenceAnalytic_KnwldTopic topc WITH (NOLOCK) on  topc.ID_CompetenceAnalytic = emp.ID_CompetenceAnalytic and topc.Is_Active =1  
		LEFT OUTER JOIN LDMS_T_ClassAttendAndResult res WITH (NOLOCK) on topc.ID_Course = res.ID_Course and emp.EmployeeID = res.EmployeeID
		where emp.ID_CompetenceAnalytic = @AnalyticId AND ISNULL(topc.ID_Course,0)<> 0 and emp.Is_Active =1 
		and not exists (select * from LDMS_T_CompetenceAnalytic_Score score WITH (NOLOCK) where score.ID_CompetenceAnalytic = @AnalyticId and score.ID_CompetenceEmployee = emp.EmployeeID and score.ID_CompetenceKnowledgeTopic=topc.ID)


	) TB ORDER BY TB.ID_CompetenceKnowledgeTopic,TB.ID_CompetenceEmployee
	
	--if pass default = 3 can changes 3,4,5
	--if not pass default = 0 can change 0,1,2
	--if no result fixed  = 0
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Course_Master_Report]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC usp_Course_Master_Report @paramTrainingDateFrm ='2020/04/01',@paramTrainingDateTo='2020/04/30'
-- =============================================
CREATE   PROCEDURE [dbo].[usp_Course_Master_Report]
	@paramTrainingDateFrm DATETIME,
	@paramTrainingDateTo DATETIME,
	@paramCourseId nvarchar(100) =null,
	@paramDepartmentId INT =null,
	@paramJobGradeId INT =null,
	@paramStatus INT =null,	
	@paramTrainingStatus INT =null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT
	Platfor.PlatformName_EN AS "Platform",
	SubPlatform.SubPlatformName_EN AS "Sub Platform",
	Course.CourseID AS "Course Code",
	Course.CourseName AS "Course Name",
	CourseType.CourseTypeName_EN AS "Course Type",
	class.ClassID AS "Class ID",
	'' AS "Emp ID",
	'' AS "Employee Name",
	'' AS "Job Grade",
	'' AS "Job Title",
	'' AS "Department",
	'' AS "Division",
	'' AS "Section",
	'' AS "Status Register",
	'' AS "Status Approval",
	'' AS "Status Attend",
	1200 AS "Class Fee",
	100 AS "Course Amount Learner",
	80 AS "Course Amount Qualifield",
	20 AS "Course Amount Unqualifield",
	80 AS "Course Avg.Score"
	FROM  LDMS_M_Course  Course 
	INNER JOIN LDMS_M_CourseType CourseType ON Course.ID_CourseType = CourseType.ID
	INNER JOIN LDMS_M_SubPlatformCourse  SubPlatformCourse ON Course.ID = SubPlatformCourse.ID_Course
	INNER JOIN LDMS_M_SubPlatform SubPlatform ON SubPlatformCourse.ID_SubPlatform =  SubPlatform.ID
	INNER JOIN LDMS_M_Platform  Platfor ON SubPlatform.ID_Platform = Platfor.ID
	INNER JOIN LDMS_T_Class class on Course.ID = class.ID_Course

	WHERE 1 = (CASE WHEN @paramCourseId <> '' and @paramCourseId is not null THEN
				CASE WHEN Course.ID = @paramCourseId THEN 1 ELSE 0 END
				ELSE 1 END)


END
GO
/****** Object:  StoredProcedure [dbo].[usp_Course_READ_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_Course_READ_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as rownumber,* FROM LDMS_M_Course WITH (NOLOCK) WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Department_READ_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_Department_READ_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,
	ID as ID_Department,
	DepartmentID,
	DepartmentName_EN,
	DepartmentName_TH,
	[Description]  as DepartmentDescription,
	ID_Division
	FROM LDMS_M_Department WITH (NOLOCK) WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Division_READ_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_Division_READ_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,
	ID as ID_Division,
	DivisionID,
	DivisionName_EN,
	DivisionName_TH,
	[Description] AS DivisionDescription,
	ID_Center
	FROM LDMS_M_Division WITH (NOLOCK) WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetPlanAndProgress_By_Employee]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- [dbo].[usp_GetPlanAndProgress_By_Employee] @employeeId ='STT00001' ,@ficialYear =2020,@IsSelectQ1 =1,@IsSelectQ2=0,@IsSelectQ3 =1,@IsSelectQ4= 0
-- =============================================
CREATE  OR ALTER PROCEDURE [dbo].[usp_GetPlanAndProgress_By_Employee]
	-- Add the parameters for the stored procedure here
	@employeeId nvarchar(50),
	@ficialYear INT,
	@IsSelectQ1 BIT =0,
	@IsSelectQ2 BIT =0,
	@IsSelectQ3 BIT =0,
	@IsSelectQ4 BIT =0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
IF OBJECT_ID('tempdb..#ProgressResult') IS NOT NULL
    DROP TABLE #ProgressResult

DECLARE @startDate DATETIME;
DECLARE @endDate DATETIME;
SET @startDate =DATEFROMPARTS(@ficialYear,4,1);
SET @endDate = DATEFROMPARTS(@ficialYear+1,3,31);

select 
		plat.ID AS ID_Platform,
		course.ID AS ID_Course,
        plat.PlatformID, plat.PlatformName_EN, plat.PlatformName_TH,
		subplat.SubPlatformName_EN,subplat.SubPlatformName_TH,
		course.CourseID,course.CourseName,
		course.Objective as CourseObjective,
		course.[Description] as CourseDescription,
		course.OutLine as CourseOutLine,
		method.Course_LearnMethodName_EN,method.Course_LearnMethodName_TH,
		class.LearnDateStart,
		class.LearnTimeStart,
		class.LearnDateEnd,
		class.LearnTimeEnd,
		class.LearnDateEnd As TargetDate, 
		class.RegisterDateStart,
		class.RegisterDateEnd,

		VenueRoom.VenueRoomID,
		VenueRoom.RoomName_EN,

		CASE WHEN class.LearnDateEnd > getdate() THEN datediff(day,getdate(),class.LearnDateEnd) ELSE 0 END AS RemainDay,

		CASE WHEN result.EmployeeID IS NOT NULL AND result.LearningResult = 70 AND result.ClassState = 70 THEN 'COMPLETED' 
			 WHEN class.ClassStatus = 70 AND (result.EmployeeID IS NULL OR result.LearningResult = 30  OR result.LearningResult = 99) THEN 'OVER DUE' 
		     WHEN result.EmployeeID IS NOT NULL AND result.LearningResult = 30 THEN 'ON PROGRESS'			
			 WHEN result.EmployeeID IS NOT NULL AND result.LearningResult = 30 AND  getdate()> class.LearnDateEnd  THEN 'OVER DUE'
			ELSE 'NOT START' END AS CourseStatus
		INTO #ProgressResult
		FROM LDMS_M_Platform plat
		INNER JOIN LDMS_M_SubPlatform subplat on subplat.ID_Platform = plat.ID
		INNER JOIN LDMS_M_SubPlatformCourse subplatcourse on subplatcourse.ID_SubPlatform = subplat.ID
		INNER JOIN  LDMS_M_Course course on  course.ID = subplatcourse.ID_Course
		INNER JOIN LDMS_M_CourseLearnMethod method on course.ID_LearnMethod = method.ID
		INNER JOIN LDMS_T_Class class on course.ID = class.ID_Course		
		INNER JOIN LDMS_M_VenueRoom VenueRoom on class.ID_VenueRoom = VenueRoom.ID
		
		INNER JOIN LDMS_T_CourseEmployee targetEmp on course.ID = targetEmp.ID_Course
		LEFT OUTER JOIN LDMS_T_ClassRegistration register on class.ID = register.ID_Class
		LEFT OUTER JOIN LDMS_T_ClassAttendAndResult result on class.ID = result.ID_Class and targetEmp.EmployeeID = result.EmployeeID
		
		WHERE class.RegisterDateStart>= @startDate AND class.RegisterDateEnd <= @endDate
		and course.IsActive = 1
		and targetEmp.EmployeeID = @employeeId; 

IF @IsSelectQ1 = 0 AND @IsSelectQ2 =0 AND @IsSelectQ3 =0 AND @IsSelectQ4 = 0
BEGIN
	SELECT * FROM #ProgressResult
	GROUP BY ID_Platform,ID_Course,PlatformID,PlatformName_EN,PlatformName_TH,SubPlatformName_EN,SubPlatformName_TH,CourseID,CourseName,CourseObjective,CourseDescription,CourseOutLine,Course_LearnMethodName_EN,
	Course_LearnMethodName_TH,LearnDateStart,LearnTimeStart,LearnDateEnd,LearnTimeEnd,TargetDate,RegisterDateStart,RegisterDateEnd,VenueRoomID,RoomName_EN,RemainDay,CourseStatus 
END
ELSE
BEGIN
	SELECT * FROM #ProgressResult 
	WHERE LearnDateStart >= @startDate AND RegisterDateEnd <= DATEFROMPARTS(@ficialYear,6,30)
	and @IsSelectQ1 = 1
	GROUP BY ID_Platform,ID_Course,PlatformID,PlatformName_EN,PlatformName_TH,SubPlatformName_EN,SubPlatformName_TH,CourseID,CourseName,CourseObjective,CourseDescription,CourseOutLine,Course_LearnMethodName_EN,
	Course_LearnMethodName_TH,LearnDateStart,LearnTimeStart,LearnDateEnd,LearnTimeEnd,TargetDate,RegisterDateStart,RegisterDateEnd,VenueRoomID,RoomName_EN,RemainDay,CourseStatus 

	UNION ALL

	SELECT * FROM #ProgressResult 
	WHERE LearnDateStart >= DATEFROMPARTS(@ficialYear,7,1) AND RegisterDateEnd <= DATEFROMPARTS(@ficialYear,9,30)
	and @IsSelectQ1 = 2
	GROUP BY ID_Platform,ID_Course,PlatformID,PlatformName_EN,PlatformName_TH,SubPlatformName_EN,SubPlatformName_TH,CourseID,CourseName,CourseObjective,CourseDescription,CourseOutLine,Course_LearnMethodName_EN,
	Course_LearnMethodName_TH,LearnDateStart,LearnTimeStart,LearnDateEnd,LearnTimeEnd,TargetDate,RegisterDateStart,RegisterDateEnd,VenueRoomID,RoomName_EN,RemainDay,CourseStatus 

	UNION ALL

	SELECT * FROM #ProgressResult 
	WHERE LearnDateStart >= DATEFROMPARTS(@ficialYear,10,1) AND RegisterDateEnd <= DATEFROMPARTS(@ficialYear,12,31)
	and @IsSelectQ1 = 3
	GROUP BY ID_Platform,ID_Course,PlatformID,PlatformName_EN,PlatformName_TH,SubPlatformName_EN,SubPlatformName_TH,CourseID,CourseName,CourseObjective,CourseDescription,CourseOutLine,Course_LearnMethodName_EN,
	Course_LearnMethodName_TH,LearnDateStart,LearnTimeStart,LearnDateEnd,LearnTimeEnd,TargetDate,RegisterDateStart,RegisterDateEnd,VenueRoomID,RoomName_EN,RemainDay,CourseStatus 

	UNION ALL

	SELECT * FROM #ProgressResult 
	WHERE LearnDateStart >= DATEFROMPARTS(@ficialYear,1,1) AND RegisterDateEnd <= DATEFROMPARTS(@ficialYear,3,31)
	and @IsSelectQ1 = 4
	GROUP BY ID_Platform,ID_Course,PlatformID,PlatformName_EN,PlatformName_TH,SubPlatformName_EN,SubPlatformName_TH,CourseID,CourseName,CourseObjective,CourseDescription,CourseOutLine,Course_LearnMethodName_EN,
	Course_LearnMethodName_TH,LearnDateStart,LearnTimeStart,LearnDateEnd,LearnTimeEnd,TargetDate,RegisterDateStart,RegisterDateEnd,VenueRoomID,RoomName_EN,RemainDay,CourseStatus 
END    -- Insert statements for procedure here


END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetTeamLearningPerformance]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- [dbo].[usp_GetTeamLearningPerformance] @plantId = 0, @centerId = 0, @divisionId = 0 , @departmentId = 0, @sectionId = 0,	 @ficialYear =2020,	@IsSelectQ1=0,@IsSelectQ2=0,@IsSelectQ3=0,@IsSelectQ4 =0
-- =============================================
CREATE  OR ALTER   PROCEDURE [dbo].[usp_GetTeamLearningPerformance]
	-- Add the parameters for the stored procedure here
	@plantId INT = 0,
	@centerId INT = 0,
	@divisionId INT = 0,
	@departmentId INT = 0,		
	@sectionId INT = 0,	
	@ficialYear INT,
	@IsSelectQ1 BIT =0,
	@IsSelectQ2 BIT =0,
	@IsSelectQ3 BIT =0,
	@IsSelectQ4 BIT =0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
IF OBJECT_ID('tempdb..#PerformanceResult') IS NOT NULL
    DROP TABLE #PerformanceResult

DECLARE @startDate DATETIME;
DECLARE @endDate DATETIME;
SET @startDate =DATEFROMPARTS(@ficialYear,4,1);
SET @endDate = DATEFROMPARTS(@ficialYear+1,3,31);

select 
		plat.ID AS ID_Platform,
		course.ID AS ID_Course,
        plat.PlatformID, plat.PlatformName_EN, plat.PlatformName_TH,
		subplat.SubPlatformName_EN,subplat.SubPlatformName_TH,
		course.CourseID,course.CourseName,
		course.Objective as CourseObjective,
		course.[Description] as CourseDescription,
		course.OutLine as CourseOutLine,
		method.Course_LearnMethodName_EN,method.Course_LearnMethodName_TH,
		class.LearnDateStart,
		class.LearnTimeStart,
		class.LearnDateEnd,
		class.LearnTimeEnd,
		class.LearnDateEnd As TargetDate,
		month(	class.LearnDateStart ) as TargetMonth,
		year(	class.LearnDateStart ) as TargetYear,	
		class.RegisterDateStart,
		class.RegisterDateEnd,
		class.ClassCapacity,
		class.ClassFee,
		(class.ClassFee / class.ClassCapacity) AS ClassFeePerPerson,
		VenueRoom.VenueRoomID,
		VenueRoom.RoomName_EN, 


		CASE WHEN class.LearnDateEnd > getdate() THEN datediff(day,getdate(),class.LearnDateEnd) ELSE 0 END AS RemainDay,

		CASE WHEN result.EmployeeID IS NOT NULL AND result.LearningResult = 70 AND result.ClassState = 70 THEN 'COMPLETED' 
			 WHEN class.ClassStatus = 70 AND (result.EmployeeID IS NULL OR result.LearningResult = 30  OR result.LearningResult = 99) THEN 'OVER DUE' 
		     WHEN result.EmployeeID IS NOT NULL AND result.LearningResult = 30 THEN 'ON PROGRESS'			
			 WHEN result.EmployeeID IS NOT NULL AND result.LearningResult = 30 AND  getdate()> class.LearnDateEnd  THEN 'OVER DUE'
			ELSE 'NOT START' END AS CourseStatus,
        JobGrade.ID as ID_JobGrade,
		JobGrade.JobGradeID,
		JobGrade.JobGradeName_EN,
		JobGrade.JobGradeName_TH,

		JobTitle.ID AS ID_JobTitle,
		JobTitle.JobTitleID,
		JobTitle.JobTitleName_EN,
		JobTitle.JobTitleName_TH,

		Plant.ID as ID_Plant,
		Plant.PlantID,
		Plant.PlantName_EN,
		Plant.PlantName_TH,

		center.ID as ID_Center,
		center.CenterID,
		center.CenterName_EN,
		center.CenterName_TH,

		division.ID as ID_Division,
		division.DivisionID,
		division.DivisionName_EN,
		division.DivisionName_TH,

		department.ID AS ID_Department,
		department.DepartmentID,
		department.DepartmentName_EN,
		department.DepartmentName_TH,

		isnull(section.ID,0) as ID_Section,
		isnull(section.SectionID,'') as SectionID,
		isnull(section.SectionName_EN,'') as SectionName_EN,
		isnull(section.SectionName_TH,'') as SectionName_TH,
	    
		targetLevel.ID_JobGrade as TargetJobGrade ,
		targetPos.ID_JobTitle as TargetJobTitle,		
		targetEmp.EmployeeID as TargetEmployeeID

		INTO #PerformanceResult
		FROM LDMS_M_Platform plat
		INNER JOIN LDMS_M_SubPlatform subplat on subplat.ID_Platform = plat.ID
		INNER JOIN LDMS_M_SubPlatformCourse subplatcourse on subplatcourse.ID_SubPlatform = subplat.ID
		INNER JOIN LDMS_M_Course course on  course.ID = subplatcourse.ID_Course
		INNER JOIN LDMS_M_CourseLearnMethod method on course.ID_LearnMethod = method.ID
		INNER JOIN LDMS_T_Class class on course.ID = class.ID_Course		
		INNER JOIN LDMS_T_CourseEmployee targetEmp on course.ID = targetEmp.ID_Course	
		INNER JOIN LDMS_T_CourseJobGrade targetLevel on course.ID = targetLevel.ID_Course	
		INNER JOIN LDMS_T_CourseJobTitle targetPos on course.ID = targetPos.ID_Course	

		INNER JOIN LDMS_M_User Usr on targetEmp.EmployeeID = Usr.EmployeeID

		LEFT OUTER JOIN LDMS_M_VenueRoom VenueRoom on class.ID_VenueRoom = VenueRoom.ID			
		LEFT OUTER JOIN LDMS_T_ClassRegistration register on class.ID = register.ID_Class
		LEFT OUTER JOIN LDMS_T_ClassAttendAndResult result on class.ID = result.ID_Class and targetEmp.EmployeeID = result.EmployeeID 
		
		LEFT OUTER JOIN LDMS_M_JobGrade JobGrade on JobGrade.ID = Usr.ID_JobGrade
		LEFT OUTER JOIN LDMS_M_JobTitle JobTitle on Usr.ID_JobTitle = JobTitle.ID

		LEFT OUTER JOIN LDMS_M_Plant Plant on Usr.ID_Plant = Plant.ID
		LEFT OUTER JOIN LDMS_M_Center center on Usr.ID_Center = center.ID
		LEFT OUTER JOIN LDMS_M_Division division on Usr.ID_Division = division.ID
		LEFT OUTER JOIN LDMS_M_Department department on Usr.ID_Department = department.ID
		LEFT OUTER JOIN LDMS_M_Section section on Usr.ID_Section = section.ID		
		WHERE class.RegisterDateStart>= @startDate AND class.RegisterDateEnd <= @endDate
		and course.IsActive = 1
		and (1 = case when @plantId >0 then (case when Plant.ID=@plantId then 1 else 0 end) else 1 end)
		and (1 = case when @centerId >0 then (case when center.ID=@centerId then 1 else 0 end) else 1 end)
		and (1 = case when @divisionId >0 then (case when division.ID=@divisionId then 1 else 0 end) else 1 end)
		and (1 = case when @departmentId >0 then (case when department.ID=@departmentId then 1 else 0 end) else 1 end)
		and (1 = case when @sectionId >0 then (case when section.ID=@sectionId then 1 else 0 end) else 1 end) 

IF @IsSelectQ1 = 0 AND @IsSelectQ2 =0 AND @IsSelectQ3 =0 AND @IsSelectQ4 = 0
BEGIN
	SELECT  * FROM #PerformanceResult 
	GROUP BY ID_Platform,ID_Course,PlatformID,PlatformName_EN,PlatformName_TH,SubPlatformName_EN,SubPlatformName_TH,CourseID,CourseName,CourseObjective,CourseDescription,CourseOutLine,Course_LearnMethodName_EN,
	Course_LearnMethodName_TH,LearnDateStart,LearnTimeStart,LearnDateEnd,LearnTimeEnd,TargetDate,TargetMonth,TargetYear,RegisterDateStart,RegisterDateEnd,ClassCapacity,ClassFee,ClassFeePerPerson,VenueRoomID,RoomName_EN,
	RemainDay,CourseStatus,ID_JobGrade,JobGradeID,JobGradeName_EN,JobGradeName_TH,ID_JobTitle,JobTitleID,JobTitleName_EN,JobTitleName_TH,ID_Plant,PlantID,PlantName_EN,PlantName_TH,ID_Center,CenterID,CenterName_EN,
	CenterName_TH,ID_Division,DivisionID,DivisionName_EN,DivisionName_TH,ID_Department,DepartmentID,DepartmentName_EN,DepartmentName_TH,ID_Section,SectionID,SectionName_EN,SectionName_TH,TargetJobGrade,TargetJobTitle,TargetEmployeeID

END
ELSE
BEGIN
	SELECT * FROM #PerformanceResult 
	WHERE LearnDateStart >= @startDate AND RegisterDateEnd <= DATEFROMPARTS(@ficialYear,6,30)
	and @IsSelectQ1 = 1
	GROUP BY ID_Platform,ID_Course,PlatformID,PlatformName_EN,PlatformName_TH,SubPlatformName_EN,SubPlatformName_TH,CourseID,CourseName,CourseObjective,CourseDescription,CourseOutLine,Course_LearnMethodName_EN,
	Course_LearnMethodName_TH,LearnDateStart,LearnTimeStart,LearnDateEnd,LearnTimeEnd,TargetDate,TargetMonth,TargetYear,RegisterDateStart,RegisterDateEnd,ClassCapacity,ClassFee,ClassFeePerPerson,VenueRoomID,RoomName_EN,
	RemainDay,CourseStatus,ID_JobGrade,JobGradeID,JobGradeName_EN,JobGradeName_TH,ID_JobTitle,JobTitleID,JobTitleName_EN,JobTitleName_TH,ID_Plant,PlantID,PlantName_EN,PlantName_TH,ID_Center,CenterID,CenterName_EN,
	CenterName_TH,ID_Division,DivisionID,DivisionName_EN,DivisionName_TH,ID_Department,DepartmentID,DepartmentName_EN,DepartmentName_TH,ID_Section,SectionID,SectionName_EN,SectionName_TH,TargetJobGrade,TargetJobTitle,TargetEmployeeID

	UNION ALL

	SELECT * FROM #PerformanceResult 
	WHERE LearnDateStart >= DATEFROMPARTS(@ficialYear,7,1) AND RegisterDateEnd <= DATEFROMPARTS(@ficialYear,9,30)
	and @IsSelectQ1 = 2
	GROUP BY ID_Platform,ID_Course,PlatformID,PlatformName_EN,PlatformName_TH,SubPlatformName_EN,SubPlatformName_TH,CourseID,CourseName,CourseObjective,CourseDescription,CourseOutLine,Course_LearnMethodName_EN,
	Course_LearnMethodName_TH,LearnDateStart,LearnTimeStart,LearnDateEnd,LearnTimeEnd,TargetDate,TargetMonth,TargetYear,RegisterDateStart,RegisterDateEnd,ClassCapacity,ClassFee,ClassFeePerPerson,VenueRoomID,RoomName_EN,
	RemainDay,CourseStatus,ID_JobGrade,JobGradeID,JobGradeName_EN,JobGradeName_TH,ID_JobTitle,JobTitleID,JobTitleName_EN,JobTitleName_TH,ID_Plant,PlantID,PlantName_EN,PlantName_TH,ID_Center,CenterID,CenterName_EN,
	CenterName_TH,ID_Division,DivisionID,DivisionName_EN,DivisionName_TH,ID_Department,DepartmentID,DepartmentName_EN,DepartmentName_TH,ID_Section,SectionID,SectionName_EN,SectionName_TH,TargetJobGrade,TargetJobTitle,TargetEmployeeID

	UNION ALL

	SELECT * FROM #PerformanceResult 
	WHERE LearnDateStart >= DATEFROMPARTS(@ficialYear,10,1) AND RegisterDateEnd <= DATEFROMPARTS(@ficialYear,12,31)
	and @IsSelectQ1 = 3
	GROUP BY ID_Platform,ID_Course,PlatformID,PlatformName_EN,PlatformName_TH,SubPlatformName_EN,SubPlatformName_TH,CourseID,CourseName,CourseObjective,CourseDescription,CourseOutLine,Course_LearnMethodName_EN,
	Course_LearnMethodName_TH,LearnDateStart,LearnTimeStart,LearnDateEnd,LearnTimeEnd,TargetDate,TargetMonth,TargetYear,RegisterDateStart,RegisterDateEnd,ClassCapacity,ClassFee,ClassFeePerPerson,VenueRoomID,RoomName_EN,
	RemainDay,CourseStatus,ID_JobGrade,JobGradeID,JobGradeName_EN,JobGradeName_TH,ID_JobTitle,JobTitleID,JobTitleName_EN,JobTitleName_TH,ID_Plant,PlantID,PlantName_EN,PlantName_TH,ID_Center,CenterID,CenterName_EN,
	CenterName_TH,ID_Division,DivisionID,DivisionName_EN,DivisionName_TH,ID_Department,DepartmentID,DepartmentName_EN,DepartmentName_TH,ID_Section,SectionID,SectionName_EN,SectionName_TH,TargetJobGrade,TargetJobTitle,TargetEmployeeID

	UNION ALL

	SELECT * FROM #PerformanceResult 
	WHERE LearnDateStart >= DATEFROMPARTS(@ficialYear,1,1) AND RegisterDateEnd <= DATEFROMPARTS(@ficialYear,3,31)
	and @IsSelectQ1 = 4
	GROUP BY ID_Platform,ID_Course,PlatformID,PlatformName_EN,PlatformName_TH,SubPlatformName_EN,SubPlatformName_TH,CourseID,CourseName,CourseObjective,CourseDescription,CourseOutLine,Course_LearnMethodName_EN,
	Course_LearnMethodName_TH,LearnDateStart,LearnTimeStart,LearnDateEnd,LearnTimeEnd,TargetDate,TargetMonth,TargetYear,RegisterDateStart,RegisterDateEnd,ClassCapacity,ClassFee,ClassFeePerPerson,VenueRoomID,RoomName_EN,
	RemainDay,CourseStatus,ID_JobGrade,JobGradeID,JobGradeName_EN,JobGradeName_TH,ID_JobTitle,JobTitleID,JobTitleName_EN,JobTitleName_TH,ID_Plant,PlantID,PlantName_EN,PlantName_TH,ID_Center,CenterID,CenterName_EN,
	CenterName_TH,ID_Division,DivisionID,DivisionName_EN,DivisionName_TH,ID_Department,DepartmentID,DepartmentName_EN,DepartmentName_TH,ID_Section,SectionID,SectionName_EN,SectionName_TH,TargetJobGrade,TargetJobTitle,TargetEmployeeID
END    -- Insert statements for procedure here


END
GO
/****** Object:  StoredProcedure [dbo].[usp_Instructor_Master_Report]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC usp_Instructor_Master_Report @paramTrainingDateFrm ='2020/04/01',@paramTrainingDateTo='2020/04/30'
-- =============================================
CREATE   PROCEDURE [dbo].[usp_Instructor_Master_Report]
	@paramTrainingDateFrm DATETIME,
	@paramTrainingDateTo DATETIME,
	@paramInstructorId nvarchar(100) =null,
	@paramDepartmentId INT =null,
	@paramJobGradeId INT =null,
	@paramStatus INT =null,	
	@paramTrainingStatus INT =null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	Instructor.Instructor_ID AS "ID",
	Instructor.Instructor_Name as "Name",
	CASE Instructor.IsActive WHEN 1 THEN 'Active' ELSE 'In Active' END AS   "Status",
	Instructor.[Type] AS "Type",
	Instructor.EmployeeID AS "EmpID",
	'' AS "Job Level",
	'' AS "Job Grade",
	'' AS "Job Title",
	'' AS "Department",
	'' AS "Division",
	'' AS "Section",
	Instructor.Organization AS "Organization",
	Instructor.[Address] AS "Adress",
	Instructor.Phone AS "Phone no.",
	Instructor.Email AS "email",
	Instructor.Course_Experience AS "Experience",
	Instructor.Education_Level AS "Education",
	Instructor.Customer_Reference AS "Customer Referrence", 
	'' AS "Industrusty",
	Course.CourseID AS "courseID",
	Course.CourseName AS "Coursename",
	50 AS "Amount Learner",
	20 AS "Amount Qualifield",
	20 AS "Amount Unqualifield",
	100 AS "Avg.Score"
	FROM  LDMS_M_Course  Course 
	LEFT OUTER JOIN LDMS_T_Class class on Course.ID = class.ID_Course
	LEFT OUTER JOIN LDMS_M_Instructor Instructor on class.ID_Instructor = Instructor.Id

	WHERE 1 = (CASE WHEN @paramInstructorId <> '' and @paramInstructorId is not null THEN
				CASE WHEN Instructor.Instructor_ID = @paramInstructorId THEN 1 ELSE 0 END
				ELSE 1 END)


END
GO
/****** Object:  StoredProcedure [dbo].[usp_JobGrade_READ_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_JobGrade_READ_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,
	JobGradeID,
	ID as ID_JobGrade,
	JobGradeName_EN,
	JobGradeName_TH,
	[Description]  AS JobGradeDescription
	FROM LDMS_M_JobGrade WITH (NOLOCK)  WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_JobTitle_READ_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_JobTitle_READ_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,
	JobTitleID, 
	ID as ID_JobTitle,
	JobTitleName_EN,
	JobTitleName_TH,
	[Description]  AS JobTitleDescription
	FROM LDMS_M_JobTitle WITH (NOLOCK)  WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LDMS_M_User_UpdateSection]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
/*
declare @p1 dbo.UserSectionType
insert into @p1 values(N'ET00001',117,1)
insert into @p1 values(N'ST0003',116,1)
insert into @p1 values(N'ST0004',119,1)
insert into @p1 values(N'ST002',0,0)
insert into @p1 values(N'STD001',0,0)
insert into @p1 values(N'STT00001',0,0)
exec [dbo].[usp_LDMS_M_User_UpdateSection] @UserSectionTable=@p1,@updateBy=N'STT00001'
*/
-- =============================================
CREATE   PROCEDURE [dbo].[usp_LDMS_M_User_UpdateSection]
	-- Add the parameters for the stored procedure here
	@UserSectionTable UserSectionType readonly,
	@updateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	--IF EXISTS ( select count(EmployeeID) , [ID_Section] 
	--FROM [LDMS_M_User] 
	--WHERE [IsSectionHead] =1 and not exists 
	--(select Employee_ID from @UserSectionTable udt where udt.ID_Section = [LDMS_M_User].ID_Section and udt.Employee_ID = [LDMS_M_User].EmployeeID AND udt.Is_Header=1)
	--GROUP BY [ID_Section]
	--HAVING count(EmployeeID)>1)
	--BEGIN
	--	RAISERROR (101,-1,-1, 'One Section Allow One Header');  
	--END
	--ELSE
    -- Insert statements for procedure here
	UPDATE	[LDMS_M_User]
	SET   
		[IsSectionHead] = udt.Is_Header
       ,[ID_Section] = udt.ID_Section 
       ,[IsActive] = 1
	   ,[UpdateBy] = @updateBy
	   ,[UpdateDate] = getdate()
	FROM  [LDMS_M_User] JOIN @UserSectionTable udt ON [LDMS_M_User].EmployeeID = udt.Employee_ID 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LDMS_M_UserRole_UpdateSection]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_LDMS_M_UserRole_UpdateSection]
	-- Add the parameters for the stored procedure here
	@employeeId nvarchar(50),
	@sectionId INT,
	@sectionHeader TINYINT,
	@updateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE	[dbo].[LDMS_M_UserRole]
	SET   
		[IsSectionHead] = @sectionHeader
       ,[ID_Section] = @sectionId 
       ,[IsActive] = 1
	   ,[UpdateBy] = @updateBy
	   ,[UpdateDate] = getdate()
	WHERE [EmployeeID]  = @employeeId; 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LDMS_T_DataLog_Create]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_LDMS_T_DataLog_Create]
	-- Add the parameters for the stored procedure here
	@LogTypeId INT,
	@EmployeeID nvarchar(50)=null,
	@ip_address nvarchar(50)=null,
	@LogDetail text =null,
	@CreateBy  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[LDMS_T_DataLog]
           (LogDateTime
		   ,[LogTypeId]
           ,[EmployeeID]
           ,[ip_address]
           ,[LogDetail]
		   ,[CreateBy]
		   ,[IsActive])
     VALUES
           (getdate()
		   ,@LogTypeId
           ,@EmployeeID
           ,@ip_address
           ,@LogDetail
		   ,@CreateBy
		   ,1)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_MenuRedirectByMenuId]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- [usp_MenuRedirectByMenuId] @submenuId ='MD01-02'
-- =============================================
CREATE   PROCEDURE [dbo].[usp_MenuRedirectByMenuId]
	-- Add the parameters for the stored procedure here
	@submenuId nvarchar(50) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select 
	[ID] AS ID_SubModule,
	[SubModuleID] AS SubModuleID,
	[ID_Module] AS ID_Module,
	[SubModuleName_EN] AS SubModuleName_EN,
	[SubModuleName_TH] AS SubModuleName_TH,
	[Sequence] AS "Sequence",
	[Parent] AS "Parent",
	[URL] AS SubModule_URL,
    [Icon],
    [Description] ,
	[IsActive]
	from LDMS_M_SubModule where SubModuleID = @submenuId and [IsActive] =1

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Plaform_Master_Report]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC usp_Plaform_Master_Report @paramTrainingDateFrm ='2020/04/01',@paramTrainingDateTo='2020/04/30'
-- =============================================
CREATE   PROCEDURE [dbo].[usp_Plaform_Master_Report]
	@paramTrainingDateFrm DATETIME,
	@paramTrainingDateTo DATETIME,
	@paramPlaformId nvarchar(100) =null,
	@paramDepartmentId INT =null,
	@paramJobGradeId INT =null,
	@paramStatus INT =null,	
	@paramTrainingStatus INT =null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT
	Platfor.PlatformName_EN AS "Platform",
	SubPlatform.SubPlatformName_EN AS "Sub Platform",
	Course.CourseID AS "Course Code",
	Course.CourseName AS "Course Name",
	CourseType.CourseTypeName_EN AS "Course Type",
	class.ClassID AS "Class ID",
	'' AS "Emp ID",
	'' AS "Employee Name",
	'' AS "Job Level",
	'' AS "Job Grade",
	'' AS "Job Title",
	'' AS "Department",
	'' AS "Division",
	'' AS "Section",
	'' AS "Status Register",
	'' AS "Status Approval",
	'' AS "Status Attend",
	1200 AS "Class Fee",
	100 AS "Course Amount Learner",
	80 AS "Course Amount Qualifield",
	20 AS "Course Amount Unqualifield",
	80 AS "Course Avg.Score"
	FROM  LDMS_M_Course  Course 
	INNER JOIN LDMS_M_CourseType CourseType ON Course.ID_CourseType = CourseType.ID
	INNER JOIN LDMS_M_SubPlatformCourse  SubPlatformCourse ON Course.ID = SubPlatformCourse.ID_Course
	INNER JOIN LDMS_M_SubPlatform SubPlatform ON SubPlatformCourse.ID_SubPlatform =  SubPlatform.ID
	INNER JOIN LDMS_M_Platform  Platfor ON SubPlatform.ID_Platform = Platfor.ID
	INNER JOIN LDMS_T_Class class on Course.ID = class.ID_Course

	WHERE 1 = (CASE WHEN @paramPlaformId <> '' and @paramPlaformId is not null THEN
				CASE WHEN Platfor.ID = @paramPlaformId THEN 1 ELSE 0 END
				ELSE 1 END)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Plant_READ_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_Plant_READ_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,
	ID as ID_Plant,
	PlantID,
	PlantName_EN,
	PlantName_TH,
	PlantDescription AS PlantDescription
	FROM LDMS_M_Plant WITH (NOLOCK) WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Platform_READ_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_Platform_READ_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,* FROM LDMS_M_Platform WITH (NOLOCK) WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Role_READ_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_Role_READ_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(ORDER BY ID ASC)  as RowIndex,ID AS ID_Role,ISNULL(RoleName_EN,'') AS RoleName_EN,ISNULL(RoleName_TH,'') AS RoleName_TH,ISNULL(RoleDescription,'') AS RoleDescription 
	FROM LDMS_M_Role WITH (NOLOCK)  WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_RoleMenu_READ_By_Role]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- exec [usp_RoleMenu_READ_By_Role] 7
-- =============================================
CREATE   PROCEDURE [dbo].[usp_RoleMenu_READ_By_Role]
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
	  ISNULL(subm.URL,'')  AS SubModule_URL,

	 mol.ID AS ID_Module,
	 mol.ModuleID,
	 mol.ModuleName_EN,
	 mol.ModuleName_TH,
	 mol.Sequence as Module_Sequence,
	 ISNULL(mol.URL,'')   as Module_URL,
	 
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
	 INNER JOIN LDMS_M_SubModule subm  WITH (NOLOCK)  on rolm.ID_SubModule = subm.ID and subm.IsActive =1
	 INNER JOIN LDMS_M_Module mol WITH (NOLOCK)  on subm.ID_Module = mol.ID and mol.IsActive =1
	 WHERE rolm.IsActive = 1 and rol.ID = @paramRoleId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Section_Create]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_Section_Create]
	-- Add the parameters for the stored procedure here
	@param_derpartmentId int,
	@para_sectionCode nvarchar(50),
	@param_sectionNameEN nvarchar(50),
	@param_sectionNameTH nvarchar(50),
	@param_sectionDesc nvarchar(100),
	@paramCreateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[LDMS_M_Section]
           ([ID]
           ,[SectionID]
           ,[ID_Department]
           ,[SectionName_EN]
           ,[SectionName_TH]
           ,[Description]
           ,[CreateBy]
           ,[CreateDate] 
           ,[IsActive])
	values ((SELECT ISNULL(MAX(ID),0)+1 FROM [dbo].[LDMS_M_Section]),
	@para_sectionCode,
	@param_derpartmentId,
	@param_sectionNameEN,
	@param_sectionNameTH,
	@param_sectionDesc,
	@paramCreateBy,
	GETDATE(),
	1)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Section_Delete]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_Section_Delete]
	-- Add the parameters for the stored procedure here
	@param_sectionId int, 
	@paramUpdateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[LDMS_M_Section]
   SET 
	   [UpdateBy] = @paramUpdateBy
      ,[UpdateDate] = GETDATE()
      ,[IsActive] = 0
   WHERE [ID] =@param_sectionId; 

   UPDATE LDMS_M_User
   SET ID_Section = NULL 
   WHERE ID_Section = @param_sectionId;

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Section_READ_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_Section_READ_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,
	ID as ID_Section,
	SectionID,
	SectionName_EN,
	SectionName_TH,
	[Description] AS SectionDescription,
	ID_Department
	FROM LDMS_M_Section WITH (NOLOCK) WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Section_Update]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_Section_Update]
	-- Add the parameters for the stored procedure here
	@param_sectionId int,
	@param_derpartmentId int,
	@para_sectionCode nvarchar(50),
	@param_sectionNameEN nvarchar(50),
	@param_sectionNameTH nvarchar(50),
	@param_sectionDesc nvarchar(100),
	@paramUpdateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[LDMS_M_Section]
   SET  [SectionID] = @para_sectionCode 
      ,[SectionName_EN] = @param_sectionNameEN
      ,[SectionName_TH] = @param_sectionNameTH
      ,[Description] =@param_sectionDesc 
      ,[UpdateBy] = @paramUpdateBy
      ,[UpdateDate] = GETDATE()
      ,[IsActive] = 1
 WHERE [ID] =@param_sectionId; 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_AllowGPP]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE     PROCEDURE [dbo].[usp_User_AllowGPP]
-- Add the parameters for the stored procedure here
		@EmployeeId nvarchar(50),
		@IsAllow tinyint,
		@UpdateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF EXISTS (SELECT * FROM [dbo].[LDMS_M_User] WHERE [EmployeeID]  = @EmployeeId)
		BEGIN
		-- Insert statements for procedure here
		UPDATE	[dbo].[LDMS_M_User]
			SET  
				[IsActive] = 1 
			   ,IsAllowGPP = @IsAllow
			   ,[UpdateBy] = @UpdateBy
			   ,[UpdateDate] = GETDATE()
		   		WHERE [EmployeeID]  = @EmployeeId
		END
		ELSE
		BEGIN
		 SELECT -- As many or few of these as you care to return
			100 AS ErrorNumber
		   ,100 AS ErrorSeverity
		   ,100 AS ErrorState
		   ,'usp_User_AllowGPP' AS ErrorProcedure
		   ,0 AS ErrorLine
		   ,'Cannot Update user does'' exists' AS ErrorMessage;
	   END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_Authentication]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,> 
-- EXEC [usp_User_Authentication] @employeeId='STT00001',@password='BY3ziz1R73/IfRP8NYB3APHh/0M='
-- =============================================
CREATE   PROCEDURE [dbo].[usp_User_Authentication]
	-- Add the parameters for the stored procedure here
	@employeeId nvarchar(50) ,
	@password nvarchar(1024)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON; 

	SELECT   muser.ID_User
	FROM LDMS_M_User  muser WITH (NOLOCK)   
	WHERE muser.EmployeeID = @employeeId AND muser.IsActive =1 and muser.[Password] =@password and muser.IsLocked =0 and muser.IsDeleted =0

END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_ChangePassword]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE     PROCEDURE [dbo].[usp_User_ChangePassword]
-- Add the parameters for the stored procedure here
		@EmployeeId nvarchar(50),
		@OldPassword  nvarchar(1024),
		@Password  nvarchar(1024),
		@PasswordSalt  nvarchar(1024),
		@UpdateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF EXISTS (SELECT * FROM [dbo].[LDMS_M_User] WHERE [EmployeeID]  = @EmployeeId AND [Password] = @OldPassword)
		BEGIN

		-- Insert statements for procedure here
		UPDATE	[dbo].[LDMS_M_User]
			SET 
				[Password] = @Password   
			   ,[IsActive] = 1
			   ,[PasswordSalt] = @PasswordSalt
			   ,[IsForceChangePass] = 0
			   ,[Is_FirstLogin] = 0
			   ,[UpdateBy] = @UpdateBy
			   ,[UpdateDate] = GETDATE()
		   		WHERE [EmployeeID]  = @EmployeeId AND [Password] = @OldPassword;
		END
		ELSE
		BEGIN
		 SELECT -- As many or few of these as you care to return
			100 AS ErrorNumber
		   ,100 AS ErrorSeverity
		   ,100 AS ErrorState
		   ,'usp_User_ChangePassword' AS ErrorProcedure
		   ,0 AS ErrorLine
		   ,'Cannot Update user does'' exists' AS ErrorMessage;
	   END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_Create]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE     PROCEDURE [dbo].[usp_User_Create]
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
	@Password  nvarchar(1024) =null,
	@PasswordSalt  nvarchar(1024) =null,
	@Remark nvarchar(250)  =null,
	@PhoneNumber  nvarchar(50)  =null,
	@Email  nvarchar(50)  =null,
	@CreateBy  nvarchar(50)  =null,
	@IDCardNumber nvarchar(50)  =null,
	@JoinDate datetime =null,
	@OutDate datetime =null,
	@DateOfBirth datetime =null,
	@ProfilePath  nvarchar(250)  =null  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @PlantId INT; 
	SELECT @PlantId = ID_Plant FROM LDMS_M_Center  WHERE ID = @CenterId;
	IF EXISTS (SELECT * FROM LDMS_M_User WHERE EmployeeID = @EmployeeId)
		RAISERROR (100,-1,-1, 'An Employee ID already exists');  

BEGIN TRANSACTION;
BEGIN TRY
INSERT INTO [dbo].[LDMS_M_User] ([EmployeeID] ,[Name] ,[Surname] ,[Gender] ,[Nationality] ,[Email] ,[PhoneNumber]
           ,[IsAD] ,[DriverLicenseID] ,[IDCardNumber] ,[ID_JobGrade] ,[ID_JobTitle] 
		   ,[ID_Plant] ,[ID_Center] ,[ID_Division] ,[ID_Department],[ID_Section] ,[ID_Role]
           ,[JoinDate] ,[OutDate] ,[DateOfBirth] ,[ProfilePath]  ,[Password] ,[PasswordSalt]
           ,[Remark] ,[IsInstructor] ,[IsSectionHead]  ,[IsForceChangePass] ,[IsAllowGPP] ,[Is_FirstLogin]
           ,[IsActive] ,[IsDeleted] ,[IsLocked] ,[CreateBy] ,[CreateDate])
     VALUES
           (@EmployeeId ,@EmployeeName ,@EmployeeSurName ,@Gender ,@Nationality ,@Email ,@PhoneNumber 
		   ,case when @Email is null or @Email ='' then 0 else 1 end ,null ,@IDCardNumber ,@JobGradeId ,@JobTitleId 
		   ,@PlantId ,@CenterId ,@DivisionId ,@DepartmentId ,@SectionId  ,@RoleId
           ,@JoinDate ,@OutDate  ,@DateOfBirth ,@ProfilePath  ,@Password ,@PasswordSalt
           ,@Remark ,@IsInstructer  ,@IsSectionHead ,case when @Email is null or @Email ='' then 1 else 0 end ,0 ,1
           ,1 ,0 ,0 ,@CreateBy ,GETDATE());
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
/****** Object:  StoredProcedure [dbo].[usp_User_Delete]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_User_Delete]
	-- Add the parameters for the stored procedure here
	@paramEmployeeId nvarchar(50),
	@paramUpdateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE LDMS_M_User
	SET IsActive = 0 , IsDeleted = 1 , UpdateBy = @paramUpdateBy,UpdateDate =GETDATE()
	WHERE EmployeeID = @paramEmployeeId AND IsAD = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_READ_ALL]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC [dbo].[usp_User_READ_ALL] @paramEmployeeId='',@paramEmployeeName=null,@paramdepartments='',@paramsections='',@paramjobgrades='',@paramjobtitles=''
-- =============================================
CREATE   PROCEDURE [dbo].[usp_User_READ_ALL]
	 @paramEmployeeId nvarchar(50) = null,
	 @paramEmployeeName nvarchar(50) = null,
	 @paramdepartments nvarchar(max) = null,
	 @paramsections nvarchar(max) = null,
	 @paramjobgrades nvarchar(max) = null,
	 @paramjobtitles nvarchar(max) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 
    Declare @departments table (ID INT);
	Declare @sections table (ID INT);
	Declare @jobgrades table (ID INT);
	Declare @jobtitles table (ID INT);

	INSERT INTO @departments SELECT Item FROM dbo.SplitInts(isnuLL(@paramdepartments,''), ','); 
	INSERT INTO @sections SELECT Item FROM dbo.SplitInts(isnull(@paramsections,''), ','); 
	INSERT INTO @jobgrades SELECT Item FROM dbo.SplitInts(isnull(@paramjobgrades,''), ','); 
	INSERT INTO @jobtitles SELECT Item FROM dbo.SplitInts(isnull(@paramjobtitles,''), ','); 

    -- Insert statements for procedure here
	SELECT  
	ROW_NUMBER() OVER(ORDER BY muser.EmployeeID ASC)  as RowIndex,
	muser.DateOfBirth,muser.DriverLicenseID,muser.email,muser.EmployeeID,muser.Gender,muser.IDCardNumber,
	isnull(muser.IsAD,0) AS IsAD  , 
	muser.JoinDate ,muser.Name,
	muser.ID_Role,muser.IsInstructor,muser.Password,muser.Remark,muser.passwordSalt,muser.IsSectionHead,muser.IsAllowGPP as IsAllowGPP,muser.IsLocked, 
	muser.Nationality,muser.OutDate,muser.PhoneNumber,muser.Surname, muser.Is_FirstLogin as IsFirstLogin, 	muser.IsActive,
	--muser.ID_Plant,
	--muser.ID_Center,
	--muser.ID_Division,
	--muser.ID_Department,
	--muser.ID_Section,
	ISNULL(muser.ID_JobGrade,0) AS ID_JobGrade,
	ISNULL(muser.ID_JobTitle,0) AS ID_JobTitle, 
	ISNULL(muser.ID_Role,1) as ID_Role,
	--rol.ID as RoleId,rol.RoleDescription,rol.RoleName_EN,rol.RoleName_TH,
	Plant.ID as ID_Plant,Plant.PlantID,Plant.PlantName_EN,Plant.PlantName_TH,Plant.PlantDescription AS PlantDescription,
	Center.ID as ID_Center,Center.CenterID,Center.CenterName_EN,Center.CenterName_TH,Center.Description AS CenterDescription,
	Division.ID as ID_Division,Division.DivisionID,Division.DivisionName_EN,Division.DivisionName_TH,Division.Description AS DivisionDescription,
	dep.ID as ID_Department,dep.DepartmentID,dep.DepartmentName_EN,dep.DepartmentName_TH,dep.Description AS DepartmentDescription,
	section.ID as ID_Section,section.SectionID,section.SectionName_EN,section.SectionName_TH,section.Description AS DepartmentDescription

	FROM LDMS_M_User  muser WITH (NOLOCK)   
	LEFT OUTER JOIN LDMS_M_Plant plant  WITH (NOLOCK) on muser.ID_Plant = plant.ID
	LEFT OUTER JOIN LDMS_M_Center Center  WITH (NOLOCK) on muser.ID_Center = Center.ID
	LEFT OUTER JOIN LDMS_M_Division Division  WITH (NOLOCK) on muser.ID_Division = Division.ID 
	LEFT OUTER JOIN LDMS_M_Department dep  WITH (NOLOCK) on muser.ID_Department = dep.ID
	LEFT OUTER JOIN LDMS_M_Section section  WITH (NOLOCK) on muser.ID_Section = section.ID
	
	WHERE muser.IsDeleted = 0
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
	AND (1 =  CASE WHEN exists (select * from @sections sc)THEN
				CASE WHEN exists (select * from @sections sc where sc.ID= muser.ID_Section)  THEN 1 ELSE 0 END
			  ELSE 1 END)
	AND (1 =  CASE WHEN exists (select * from @jobgrades jg)THEN
				CASE WHEN exists (select * from @jobgrades jg where jg.ID= muser.ID_JobGrade)  THEN 1 ELSE 0 END
			  ELSE 1 END)
	AND (1 =  CASE WHEN exists (select * from @jobtitles jt)THEN
				CASE WHEN exists (select * from @jobtitles jt where jt.ID= muser.ID_JobTitle)  THEN 1 ELSE 0 END
			  ELSE 1 END)

END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_READ_ALL_C]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_User_READ_ALL_C]
	 @paramEmployeeId nvarchar(50) = null,
	 @paramEmployeeName nvarchar(50) = null,
	 @paramdepartments nvarchar(max) = null,
	 @paramsections nvarchar(max) = null,
	 @paramjobgrades nvarchar(max) = null,
	 @paramjobtitles nvarchar(max) = null,
	 @ID_Course int,
	 @ID_Class int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 
    Declare @departments table (ID INT);
	Declare @sections table (ID INT);
	Declare @jobgrades table (ID INT);
	Declare @jobtitles table (ID INT);

	INSERT INTO @departments SELECT Item FROM dbo.SplitInts(isnuLL(@paramdepartments,''), ','); 
	INSERT INTO @sections SELECT Item FROM dbo.SplitInts(isnull(@paramsections,''), ','); 
	INSERT INTO @jobgrades SELECT Item FROM dbo.SplitInts(isnull(@paramjobgrades,''), ','); 
	INSERT INTO @jobtitles SELECT Item FROM dbo.SplitInts(isnull(@paramjobtitles,''), ','); 

    -- Insert statements for procedure here
	SELECT  
	ROW_NUMBER() OVER(ORDER BY muser.EmployeeID ASC)  as RowIndex,
	muser.DateOfBirth,muser.DriverLicenseID,muser.email,muser.EmployeeID,muser.Gender,muser.IDCardNumber,
	isnull(muser.IsAD,0) AS IsAD  , 
	muser.JoinDate ,muser.Name,
	muser.ID_Role,muser.IsInstructor,muser.Password,muser.Remark,muser.passwordSalt,muser.IsSectionHead,muser.IsAllowGPP as IsAllowGPP,muser.IsLocked, 
	muser.Nationality,muser.OutDate,muser.PhoneNumber,muser.Surname, muser.Is_FirstLogin as IsFirstLogin, 	muser.IsActive,
	--muser.ID_Plant,
	--muser.ID_Center,
	--muser.ID_Division,
	--muser.ID_Department,
	--muser.ID_Section,
	ISNULL(muser.ID_JobGrade,0) AS ID_JobGrade,
	ISNULL(muser.ID_JobTitle,0) AS ID_JobTitle, 
	ISNULL(muser.ID_Role,1) as ID_Role,
	--rol.ID as RoleId,rol.RoleDescription,rol.RoleName_EN,rol.RoleName_TH,
	Plant.ID as ID_Plant,Plant.PlantID,Plant.PlantName_EN,Plant.PlantName_TH,Plant.PlantDescription AS PlantDescription,
	Center.ID as ID_Center,Center.CenterID,Center.CenterName_EN,Center.CenterName_TH,Center.Description AS CenterDescription,
	Division.ID as ID_Division,Division.DivisionID,Division.DivisionName_EN,Division.DivisionName_TH,Division.Description AS DivisionDescription,
	dep.ID as ID_Department,dep.DepartmentID,dep.DepartmentName_EN,dep.DepartmentName_TH,dep.Description AS DepartmentDescription,
	section.ID as ID_Section,section.SectionID,section.SectionName_EN,section.SectionName_TH,section.Description AS DepartmentDescription

	FROM LDMS_M_User  muser WITH (NOLOCK)   
	LEFT OUTER JOIN LDMS_M_Plant plant  WITH (NOLOCK) on muser.ID_Plant = plant.ID
	LEFT OUTER JOIN LDMS_M_Center Center  WITH (NOLOCK) on muser.ID_Center = Center.ID
	LEFT OUTER JOIN LDMS_M_Division Division  WITH (NOLOCK) on muser.ID_Division = Division.ID 
	LEFT OUTER JOIN LDMS_M_Department dep  WITH (NOLOCK) on muser.ID_Department = dep.ID
	LEFT OUTER JOIN LDMS_M_Section section  WITH (NOLOCK) on muser.ID_Section = section.ID
	
	WHERE muser.IsDeleted = 0
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
	AND (1 =  CASE WHEN exists (select * from @sections sc)THEN
				CASE WHEN exists (select * from @sections sc where sc.ID= muser.ID_Section)  THEN 1 ELSE 0 END
			  ELSE 1 END)
	AND (1 =  CASE WHEN exists (select * from @jobgrades jg)THEN
				CASE WHEN exists (select * from @jobgrades jg where jg.ID= muser.ID_JobGrade)  THEN 1 ELSE 0 END
			  ELSE 1 END)
	AND (1 =  CASE WHEN exists (select * from @jobtitles jt)THEN
				CASE WHEN exists (select * from @jobtitles jt where jt.ID= muser.ID_JobTitle)  THEN 1 ELSE 0 END
			  ELSE 1 END)
	AND muser.EmployeeID NOT IN (SELECT r. [EmployeeID]FROM [dbo].[LDMS_T_ClassRegistration] r WHERE r.[ID_Class] = @ID_Class AND r.[ID_Course] = @ID_Course)

END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_READ_BY_DepartmentId]    Script Date: 5/11/2020 7:32:27 PM ******/
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
CREATE   PROCEDURE [dbo].[usp_User_READ_BY_DepartmentId]
	-- Add the parameters for the stored procedure here
	@param_DepartmentId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;  

	SELECT  
	ROW_NUMBER() OVER(ORDER BY muser.EmployeeID ASC)  as RowIndex,
	muser.DateOfBirth,muser.DriverLicenseID,muser.email,muser.EmployeeID,muser.Gender,muser.IDCardNumber,
	isnull(muser.IsAD,0) AS IsAD  , 
	muser.JoinDate ,muser.Name,
	muser.ID_Role,muser.IsInstructor,muser.Password,muser.Remark,muser.passwordSalt,muser.IsSectionHead,muser.IsAllowGPP as IsAllowGPP,muser.IsLocked, 
	muser.Nationality,muser.OutDate,muser.PhoneNumber,muser.Surname, muser.Is_FirstLogin as IsFirstLogin, 	muser.IsActive,
	--muser.ID_Plant,
	--muser.ID_Center,
	--muser.ID_Division,
	--muser.ID_Department,
	--muser.ID_Section,
	ISNULL(muser.ID_JobGrade,0) AS ID_JobGrade,
	ISNULL(muser.ID_JobTitle,0) AS ID_JobTitle, 
	ISNULL(muser.ID_Role,1) as ID_Role,
	--rol.ID as RoleId,rol.RoleDescription,rol.RoleName_EN,rol.RoleName_TH,
	Plant.ID as ID_Plant,Plant.PlantID,Plant.PlantName_EN,Plant.PlantName_TH,Plant.PlantDescription AS PlantDescription,
	Center.ID as ID_Center,Center.CenterID,Center.CenterName_EN,Center.CenterName_TH,Center.Description AS CenterDescription,
	Division.ID as ID_Division,Division.DivisionID,Division.DivisionName_EN,Division.DivisionName_TH,Division.Description AS DivisionDescription,
	dep.ID as ID_Department,dep.DepartmentID,dep.DepartmentName_EN,dep.DepartmentName_TH,dep.Description AS DepartmentDescription,
	section.ID as ID_Section,section.SectionID,section.SectionName_EN,section.SectionName_TH,section.Description AS DepartmentDescription

	FROM LDMS_M_User  muser WITH (NOLOCK)  
	--LEFT OUTER JOIN LDMS_M_Role rol  WITH (NOLOCK) on muser.ID_Role = rol.ID
	LEFT OUTER JOIN LDMS_M_Plant plant  WITH (NOLOCK) on muser.ID_Plant = plant.ID
	LEFT OUTER JOIN LDMS_M_Center Center  WITH (NOLOCK) on muser.ID_Center = Center.ID
	LEFT OUTER JOIN LDMS_M_Division Division  WITH (NOLOCK) on muser.ID_Division = Division.ID 
	LEFT OUTER JOIN LDMS_M_Department dep  WITH (NOLOCK) on muser.ID_Department = dep.ID
	LEFT OUTER JOIN LDMS_M_Section section  WITH (NOLOCK) on muser.ID_Section = section.ID
	WHERE dep.DepartmentID = @param_DepartmentId AND muser.IsActive =1

END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_READ_BY_EmployeeId]    Script Date: 5/11/2020 7:32:27 PM ******/
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
CREATE   PROCEDURE [dbo].[usp_User_READ_BY_EmployeeId]
	-- Add the parameters for the stored procedure here
	@param_EmployeeId nvarchar(50) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON; 

	SELECT  
	ROW_NUMBER() OVER(ORDER BY muser.EmployeeID ASC)  as RowIndex,
	muser.DateOfBirth,muser.DriverLicenseID,muser.email,muser.EmployeeID,muser.Gender,muser.IDCardNumber,
	isnull(muser.IsAD,0) AS IsAD  , 
	muser.JoinDate ,muser.Name,
	muser.ID_Role,muser.IsInstructor,muser.Password,muser.Remark,muser.passwordSalt,muser.IsSectionHead,
	muser.IsAllowGPP as IsAllowGPP,
	muser.IsLocked, 
	muser.Nationality,muser.OutDate,muser.PhoneNumber,muser.Surname, muser.Is_FirstLogin as IsFirstLogin, 	muser.IsActive,
	--muser.ID_Plant,
	--muser.ID_Center,
	--muser.ID_Division,
	--muser.ID_Department,
	--muser.ID_Section,
	ISNULL(muser.ID_JobGrade,0) AS ID_JobGrade,
	ISNULL(muser.ID_JobTitle,0) AS ID_JobTitle, 
	ISNULL(muser.ID_Role,1) as ID_Role,
	--rol.ID as RoleId,rol.RoleDescription,rol.RoleName_EN,rol.RoleName_TH,
	Plant.ID as ID_Plant,Plant.PlantID,Plant.PlantName_EN,Plant.PlantName_TH,Plant.PlantDescription AS PlantDescription,
	Center.ID as ID_Center,Center.CenterID,Center.CenterName_EN,Center.CenterName_TH,Center.Description AS CenterDescription,
	Division.ID as ID_Division,Division.DivisionID,Division.DivisionName_EN,Division.DivisionName_TH,Division.Description AS DivisionDescription,
	dep.ID as ID_Department,dep.DepartmentID,dep.DepartmentName_EN,dep.DepartmentName_TH,dep.Description AS DepartmentDescription,
	section.ID as ID_Section,section.SectionID,section.SectionName_EN,section.SectionName_TH,section.Description AS DepartmentDescription

	FROM LDMS_M_User  muser WITH (NOLOCK)  
	--LEFT OUTER JOIN LDMS_M_Role rol  WITH (NOLOCK) on muser.ID_Role = rol.ID
	LEFT OUTER JOIN LDMS_M_Plant plant  WITH (NOLOCK) on muser.ID_Plant = plant.ID
	LEFT OUTER JOIN LDMS_M_Center Center  WITH (NOLOCK) on muser.ID_Center = Center.ID
	LEFT OUTER JOIN LDMS_M_Division Division  WITH (NOLOCK) on muser.ID_Division = Division.ID 
	LEFT OUTER JOIN LDMS_M_Department dep  WITH (NOLOCK) on muser.ID_Department = dep.ID
	LEFT OUTER JOIN LDMS_M_Section section  WITH (NOLOCK) on muser.ID_Section = section.ID
	WHERE muser.EmployeeID = @param_EmployeeId AND muser.IsActive =1

END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_READ_BY_SectionId]    Script Date: 5/11/2020 7:32:27 PM ******/
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
CREATE   PROCEDURE [dbo].[usp_User_READ_BY_SectionId]
	-- Add the parameters for the stored procedure here
	@param_SectionId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON; 

	SELECT  
	ROW_NUMBER() OVER(ORDER BY muser.EmployeeID ASC)  as RowIndex,
	muser.DateOfBirth,muser.DriverLicenseID,muser.email,muser.EmployeeID,muser.Gender,muser.IDCardNumber,
	isnull(muser.IsAD,0) AS IsAD  , 
	muser.JoinDate ,muser.Name,
	muser.ID_Role,muser.IsInstructor,muser.Password,muser.Remark,muser.passwordSalt,muser.IsSectionHead,muser.IsAllowGPP as IsAllowGPP,muser.IsLocked, 
	muser.Nationality,muser.OutDate,muser.PhoneNumber,muser.Surname, muser.Is_FirstLogin as IsFirstLogin, 	muser.IsActive,
	--muser.ID_Plant,
	--muser.ID_Center,
	--muser.ID_Division,
	--muser.ID_Department,
	--muser.ID_Section,
	ISNULL(muser.ID_JobGrade,0) AS ID_JobGrade,
	ISNULL(muser.ID_JobTitle,0) AS ID_JobTitle, 
	ISNULL(muser.ID_Role,1) as ID_Role,
	--rol.ID as RoleId,rol.RoleDescription,rol.RoleName_EN,rol.RoleName_TH,
	Plant.ID as ID_Plant,Plant.PlantID,Plant.PlantName_EN,Plant.PlantName_TH,Plant.PlantDescription AS PlantDescription,
	Center.ID as ID_Center,Center.CenterID,Center.CenterName_EN,Center.CenterName_TH,Center.Description AS CenterDescription,
	Division.ID as ID_Division,Division.DivisionID,Division.DivisionName_EN,Division.DivisionName_TH,Division.Description AS DivisionDescription,
	dep.ID as ID_Department,dep.DepartmentID,dep.DepartmentName_EN,dep.DepartmentName_TH,dep.Description AS DepartmentDescription,
	section.ID as ID_Section,section.SectionID,section.SectionName_EN,section.SectionName_TH,section.Description AS DepartmentDescription

	FROM LDMS_M_User  muser WITH (NOLOCK)  
	--LEFT OUTER JOIN LDMS_M_Role rol  WITH (NOLOCK) on muser.ID_Role = rol.ID
	LEFT OUTER JOIN LDMS_M_Plant plant  WITH (NOLOCK) on muser.ID_Plant = plant.ID
	LEFT OUTER JOIN LDMS_M_Center Center  WITH (NOLOCK) on muser.ID_Center = Center.ID
	LEFT OUTER JOIN LDMS_M_Division Division  WITH (NOLOCK) on muser.ID_Division = Division.ID 
	LEFT OUTER JOIN LDMS_M_Department dep  WITH (NOLOCK) on muser.ID_Department = dep.ID
	LEFT OUTER JOIN LDMS_M_Section section  WITH (NOLOCK) on muser.ID_Section = section.ID
	WHERE muser.ID_Section = @param_SectionId AND muser.IsActive =1

END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_ResetPassword]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE     PROCEDURE [dbo].[usp_User_ResetPassword]
-- Add the parameters for the stored procedure here
		@EmployeeId nvarchar(50), 
		@Password  nvarchar(1024),
		@PasswordSalt  nvarchar(1024),
		@UpdateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF EXISTS (SELECT * FROM [dbo].[LDMS_M_User] WHERE [EmployeeID]  = @EmployeeId)
		BEGIN

		-- Insert statements for procedure here
		UPDATE	[dbo].[LDMS_M_User]
			SET 
				[Password] = @Password   
			   ,[IsActive] = 1
			   ,[PasswordSalt] = @PasswordSalt
			   ,[UpdateBy] = @UpdateBy
			   ,[UpdateDate] = GETDATE()
		   		WHERE [EmployeeID]  = @EmployeeId
		END
		ELSE
		BEGIN
		 SELECT -- As many or few of these as you care to return
			100 AS ErrorNumber
		   ,100 AS ErrorSeverity
		   ,100 AS ErrorState
		   ,'usp_User_ResetPassword' AS ErrorProcedure
		   ,0 AS ErrorLine
		   ,'Cannot reset user does'' exists' AS ErrorMessage;
	   END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_Update]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[usp_User_Update]
	-- Add the parameters for the stored procedure here 
	@ID_Employee bigint,
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
	@Remark nvarchar(250)  =null,
	@PhoneNumber  nvarchar(50)  =null,
	@Email  nvarchar(50)  =null,
	@UpdateBy  nvarchar(50)  =null,
	@IDCardNumber nvarchar(50)  =null,
	@JoinDate datetime =null,
	@OutDate datetime =null,
	@DateOfBirth datetime =null,
	@ProfilePath  nvarchar(250)  =null  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @PlantId INT; 
	SELECT @PlantId = ID_Plant FROM LDMS_M_Center  WHERE ID = @CenterId;
	IF NOT EXISTS (SELECT * FROM LDMS_M_User WHERE EmployeeID = @EmployeeId)
		RAISERROR (101,-1,-1, 'An Employee ID doen''t exists');  

BEGIN TRANSACTION;
BEGIN TRY

	UPDATE [dbo].[LDMS_M_User]
   SET [EmployeeID] = @EmployeeId
      ,[Name] = @EmployeeName
      ,[Surname] =@EmployeeSurName
      ,[Gender] = @Gender
      ,[Nationality] =@Nationality
      ,[Email] = @Email
      ,[PhoneNumber] = @PhoneNumber
      ,[IsAD] = case when @Email is null or @Email ='' then 0 else 1 end
      ,[DriverLicenseID] = ''
      ,[IDCardNumber] =@IDCardNumber
      ,[ID_JobGrade] = @JobGradeId
      ,[ID_JobTitle] = @JobTitleId
      ,[ID_Plant] = @PlantId
      ,[ID_Center] = @CenterId
      ,[ID_Division] =@DivisionId
      ,[ID_Department] =@DepartmentId
      ,[JoinDate] = @JoinDate
      ,[OutDate] = @OutDate
      ,[DateOfBirth] = @DateOfBirth
      ,[ProfilePath] =@ProfilePath
      ,[ID_Role] = @RoleId 
      ,[Remark] = @Remark
      ,[IsInstructor] = @IsInstructer
      ,[IsSectionHead] = @IsSectionHead
      ,[ID_Section] =@SectionId   
      ,[IsActive] = 1
      ,[IsDeleted] = 0
      ,[IsLocked] =0 
      ,[UpdateBy] =@UpdateBy
      ,[UpdateDate] = GETDATE()
	WHERE [EmployeeID]  = @EmployeeId; 
	 
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
/****** Object:  StoredProcedure [dbo].[usp_UserRole_READ_BY_EmployeeId]    Script Date: 5/11/2020 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- exec [dbo].[usp_UserRole_READ_BY_EmployeeId] 'STT00001','azsx'
-- =============================================
CREATE   PROCEDURE [dbo].[usp_UserRole_READ_BY_EmployeeId]
	-- Add the parameters for the stored procedure here
	@param_EmployeeId nvarchar(50),
	@param_Password nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON; 
	SELECT  ROW_NUMBER() OVER(ORDER BY usrRole.ID ASC)  as RowIndex, usrRole.ID as UserRoleId,usrRole.ID_Role,usrRole.IsInstructor,usrRole.Password,usrRole.Remark,usrRole.passwordSalt,
	rol.ID as RoleId,rol.RoleDescription,rol.RoleName_EN,rol.RoleName_TH
	FROM   LDMS_M_UserRole usrRole WITH (NOLOCK) 
	LEFT OUTER JOIN LDMS_M_Role rol  WITH (NOLOCK) on usrRole.ID_Role = rol.ID
	WHERE  usrRole.EmployeeID = @param_EmployeeId AND usrRole.[Password] = @param_Password
END
GO
