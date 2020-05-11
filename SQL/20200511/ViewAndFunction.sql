--USE [veraplus_ldms]
--GO
/****** Object:  UserDefinedTableType [dbo].[CompetenceExpectatoin]    Script Date: 5/11/2020 7:30:56 PM ******/
CREATE TYPE [dbo].[CompetenceExpectatoin] AS TABLE(
	[ID_CompetenceKnowledgeTopic] [bigint] NULL,
	[ID_CompetenceAnalytic] [int] NULL,
	[Score] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[CompetenceScore]    Script Date: 5/11/2020 7:30:56 PM ******/
CREATE TYPE [dbo].[CompetenceScore] AS TABLE(
	[ID_CompetenceKnowledgeTopic] [bigint] NULL,
	[ID_CompetenceAnalytic] [int] NULL,
	[ID_CompetenceEmployee] [nvarchar](50) NULL,
	[Score] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[EmployeeIdList]    Script Date: 5/11/2020 7:30:56 PM ******/
CREATE TYPE [dbo].[EmployeeIdList] AS TABLE(
	[EmployeeId] [nvarchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[IDList]    Script Date: 5/11/2020 7:30:56 PM ******/
CREATE TYPE [dbo].[IDList] AS TABLE(
	[ID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[IDPSubTopic]    Script Date: 5/11/2020 7:30:56 PM ******/
CREATE TYPE [dbo].[IDPSubTopic] AS TABLE(
	[HowToDevelopment] [nvarchar](100) NOT NULL,
	[ExpectedOutcom] [nvarchar](100) NOT NULL,
	[ByWhen] [date] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TopicList]    Script Date: 5/11/2020 7:30:56 PM ******/
CREATE TYPE [dbo].[TopicList] AS TABLE(
	[ID_Topic] [bigint] NULL,
	[ID_Course] [int] NULL,
	[TopicName] [nvarchar](100) NULL,
	[Expectatoin] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UserSectionType]    Script Date: 5/11/2020 7:30:56 PM ******/
CREATE TYPE [dbo].[UserSectionType] AS TABLE(
	[Employee_ID] [nvarchar](50) NULL,
	[ID_Section] [int] NULL,
	[Is_Header] [tinyint] NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetDay]    Script Date: 5/11/2020 7:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_GetDay]
(
	-- Add the parameters for the function here
		@EFFECTIVE_DATE Date,
	    @Current_DATE    Date
)
RETURNS VARCHAR(1000)
AS
BEGIN
--DECLARE	@DAYS INT,
--		@MONTH INT,
--		@YEAR INT,
--		--รับค่า วัน เดือน ปี ของวัน EFFECTIVE DATE,EXPIRY_DATE
--		@EFF_DAY INT,
--		@EXP_DAY INT,
--		--รับค่าวันสิ้นเดือน
--		@EXP_EOF_DAY INT,
--		@EFF_EOF_DAY INT,
--		--รับค่า Sum ผลต่างช่วงหน้า และ ผลต่างช่วงหลัง
--		@TEMP_EXP_DATE DATE,
		
--		--สำหรับรับค่าผลต่าง
--		@DIF_EFF INT,		
--		@CHECK_CASE INT

--		--SET @EFFECTIVE_DATE='2016-02-15'
--		--SET @EXPIRY_DATE = '2016-05-21'

--		--รับค่า วัน เดือน ปี ของ Effective
--		SET @EFF_DAY= DATEPART(DD,@EFFECTIVE_DATE)
		
--		--รับค่า วัน เดือน ปี ของ Effective
--		SET @EXP_DAY= DATEPART(DD,@EXPIRY_DATE)
				
--		--หาวันที่สิ้นเดือน		
--		SET @EFF_EOF_DAY = DATEPART(DD,DATEADD(S,-1,DATEADD(mm, DATEDIFF(m,0,@EFFECTIVE_DATE)+1,0)))
--		SET @EXP_EOF_DAY = DATEPART(DD,DATEADD(S,-1,DATEADD(mm, DATEDIFF(m,0,@EXPIRY_DATE)+1,0)))
		
--		SET @CHECK_CASE=0
--		--CASE:วันที่ Eff เป็นวันที่ 1 และ วันที่ Exp เป็นวันสิ้นเดือน
--		IF(@EFF_DAY=1 AND @EXP_DAY = @EXP_EOF_DAY)--BIG BIG BIG BIG
--		BEGIN
--			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@EXPIRY_DATE)+1
--			SET @DAYS = 0
--			SET @CHECK_CASE=1
--		END
--		--CASE:วันที่ Eff เป็นวันที่ 1 และ วันที่ Exp ไม่เป็นวันสิ้นเดือน
--		IF(@EFF_DAY=1) AND (@EXP_DAY <> @EXP_EOF_DAY)
--		BEGIN
--			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@EXPIRY_DATE)
--			SET @DAYS =	@EXP_DAY
--			SET @CHECK_CASE=1			
--		END
--		--CASE:วันที่ของวัน Eff เป็นวันสิ้นเดือน
--		IF(@EFF_DAY = @EFF_EOF_DAY) AND (@EXP_DAY<>@EXP_EOF_DAY)
--		BEGIN
--			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@EXPIRY_DATE)-1
--			SET @DAYS =1+@EXP_DAY
--			SET @CHECK_CASE=1			
			
--			IF(@DAYS >=@EXP_EOF_DAY)
--			BEGIN
--				SET @MONTH = @MONTH+1
--				SET @DAYS = @DAYS-@EXP_EOF_DAY
--			END						
--		END

--		--CASE : วันที่ของ Exp เป็นวันสิ้นเดือน
--		IF((@EXP_DAY = @EXP_EOF_DAY) AND (@EFF_DAY<>1))
--		BEGIN
--			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@EXPIRY_DATE)			
--			SET @DAYS =	(@EFF_EOF_DAY-(@EFF_DAY)+1)
--			SET @CHECK_CASE=1			
--		END

--		--CASE : วันที่ของ Exp เป็นวันสิ้นเดือน และ วันที่ของวัน Eff เป็นวันสิ้นเดือน
--		IF((@EXP_DAY = @EXP_EOF_DAY) AND (@EFF_DAY=@EFF_EOF_DAY))
--		BEGIN		
--			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@EXPIRY_DATE)
--			SET @DAYS =	1
--			SET @CHECK_CASE=2
--		END

--		IF((@EXP_DAY = 1) AND (@EFF_DAY<>1))
--		BEGIN			
--			SET @TEMP_EXP_DATE = LEFT(@EFFECTIVE_DATE,8)+ '01'
--			SET @MONTH = DATEDIFF(MM,@TEMP_EXP_DATE,@EXPIRY_DATE)-1
--			SET @DAYS = ((@EFF_EOF_DAY-@EFF_DAY)+1)+1
--			SET @CHECK_CASE=1				
--		END
--		--CASE:วันเริ่มต้นเป็นวันที่ 1 และ วันสิ้นสุดเป็นวันสิ้นเดือน
--		IF(@EXP_DAY = @EFF_DAY-1) AND (@EXP_DAY <> @EXP_EOF_DAY AND @EFF_DAY<>@EFF_EOF_DAY)
--		BEGIN
--			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@EXPIRY_DATE)
--			SET @DAYS = 0
--			SET @CHECK_CASE=1		
--		END
		
--		--CASE:นอกเหนือจากด้านบน
--		IF (@CHECK_CASE=0)
--		BEGIN		
--			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@EXPIRY_DATE)-1
--			SET @DIF_EFF = ((@EFF_EOF_DAY-@EFF_DAY)+1)+@EXP_DAY			

--			IF(@DIF_EFF>=@EFF_EOF_DAY)
--			BEGIN
--				SET @MONTH  = @MONTH+1
--				SET @DAYS	= @DIF_EFF-@EFF_EOF_DAY
--			END
--			ELSE
--			BEGIN
--				SET @DAYS = @DIF_EFF				
--			END			
--		END
--		-------------------------------------------------------------------------------------------------		

--		SET @YEAR = @MONTH/12		
--		SET @MONTH = @MONTH-(12*@YEAR)

--        --Select CONVERT(VARCHAR(1000),@DAYS) as DAYS,CONVERT(VARCHAR(1000),@MONTH) as MONTHS, CONVERT(VARCHAR(1000),@YEAR) as YEARS	
--        RETURN CONVERT(VARCHAR(1000),@DAYS)
DECLARE @TEMP_EFFECTIVE_DATE DATE,
		@TEMP_EXPIRY_DATE DATE,
		@TEMP_DAYS INT,
		@EOF_TEMP_EXPIRY_DATE  DATE,
		@COUNT_DATE INT,
		@DAYDIF INT,
		------
		@DAYS INT



		SET @TEMP_EFFECTIVE_DATE = LEFT(@EFFECTIVE_DATE,4)+ SUBSTRING(CONVERT(CHAR(10),@EFFECTIVE_DATE),6,2)+ '01' --เริ่มต้นวันใหม่เต็ม
		SET @DAYDIF = DATEDIFF(DAY,@EFFECTIVE_DATE,@Current_DATE)+1
		SET @TEMP_EXPIRY_DATE = DATEADD(DD,@DAYDIF-1,@TEMP_EFFECTIVE_DATE) --สิ้นสุดวันใหม่เต็ม
		SET @EOF_TEMP_EXPIRY_DATE = DATEADD(S,-1,DATEADD(mm, DATEDIFF(m,0,@TEMP_EXPIRY_DATE)+1,0))--วันสุดท้ายของวันสุดท้าย
				
		SET @TEMP_DAYS = RIGHT(@TEMP_EXPIRY_DATE,2)	
			
		IF(@TEMP_DAYS < RIGHT(@EOF_TEMP_EXPIRY_DATE,2))
		BEGIN
			SET @DAYS = @TEMP_DAYS
		END
		ELSE
		BEGIN
			SET @DAYS = 0
		END		
		RETURN CONVERT(VARCHAR(1000),@DAYS)
        --Select CONVERT(VARCHAR(1000),@DAYS) as Days
		--PRINT '@DAYS : '+ CONVERT(VARCHAR(1000),@DAYS)
	

END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetMonth]    Script Date: 5/11/2020 7:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_GetMonth]
(
	-- Add the parameters for the function here
	@EFFECTIVE_DATE Date,
	@Current_DATE    Date
)
RETURNS VARCHAR(1000)
AS
BEGIN
DECLARE	@DAYS INT,
		@MONTH INT,
		@YEAR INT,
		--รับค่า วัน เดือน ปี ของวัน EFFECTIVE DATE,EXPIRY_DATE
		@EFF_DAY INT,
		@EXP_DAY INT,
		--รับค่าวันสิ้นเดือน
		@EXP_EOF_DAY INT,
		@EFF_EOF_DAY INT,
		--รับค่า Sum ผลต่างช่วงหน้า และ ผลต่างช่วงหลัง
		@TEMP_EXP_DATE DATE,
		
		--สำหรับรับค่าผลต่าง
		@DIF_EFF INT,		
		@CHECK_CASE INT

		--SET @EFFECTIVE_DATE='2016-02-15'
		--SET @EXPIRY_DATE = '2016-05-21'

		--รับค่า วัน เดือน ปี ของ Effective
		SET @EFF_DAY= DATEPART(DD,@EFFECTIVE_DATE)
		
		--รับค่า วัน เดือน ปี ของ Effective
		SET @EXP_DAY= DATEPART(DD,@Current_DATE)
				
		--หาวันที่สิ้นเดือน		
		SET @EFF_EOF_DAY = DATEPART(DD,DATEADD(S,-1,DATEADD(mm, DATEDIFF(m,0,@EFFECTIVE_DATE)+1,0)))
		SET @EXP_EOF_DAY = DATEPART(DD,DATEADD(S,-1,DATEADD(mm, DATEDIFF(m,0,@Current_DATE)+1,0)))
		
		SET @CHECK_CASE=0
		--CASE:วันที่ Eff เป็นวันที่ 1 และ วันที่ Exp เป็นวันสิ้นเดือน
		IF(@EFF_DAY=1 AND @EXP_DAY = @EXP_EOF_DAY)--BIG BIG BIG BIG
		BEGIN
			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@Current_DATE)+1
			SET @DAYS = 0
			SET @CHECK_CASE=1
		END
		--CASE:วันที่ Eff เป็นวันที่ 1 และ วันที่ Exp ไม่เป็นวันสิ้นเดือน
		IF(@EFF_DAY=1) AND (@EXP_DAY <> @EXP_EOF_DAY)
		BEGIN
			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@Current_DATE)
			SET @DAYS =	@EXP_DAY
			SET @CHECK_CASE=1			
		END
		--CASE:วันที่ของวัน Eff เป็นวันสิ้นเดือน
		IF(@EFF_DAY = @EFF_EOF_DAY) AND (@EXP_DAY<>@EXP_EOF_DAY)
		BEGIN
			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@Current_DATE)-1
			SET @DAYS =1+@EXP_DAY
			SET @CHECK_CASE=1			
			
			IF(@DAYS >=@EXP_EOF_DAY)
			BEGIN
				SET @MONTH = @MONTH+1
				SET @DAYS = @DAYS-@EXP_EOF_DAY
			END						
		END

		--CASE : วันที่ของ Exp เป็นวันสิ้นเดือน
		IF((@EXP_DAY = @EXP_EOF_DAY) AND (@EFF_DAY<>1))
		BEGIN
			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@Current_DATE)			
			SET @DAYS =	(@EFF_EOF_DAY-(@EFF_DAY)+1)
			SET @CHECK_CASE=1			
		END

		--CASE : วันที่ของ Exp เป็นวันสิ้นเดือน และ วันที่ของวัน Eff เป็นวันสิ้นเดือน
		IF((@EXP_DAY = @EXP_EOF_DAY) AND (@EFF_DAY=@EFF_EOF_DAY))
		BEGIN		
			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@Current_DATE)
			SET @DAYS =	1
			SET @CHECK_CASE=2
		END

		IF((@EXP_DAY = 1) AND (@EFF_DAY<>1))
		BEGIN			
			SET @TEMP_EXP_DATE = LEFT(@EFFECTIVE_DATE,8)+ '01'
			SET @MONTH = DATEDIFF(MM,@TEMP_EXP_DATE,@Current_DATE)-1
			SET @DAYS = ((@EFF_EOF_DAY-@EFF_DAY)+1)+1
			SET @CHECK_CASE=1				
		END
		--CASE:วันเริ่มต้นเป็นวันที่ 1 และ วันสิ้นสุดเป็นวันสิ้นเดือน
		IF(@EXP_DAY = @EFF_DAY-1) AND (@EXP_DAY <> @EXP_EOF_DAY AND @EFF_DAY<>@EFF_EOF_DAY)
		BEGIN
			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@Current_DATE)
			SET @DAYS = 0
			SET @CHECK_CASE=1		
		END
		
		--CASE:นอกเหนือจากด้านบน
		IF (@CHECK_CASE=0)
		BEGIN		
			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@Current_DATE)-1
			SET @DIF_EFF = ((@EFF_EOF_DAY-@EFF_DAY)+1)+@EXP_DAY			

			IF(@DIF_EFF>=@EFF_EOF_DAY)
			BEGIN
				SET @MONTH  = @MONTH+1
				SET @DAYS	= @DIF_EFF-@EFF_EOF_DAY
			END
			ELSE
			BEGIN
				SET @DAYS = @DIF_EFF				
			END			
		END
		-------------------------------------------------------------------------------------------------		

		SET @YEAR = @MONTH/12		
		SET @MONTH = @MONTH-(12*@YEAR)

     		RETURN CONVERT(VARCHAR(1000),@MONTH)

END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetYears]    Script Date: 5/11/2020 7:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_GetYears]
(
	-- Add the parameters for the function here
	@EFFECTIVE_DATE Date,
	@CurrentDate    Date
)
RETURNS VARCHAR(1000)
AS
BEGIN
	DECLARE	@DAYS INT,
		@MONTH INT,
		@YEAR INT,
		--รับค่า วัน เดือน ปี ของวัน EFFECTIVE DATE,EXPIRY_DATE
		@EFF_DAY INT,
		@EXP_DAY INT,
		--รับค่าวันสิ้นเดือน
		@EXP_EOF_DAY INT,
		@EFF_EOF_DAY INT,
		--รับค่า Sum ผลต่างช่วงหน้า และ ผลต่างช่วงหลัง
		@TEMP_EXP_DATE DATE,
		
		--สำหรับรับค่าผลต่าง
		@DIF_EFF INT,		
		@CHECK_CASE INT

		--SET @EFFECTIVE_DATE='2016-02-15'
		--SET @EXPIRY_DATE = '2016-05-21'

		--รับค่า วัน เดือน ปี ของ Effective
		SET @EFF_DAY= DATEPART(DD,@EFFECTIVE_DATE)
		
		--รับค่า วัน เดือน ปี ของ Effective
		SET @EXP_DAY= DATEPART(DD,@CurrentDate)
				
		--หาวันที่สิ้นเดือน		
		SET @EFF_EOF_DAY = DATEPART(DD,DATEADD(S,-1,DATEADD(mm, DATEDIFF(m,0,@EFFECTIVE_DATE)+1,0)))
		SET @EXP_EOF_DAY = DATEPART(DD,DATEADD(S,-1,DATEADD(mm, DATEDIFF(m,0,@CurrentDate)+1,0)))
		
		SET @CHECK_CASE=0
		--CASE:วันที่ Eff เป็นวันที่ 1 และ วันที่ Exp เป็นวันสิ้นเดือน
		IF(@EFF_DAY=1 AND @EXP_DAY = @EXP_EOF_DAY)--BIG BIG BIG BIG
		BEGIN
			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@CurrentDate)+1
			SET @DAYS = 0
			SET @CHECK_CASE=1
		END
		--CASE:วันที่ Eff เป็นวันที่ 1 และ วันที่ Exp ไม่เป็นวันสิ้นเดือน
		IF(@EFF_DAY=1) AND (@EXP_DAY <> @EXP_EOF_DAY)
		BEGIN
			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@CurrentDate)
			SET @DAYS =	@EXP_DAY
			SET @CHECK_CASE=1			
		END
		--CASE:วันที่ของวัน Eff เป็นวันสิ้นเดือน
		IF(@EFF_DAY = @EFF_EOF_DAY) AND (@EXP_DAY<>@EXP_EOF_DAY)
		BEGIN
			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@CurrentDate)-1
			SET @DAYS =1+@EXP_DAY
			SET @CHECK_CASE=1			
			
			IF(@DAYS >=@EXP_EOF_DAY)
			BEGIN
				SET @MONTH = @MONTH+1
				SET @DAYS = @DAYS-@EXP_EOF_DAY
			END						
		END

		--CASE : วันที่ของ Exp เป็นวันสิ้นเดือน
		IF((@EXP_DAY = @EXP_EOF_DAY) AND (@EFF_DAY<>1))
		BEGIN
			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@CurrentDate)			
			SET @DAYS =	(@EFF_EOF_DAY-(@EFF_DAY)+1)
			SET @CHECK_CASE=1			
		END

		--CASE : วันที่ของ Exp เป็นวันสิ้นเดือน และ วันที่ของวัน Eff เป็นวันสิ้นเดือน
		IF((@EXP_DAY = @EXP_EOF_DAY) AND (@EFF_DAY=@EFF_EOF_DAY))
		BEGIN		
			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@CurrentDate)
			SET @DAYS =	1
			SET @CHECK_CASE=2
		END

		IF((@EXP_DAY = 1) AND (@EFF_DAY<>1))
		BEGIN			
			SET @TEMP_EXP_DATE = LEFT(@EFFECTIVE_DATE,8)+ '01'
			SET @MONTH = DATEDIFF(MM,@TEMP_EXP_DATE,@CurrentDate)-1
			SET @DAYS = ((@EFF_EOF_DAY-@EFF_DAY)+1)+1
			SET @CHECK_CASE=1				
		END
		--CASE:วันเริ่มต้นเป็นวันที่ 1 และ วันสิ้นสุดเป็นวันสิ้นเดือน
		IF(@EXP_DAY = @EFF_DAY-1) AND (@EXP_DAY <> @EXP_EOF_DAY AND @EFF_DAY<>@EFF_EOF_DAY)
		BEGIN
			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@CurrentDate)
			SET @DAYS = 0
			SET @CHECK_CASE=1		
		END
		
		--CASE:นอกเหนือจากด้านบน
		IF (@CHECK_CASE=0)
		BEGIN		
			SET @MONTH = DATEDIFF(MM,@EFFECTIVE_DATE,@CurrentDate)-1
			SET @DIF_EFF = ((@EFF_EOF_DAY-@EFF_DAY)+1)+@EXP_DAY			

			IF(@DIF_EFF>=@EFF_EOF_DAY)
			BEGIN
				SET @MONTH  = @MONTH+1
				SET @DAYS	= @DIF_EFF-@EFF_EOF_DAY
			END
			ELSE
			BEGIN
				SET @DAYS = @DIF_EFF				
			END			
		END
		-------------------------------------------------------------------------------------------------		

		SET @YEAR = @MONTH/12		
		SET @MONTH = @MONTH-(12*@YEAR)
		return CONVERT(VARCHAR(1000),@YEAR)

END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_ShowTimeLine]    Script Date: 5/11/2020 7:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_ShowTimeLine]
(
	-- Add the parameters for the function here
		@EFFECTIVE_DATE Date,
	    @Current_DATE    Date
)
RETURNS VARCHAR(1000)
AS
BEGIN
	declare @year varchar(20);
	declare @month varchar(20);
	declare @day varchar(20);
	declare @timeline varchar(1000);
	select @year = [dbo].[fn_GetYears](@EFFECTIVE_DATE, @Current_DATE)
	select @month = [dbo].[fn_GetMonth](@EFFECTIVE_DATE, @Current_DATE)
	select @day = [dbo].[fn_GetDay](@EFFECTIVE_DATE, @Current_DATE)
        --Select CONVERT(VARCHAR(1000),@DAYS) as Days
		--PRINT '@DAYS : '+ CONVERT(VARCHAR(1000),@DAYS)
	select @year = case when @year > 1 then @year + ' years '
	 when @year = 1 then @year + ' year '
    else '' end,
	@month = case when @month > 1 then @month + ' months '
	 when @month = 1 then @month + ' month '
    else '' end,
	@day = case when @day > 1 then @day + ' days'
	 when @day = 1 then @day + ' day'
    else '' end
	set @timeline = @year + @month + @day;
	return @timeline;
END
GO
/****** Object:  UserDefinedFunction [dbo].[genClassID]    Script Date: 5/11/2020 7:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[genClassID]
(
    @paramCourseID varchar(50)
	
)
RETURNS varchar(100) -- or whatever length you need
AS
BEGIN
    DECLARE @ClassID as varchar(50);
	Declare @running int;
	select @ClassID = isnull(max([ClassID]), @paramCourseID+ '-' + convert(varchar(4),YEAR(getdate())) + '-' + '00')
	from [dbo].[LDMS_T_Class]
	where [ClassID] like @paramCourseID + '-'  + convert(varchar(4),YEAR(getdate())) + '%'
	set @running =  cast(Substring(@ClassID, len(@ClassID) - 1, 2) as int) + 1;
	set @ClassID = @paramCourseID + '-'  + convert(varchar(4),YEAR(getdate())) + '-' + format(@running, '00')
    RETURN  @ClassID

END
GO
/****** Object:  UserDefinedFunction [dbo].[genCourseID]    Script Date: 5/11/2020 7:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[genCourseID]
(
    @paramIDCourseType int
	,@paramDeptID  varchar(10)
)
RETURNS varchar(100) -- or whatever length you need
AS
BEGIN
    Declare @prefix varchar(50);
	Declare @suffix varchar(50);
	Declare @CourseID varchar(50);
	Declare @running int;
    SELECT @prefix = CourseType.PrefixCode, @suffix = case when CourseType.SubPrefixCode is not null then  @paramDeptID else '' end
	from [LDMS_M_CourseType] As CourseType
    where CourseType.ID = @paramIDCourseType
	if (@prefix is null) return 'NO VALID COURSE ID';
	Select @CourseID = isnull(max(CourseID), @prefix + isnull(@suffix, '') + '000')
	from [dbo].[LDMS_M_Course]
	where CourseID like @prefix + isnull(@suffix, '') + '%'

	set @running =  cast(Substring(@CourseID, len(@CourseID) - 2, len(@CourseID)) as int) + 1;
	set @CourseID = @prefix + isnull(@suffix, '') + format(@running, '000');
    RETURN  @CourseID

END
GO
/****** Object:  UserDefinedFunction [dbo].[SplitInts]    Script Date: 5/11/2020 7:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SplitInts]
(
   @List      VARCHAR(MAX),
   @Delimiter VARCHAR(255)
)
RETURNS TABLE
AS
  RETURN ( SELECT Item = CONVERT(INT, Item) FROM
      ( SELECT Item = x.i.value('(./text())[1]', 'varchar(max)')
        FROM ( SELECT [XML] = CONVERT(XML, '<i>'
        + REPLACE(@List, @Delimiter, '</i><i>') + '</i>').query('.')
          ) AS a CROSS APPLY [XML].nodes('i') AS x(i) ) AS y
      WHERE Item IS NOT NULL
  );
GO
/****** Object:  View [dbo].[VW_Flat_Course_Employee]    Script Date: 5/11/2020 7:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create VIEW [dbo].[VW_Flat_Course_Employee]
AS
select display.ID_COURSE, ISNULL(left(display.[EmployeeID], LEN(display.[EmployeeID]) -2), '') as [EmployeeID]
from (
select distinct mainTable.ID_COURSE, innerdisplay.[EmployeeID] 
from [dbo].[LDMS_T_CourseEmployee] mainTable
cross apply (select concattable.[EmployeeID] + ', '
			from [dbo].[LDMS_T_CourseEmployee] concattable
			where mainTable.ID_COURSE = concattable.ID_COURSE
			order by concattable.ID_COURSE
			for xml path ('')) as innerdisplay ([EmployeeID]))display
GO
/****** Object:  View [dbo].[VW_Flat_Course_JobGrade]    Script Date: 5/11/2020 7:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create VIEW [dbo].[VW_Flat_Course_JobGrade]
AS
select display.ID_COURSE, ISNULL(left(display.[ID_JobGrade], LEN(display.[ID_JobGrade]) -2), '') as [ID_JobGrade]
from (
select distinct mainTable.ID_COURSE, innerdisplay.[ID_JobGrade] 
from [dbo].[LDMS_T_CourseJobGrade] mainTable
cross apply (select concattable.[ID_JobGrade] + ', '
			from [dbo].[LDMS_T_CourseJobGrade] concattable
			where mainTable.ID_COURSE = concattable.ID_COURSE
			order by concattable.ID_COURSE
			for xml path ('')) as innerdisplay ([ID_JobGrade]))display
GO
/****** Object:  View [dbo].[VW_Flat_Course_JobTitle]    Script Date: 5/11/2020 7:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Flat_Course_JobTitle]
AS
select display.ID_COURSE, ISNULL(left(display.[ID_JobTitle], LEN(display.[ID_JobTitle]) -2), '') as [ID_JobTitle]
from (
select distinct mainTable.ID_COURSE, innerdisplay.[ID_JobTitle] 
from [dbo].[LDMS_T_CourseJobTitle] mainTable
cross apply (select concattable.[ID_JobTitle] + ', '
			from [dbo].[LDMS_T_CourseJobTitle] concattable
			where mainTable.ID_COURSE = concattable.ID_COURSE
			order by concattable.ID_COURSE
			for xml path ('')) as innerdisplay ([ID_JobTitle]))display
GO
/****** Object:  View [dbo].[VW_M_Course_Display]    Script Date: 5/11/2020 7:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VW_M_Course_Display]
AS
SELECT       dbo.LDMS_M_Course.CourseID, dbo.LDMS_M_Course.ID, dbo.LDMS_M_Course.CourseName, dbo.LDMS_M_Course.ID_LearnMethod, dbo.LDMS_M_Course.ID_CourseType, dbo.LDMS_M_Course.Objective, 
                         dbo.LDMS_M_Course.Description, dbo.LDMS_M_Course.OutLine, dbo.LDMS_M_Course.IsRefreshment, dbo.LDMS_M_Course.RefreshmentPeriod, dbo.LDMS_M_Course.RefreshmentUnit, dbo.LDMS_M_Course.ID_PlantTarget, 
                         dbo.LDMS_M_Course.ID_CenterTarget, dbo.LDMS_M_Course.ID_DivisionTarget, dbo.LDMS_M_Course.ID_DepartmentTarget, dbo.LDMS_M_Course.ID_SectionTarget, dbo.LDMS_M_Course.ID_DepartmentCreate, 
                         dbo.LDMS_M_Course.CreateBy, dbo.LDMS_M_Course.CreateDate, dbo.LDMS_M_Course.UpdateBy, dbo.LDMS_M_Course.UpdateDate, dbo.LDMS_M_Course.IsActive, dbo.VW_Flat_Course_Employee.EmployeeID AS TargetEmployeeID, 
                         dbo.VW_Flat_Course_JobGrade.ID_JobGrade AS TargetJobgrade, dbo.VW_Flat_Course_JobTitle.ID_JobTitle AS TargetJobTitle
FROM            dbo.LDMS_M_Course LEFT JOIN
                         dbo.VW_Flat_Course_Employee ON dbo.LDMS_M_Course.ID = dbo.VW_Flat_Course_Employee.ID_COURSE LEFT JOIN
                         dbo.VW_Flat_Course_JobGrade ON dbo.LDMS_M_Course.ID = dbo.VW_Flat_Course_JobGrade.ID_COURSE LEFT JOIN
                         dbo.VW_Flat_Course_JobTitle ON dbo.LDMS_M_Course.ID = dbo.VW_Flat_Course_JobTitle.ID_COURSE
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Flat_Course_JobTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Flat_Course_JobTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "LDMS_M_Course"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 240
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "VW_Flat_Course_Employee"
            Begin Extent = 
               Top = 151
               Left = 187
               Bottom = 302
               Right = 357
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VW_Flat_Course_JobGrade"
            Begin Extent = 
               Top = 42
               Left = 497
               Bottom = 138
               Right = 667
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VW_Flat_Course_JobTitle"
            Begin Extent = 
               Top = 6
               Left = 694
               Bottom = 102
               Right = 864
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2340
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_M_Course_Display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_M_Course_Display'
GO
