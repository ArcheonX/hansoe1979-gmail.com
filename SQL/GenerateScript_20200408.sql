/****** Object:  UserDefinedFunction [dbo].[SplitInts]    Script Date: 4/8/2020 11:37:57 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Amphurs]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Amphurs](
	[AMPHUR_ID] [int] NOT NULL,
	[AMPHUR_CODE] [varchar](4) COLLATE Thai_CI_AS NOT NULL,
	[AMPHUR_NAME] [varchar](150) COLLATE Thai_CI_AS NOT NULL,
	[AMPHUR_NAME_ENG] [varchar](150) COLLATE Thai_CI_AS NOT NULL,
	[GEO_ID] [int] NOT NULL,
	[PROVINCE_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AMPHUR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_ApproveFlow]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_ApproveFlow](
	[ApproveFlowID] [int] NULL,
	[ID_JobGrageRequest] [int] NULL,
	[ID_JobGradeApprove] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Center]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Center](
	[ID] [int] NOT NULL,
	[CenterID] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[ID_Plant] [int] NOT NULL,
	[CenterName_EN] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CenterName_TH] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Center] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_CodeLookUp]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_CodeLookUp](
	[ID] [int] NOT NULL,
	[TableName] [nvarchar](50) COLLATE Thai_CI_AS NOT NULL,
	[FieldName] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Code] [nvarchar](50) COLLATE Thai_CI_AS NOT NULL,
	[StateName] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Sequence] [int] NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[IsDefault] [tinyint] NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_CodeLookUp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Course]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Course](
	[ID] [int] NOT NULL,
	[CourseID] [nvarchar](50) COLLATE Thai_CI_AS NOT NULL,
	[CourseName] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[ID_LearnMethod] [int] NOT NULL,
	[ID_CourseType] [int] NOT NULL,
	[Objective] [nvarchar](200) COLLATE Thai_CI_AS NULL,
	[Description] [nvarchar](200) COLLATE Thai_CI_AS NULL,
	[OutLine] [nvarchar](200) COLLATE Thai_CI_AS NULL,
	[IsRefreshment] [int] NOT NULL,
	[RefreshmentPeriod_Day] [int] NULL,
	[TargetEmployeeID] [text] COLLATE Thai_CI_AS NULL,
	[ID_PlantTarget] [int] NULL,
	[ID_CenterTarget] [int] NULL,
	[ID_DivisionTarget] [int] NULL,
	[ID_DepartmentTarget] [int] NULL,
	[ID_SectionTarget] [int] NULL,
	[JobGradeTargetID] [nvarchar](200) COLLATE Thai_CI_AS NULL,
	[JobTitleTargetID] [text] COLLATE Thai_CI_AS NULL,
	[ID_DepartmentCreate] [int] NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_CourseLearnMethod]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_CourseLearnMethod](
	[ID] [int] NOT NULL,
	[Course_LearnMethodName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Course_LearnMethodName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[IsInterface] [int] NOT NULL,
	[Url] [nvarchar](200) COLLATE Thai_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_CourseLearnMethod] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_CourseType]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_CourseType](
	[ID] [int] NOT NULL,
	[CourseTypeName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CourseTypeName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[ID_PlatformType] [int] NULL,
	[PrefixFormat] [nvarchar](50) COLLATE Thai_CI_AS NOT NULL,
	[PrefixCode] [nvarchar](10) COLLATE Thai_CI_AS NOT NULL,
	[SubPrefixCode] [nvarchar](10) COLLATE Thai_CI_AS NULL,
	[RunningLength] [int] NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_CourseType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Department]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Department](
	[ID] [int] NOT NULL,
	[DepartmentID] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[ID_Division] [int] NOT NULL,
	[DepartmentName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[DepartmentName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Districts]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Districts](
	[DISTRICT_ID] [int] NOT NULL,
	[DISTRICT_CODE] [varchar](6) COLLATE Thai_CI_AS NULL,
	[DISTRICT_NAME] [varchar](150) COLLATE Thai_CI_AS NULL,
	[DISTRICT_NAME_ENG] [varchar](150) COLLATE Thai_CI_AS NULL,
	[AMPHUR_ID] [int] NULL,
	[PROVINCE_ID] [int] NULL,
	[GEO_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DISTRICT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Division]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Division](
	[ID] [int] NOT NULL,
	[DivisionID] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[ID_Center] [int] NOT NULL,
	[DivisionName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[DivisionName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBY] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Division] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Instructor]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Instructor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Instructor_ID] [nvarchar](10) COLLATE Thai_CI_AS NOT NULL,
	[Instructor_Name] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[Type] [nvarchar](50) COLLATE Thai_CI_AS NOT NULL,
	[ID_Employee] [int] NULL,
	[Phone] [nvarchar](20) COLLATE Thai_CI_AS NULL,
	[Email] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Organization] [int] NULL,
	[Address] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[District_Id] [int] NULL,
	[Aumphur_Id] [int] NULL,
	[Provice_Id] [int] NULL,
	[Post_Code] [nvarchar](5) COLLATE Thai_CI_AS NULL,
	[Path_Image] [nvarchar](200) COLLATE Thai_CI_AS NULL,
	[Path_Certificate] [nvarchar](200) COLLATE Thai_CI_AS NULL,
	[Education_Level] [nvarchar](500) COLLATE Thai_CI_AS NULL,
	[Major] [nvarchar](200) COLLATE Thai_CI_AS NULL,
	[Course_Experience] [nvarchar](500) COLLATE Thai_CI_AS NULL,
	[Skill_Professional] [nvarchar](500) COLLATE Thai_CI_AS NULL,
	[Customer_Reference] [nvarchar](500) COLLATE Thai_CI_AS NULL,
	[Manufacturing_Area] [nvarchar](500) COLLATE Thai_CI_AS NULL,
	[Create_By] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Update_Date] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Instructor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_JobGrade]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_JobGrade](
	[ID] [int] NOT NULL,
	[JobGradeID] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[JobGradeName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[JobGradeName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_JobGrade] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_JobTitle]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_JobTitle](
	[ID] [int] NOT NULL,
	[JobTitleID] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[JobTitleName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[JobTitleName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_JobTitle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Module]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Module](
	[ID] [int] NOT NULL,
	[ModuleID] [nvarchar](10) COLLATE Thai_CI_AS NOT NULL,
	[ModuleName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[ModuleName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Sequence] [int] NULL,
	[Parent] [int] NULL,
	[URL] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[Icon] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Module] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Page]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Page](
	[ID_Page] [int] NOT NULL,
	[PageCode] [nvarchar](10) COLLATE Thai_CI_AS NOT NULL,
	[ID_SubModule] [int] NULL,
	[PageName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[PageName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[Sequence] [int] NULL,
	[URL] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[Icon] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Page] PRIMARY KEY CLUSTERED 
(
	[ID_Page] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Plant]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Plant](
	[ID] [int] NOT NULL,
	[PlantID] [nvarchar](10) COLLATE Thai_CI_AS NULL,
	[PlantName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[PlantName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[PlantDescription] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Plant] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Platform]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Platform](
	[ID] [int] NOT NULL,
	[PlatformID] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[PlatformName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[PlatformName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[ID_PlatformType] [int] NULL,
	[PlatformDescription] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[ID_Department_Create] [int] NOT NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Platform] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_PlatformType]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_PlatformType](
	[ID] [int] NOT NULL,
	[PlatformTypeName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[PlatformTypeName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_PlatformType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Prefix]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Prefix](
	[PrefixID] [int] NULL,
	[PageID] [int] NULL,
	[PrefixKey] [nvarchar](10) COLLATE Thai_CI_AS NULL,
	[FormatKey] [nvarchar](20) COLLATE Thai_CI_AS NULL,
	[LenghtKey] [int] NULL,
	[LastestKey] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Provinces]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Provinces](
	[PROVINCE_ID] [int] NOT NULL,
	[PROVINCE_CODE] [varchar](2) COLLATE Thai_CI_AS NULL,
	[PROVINCE_NAME] [varchar](150) COLLATE Thai_CI_AS NULL,
	[PROVINCE_NAME_ENG] [varchar](150) COLLATE Thai_CI_AS NULL,
	[GEO_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PROVINCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Role]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Role](
	[ID] [int] NOT NULL,
	[RoleName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[RoleName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[RoleDescription] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_RolePermission]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_RolePermission](
	[ID] [int] NOT NULL,
	[ID_Role] [int] NOT NULL,
	[ID_SubModule] [int] NOT NULL,
	[PermissionType] [int] NOT NULL,
	[RolePermissionDescription] [nvarchar](250) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_RolePermission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Section]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Section](
	[ID] [int] NOT NULL,
	[SectionID] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[ID_Department] [int] NOT NULL,
	[SectionName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[SectionName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Section] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_SubModule]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_SubModule](
	[ID] [int] NOT NULL,
	[SubModuleID] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[ID_Module] [int] NOT NULL,
	[SubModuleName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[SubModuleName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Sequence] [int] NULL,
	[Parent] [int] NULL,
	[URL] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[Icon] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [int] NOT NULL,
 CONSTRAINT [PK_LDMS_M_SubModule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_SubPlatform]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_SubPlatform](
	[ID] [int] NOT NULL,
	[ID_Platform] [int] NOT NULL,
	[SubPlatformName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[SubPlatformName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_SubPlatform] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_SubPlatformCourse]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_SubPlatformCourse](
	[ID_SubPlatform] [int] NOT NULL,
	[ID_Course] [int] NOT NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_User]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_User](
	[EmployeeID] [nvarchar](50) COLLATE Thai_CI_AS NOT NULL,
	[IsAD] [tinyint] NOT NULL,
	[DriverLicenseID] [nvarchar](20) COLLATE Thai_CI_AS NULL,
	[IDCardNumber] [nvarchar](20) COLLATE Thai_CI_AS NULL,
	[Gender] [nvarchar](10) COLLATE Thai_CI_AS NULL,
	[Name] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Surname] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Nationality] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[ID_JobGrade] [int] NULL,
	[ID_JobTitle] [int] NULL,
	[ID_Plant] [int] NOT NULL,
	[ID_Center] [int] NULL,
	[ID_Division] [int] NULL,
	[ID_Department] [int] NULL,
	[JoinDate] [datetime] NULL,
	[OutDate] [datetime] NULL,
	[DateOfBirth] [datetime] NULL,
	[PhoneNumber] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Email] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[ProfilePath] [nvarchar](250) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_User] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_UserRole]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_UserRole](
	[ID] [int] NOT NULL,
	[EmployeeID] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[ID_Role] [int] NOT NULL,
	[Password] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[IsInstructor] [int] NULL,
	[IsSectionHead] [int] NULL,
	[ID_Section] [int] NULL,
	[Remark] [nvarchar](200) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
	[passwordSalt] [nvarchar](250) COLLATE Thai_CI_AS NULL,
 CONSTRAINT [PK_LDMS_M_UserRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_VenueRoom]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_VenueRoom](
	[ID] [int] NOT NULL,
	[VenueRoomID] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[ID_Plant] [int] NOT NULL,
	[RoomName_EN] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[RoomName_TH] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_VenueRoom] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Zipcodes]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Zipcodes](
	[ID] [int] NOT NULL,
	[DISTRICT_CODE] [varchar](6) COLLATE Thai_CI_AS NULL,
	[ZIPCODE] [varchar](5) COLLATE Thai_CI_AS NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_AuditLog]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_AuditLog](
	[AuditLogID] [int] NOT NULL,
	[ip_address] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[LogDetail] [text] COLLATE Thai_CI_AS NULL,
	[Datetime] [datetime] NOT NULL,
	[EmployeeID] [int] NULL,
	[LogType] [int] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_T_AuditLog] PRIMARY KEY CLUSTERED 
(
	[AuditLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_Class]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_Class](
	[ID] [int] NOT NULL,
	[ClassID] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[ID_Course] [int] NOT NULL,
	[ID_Instructor] [int] NULL,
	[ClassCapacity] [int] NULL,
	[ClassFee] [decimal](8, 2) NULL,
	[LearnDateStart] [date] NOT NULL,
	[LearnTimeStart] [time](7) NULL,
	[LearnDateEnd] [date] NOT NULL,
	[LearnTimeEnd] [time](7) NULL,
	[RegisterDateStart] [date] NULL,
	[RegisterDateEnd] [date] NULL,
	[ID_PlantVenue] [int] NULL,
	[ID_VenueRoom] [int] NULL,
	[PlaceAndLocation] [nvarchar](200) COLLATE Thai_CI_AS NULL,
	[ClassStatus] [int] NOT NULL,
	[IsAttend] [tinyint] NOT NULL,
	[AttendNum] [int] NULL,
	[IsTest] [tinyint] NOT NULL,
	[TestFullScore] [int] NULL,
	[TestPercentage] [int] NULL,
	[IsSkill] [tinyint] NOT NULL,
	[SkillFullScore] [int] NULL,
	[SkillPercentage] [int] NULL,
	[IsCoaching] [tinyint] NOT NULL,
	[IsCertificate] [tinyint] NOT NULL,
	[IsAttachCert] [tinyint] NOT NULL,
	[CertificationRemark] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[ReminderDurationDay] [int] NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_T_Class] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_ClassAttendAndResult]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_ClassAttendAndResult](
	[ID] [int] NOT NULL,
	[ID_Class] [int] NOT NULL,
	[ID_Course] [int] NOT NULL,
	[ID_Employee] [int] NOT NULL,
	[ClassState] [int] NOT NULL,
	[LearningResult] [int] NULL,
	[AttendCountNum] [tinyint] NULL,
	[AttendTimeStamp] [timestamp] NOT NULL,
	[IsScanRFID] [tinyint] NULL,
	[PreTestScore] [int] NULL,
	[PostTestScore] [int] NULL,
	[SkillScore] [int] NULL,
	[CoachingStatus] [tinyint] NULL,
	[CertificateStatus] [tinyint] NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_LDMS_T_ClassAttendAndResult] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_ClassCertificate]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_ClassCertificate](
	[ID] [int] NOT NULL,
	[ID_Class] [int] NOT NULL,
	[ID_Course] [int] NOT NULL,
	[ID_Employee] [int] NOT NULL,
	[Certificate_Path] [nvarchar](100) COLLATE Thai_CI_AS NOT NULL,
	[Description] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_LDMS_T_ClassCertificate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_ClassRegistration]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_ClassRegistration](
	[ID] [int] NOT NULL,
	[ID_Class] [int] NOT NULL,
	[ID_Course] [int] NOT NULL,
	[ID_Employee] [int] NOT NULL,
	[RegisterStatus] [int] NOT NULL,
	[RemarkManager] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[RegisterDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[RemarkAdmin] [nvarchar](50) COLLATE Thai_CI_AS NULL,
 CONSTRAINT [PK_LDMS_T_ClassRegistration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_Coaching]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_Coaching](
	[ID] [int] NOT NULL,
	[ID_Class] [int] NOT NULL,
	[ID_Course] [int] NULL,
	[ID_Employee] [int] NOT NULL,
	[CoachingStatus] [tinyint] NOT NULL,
	[Topic] [text] COLLATE Thai_CI_AS NULL,
	[AssignDate] [datetime] NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_LDMS_T_Coaching] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CoachingReviewDetail]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CoachingReviewDetail](
	[ID] [int] NOT NULL,
	[ID_CoachingReviewHead] [int] NOT NULL,
	[PostDetail] [text] COLLATE Thai_CI_AS NOT NULL,
	[AttachFilePath] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[PostDate] [datetime] NOT NULL,
	[ID_PostByEmployee] [int] NOT NULL,
 CONSTRAINT [PK_LDMS_T_CoachingReviewDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CoachingReviewHead]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CoachingReviewHead](
	[ID] [int] NOT NULL,
	[ID_Coaching] [int] NOT NULL,
	[EmployeeReport] [text] COLLATE Thai_CI_AS NOT NULL,
	[AttachFilePath] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[PostDate] [datetime] NOT NULL,
	[ID_PostByEmployee] [int] NOT NULL,
 CONSTRAINT [PK_LDMS_T_CoachingReviewHead] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CompetenceAnalytic](
	[ID] [int] NOT NULL,
	[ID_EmployeeManager] [int] NOT NULL,
	[CompetenceAnalyticName] [nvarchar](100) COLLATE Thai_CI_AS NOT NULL,
	[Criteria1] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[Criteria2] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[Criteria3] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[Criteria4] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[Criteria5] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[ID_Department] [int] NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Employee]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CompetenceAnalytic_Employee](
	[ID] [int] NOT NULL,
	[ID_CompetenceAnalytic] [int] NOT NULL,
	[ID_Employee] [int] NOT NULL,
	[EmployeeName] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic](
	[ID] [int] NOT NULL,
	[ID_CompetenceAnalytic] [int] NOT NULL,
	[ID_Course] [int] NULL,
	[KnowledgeTopicName] [nvarchar](100) COLLATE Thai_CI_AS NOT NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic_KnwldTopicr] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Score]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CompetenceAnalytic_Score](
	[ID] [int] NOT NULL,
	[ID_CompetenceAnalytic] [int] NOT NULL,
	[ID_CompetenceKnowledgeTopic] [int] NOT NULL,
	[ID_CompetenceEmployee] [int] NOT NULL,
	[Score] [int] NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic_Score] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceStar]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CompetenceStar](
	[ID] [int] NOT NULL,
	[ID_Employee] [int] NOT NULL,
	[ID_Manager] [int] NOT NULL,
	[CompetenceStarTypeID] [nvarchar](50) COLLATE Thai_CI_AS NOT NULL,
	[IsStarActive] [int] NOT NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceStar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_DataLog]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_DataLog](
	[DataLogID] [int] NOT NULL,
	[ip_address] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[LogDetail] [text] COLLATE Thai_CI_AS NULL,
	[Datetime] [datetime] NOT NULL,
	[EmployeeID] [int] NULL,
	[LogType] [int] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_T_DataLog] PRIMARY KEY CLUSTERED 
(
	[DataLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_IDP](
	[ID] [int] NOT NULL,
	[ID_Employee] [int] NOT NULL,
	[ID_Manager] [int] NOT NULL,
	[IDP_StartDate] [date] NOT NULL,
	[IDP_EndDate] [date] NOT NULL,
	[IDP_Objective] [text] COLLATE Thai_CI_AS NOT NULL,
	[IDP_Status] [int] NOT NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[ID_Department] [int] NULL,
 CONSTRAINT [PK_LDMS_T_IDP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_ReviewDetail]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_IDP_ReviewDetail](
	[ID] [int] NOT NULL,
	[ID_IDP_ReviewHead] [int] NOT NULL,
	[PostDetail] [text] COLLATE Thai_CI_AS NOT NULL,
	[AttachFilePath] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[PostDate] [datetime] NOT NULL,
	[ID_PostByEmployee] [int] NOT NULL,
 CONSTRAINT [PK_LDMS_T_IDP_ReviewDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_ReviewHead]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_IDP_ReviewHead](
	[ID] [int] NOT NULL,
	[ID_IDP_SubTopic] [int] NOT NULL,
	[EmployeeReport] [text] COLLATE Thai_CI_AS NOT NULL,
	[AttachFilePath] [nvarchar](100) COLLATE Thai_CI_AS NULL,
	[PostDate] [datetime] NOT NULL,
	[ID_PostByEmployee] [int] NOT NULL,
	[ReviewStatus] [int] NOT NULL,
 CONSTRAINT [PK_LDMS_T_IDP_ReviewHead] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_SubTopic]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_IDP_SubTopic](
	[ID] [int] NOT NULL,
	[ID_IDP_Topic] [int] NOT NULL,
	[HowToDevelopment] [nvarchar](100) COLLATE Thai_CI_AS NOT NULL,
	[ExpectedOutcom] [nvarchar](100) COLLATE Thai_CI_AS NOT NULL,
	[ByWhen] [date] NOT NULL,
	[SubTopicStatus] [int] NOT NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_LDMS_T_IDP_SubTopic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_Topic]    Script Date: 4/8/2020 11:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_IDP_Topic](
	[ID] [int] NOT NULL,
	[ID_IDP] [int] NOT NULL,
	[DevelopementTopic] [nvarchar](100) COLLATE Thai_CI_AS NOT NULL,
	[ExpectedOutcom] [nvarchar](100) COLLATE Thai_CI_AS NOT NULL,
	[CreateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) COLLATE Thai_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_LDMS_T_IDP_Topic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (1, N'1001', N'เขตพระนคร   ', N'Khet Phra Nakhon', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (2, N'1002', N'เขตดุสิต   ', N'Khet Dusit', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (3, N'1003', N'เขตหนองจอก   ', N'Khet  Nong Chok', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (4, N'1004', N'เขตบางรัก   ', N'Khet Bang Rak', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (5, N'1005', N'เขตบางเขน   ', N'Khet Bang Khen', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (6, N'1006', N'เขตบางกะปิ   ', N'Khet Bang Kapi', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (7, N'1007', N'เขตปทุมวัน   ', N'Khet Pathum Wan', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (8, N'1008', N'เขตป้อมปราบศัตรูพ่าย   ', N'Khet Pom Prap Sattru Phai', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (9, N'1009', N'เขตพระโขนง   ', N'Khet Phra Khanong', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (10, N'1010', N'เขตมีนบุรี   ', N'Khet Min Buri', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (11, N'1011', N'เขตลาดกระบัง   ', N'Khet Lat Krabang', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (12, N'1012', N'เขตยานนาวา   ', N'Khet Yan Nawa', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (13, N'1013', N'เขตสัมพันธวงศ์   ', N'Khet Samphanthawong', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (14, N'1014', N'เขตพญาไท   ', N'Khet Phaya Thai', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (15, N'1015', N'เขตธนบุรี   ', N'Khet Thon Buri', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (16, N'1016', N'เขตบางกอกใหญ่   ', N'Khet Bangkok Yai', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (17, N'1017', N'เขตห้วยขวาง   ', N'Khet Huai Khwang', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (18, N'1018', N'เขตคลองสาน   ', N'Khet Khlong San', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (19, N'1019', N'เขตตลิ่งชัน   ', N'Khet Taling Chan', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (20, N'1020', N'เขตบางกอกน้อย   ', N'Khet Bangkok Noi', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (21, N'1021', N'เขตบางขุนเทียน   ', N'Khet Bang Khun Thian', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (22, N'1022', N'เขตภาษีเจริญ   ', N'Khet Phasi Charoen', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (23, N'1023', N'เขตหนองแขม   ', N'Khet Nong Khaem', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (24, N'1024', N'เขตราษฎร์บูรณะ   ', N'Khet Rat Burana', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (25, N'1025', N'เขตบางพลัด   ', N'Khet Bang Phlat', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (26, N'1026', N'เขตดินแดง   ', N'Khet Din Daeng', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (27, N'1027', N'เขตบึงกุ่ม   ', N'Khet Bueng Kum', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (28, N'1028', N'เขตสาทร   ', N'Khet Sathon', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (29, N'1029', N'เขตบางซื่อ   ', N'Khet Bang Sue', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (30, N'1030', N'เขตจตุจักร   ', N'Khet Chatuchak', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (31, N'1031', N'เขตบางคอแหลม   ', N'Khet Bang Kho Laem', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (32, N'1032', N'เขตประเวศ   ', N'Khet Prawet', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (33, N'1033', N'เขตคลองเตย   ', N'Khet Khlong Toei', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (34, N'1034', N'เขตสวนหลวง   ', N'Khet Suan Luang', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (35, N'1035', N'เขตจอมทอง   ', N'Khet Chom Thong', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (36, N'1036', N'เขตดอนเมือง   ', N'Khet Don Mueang', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (37, N'1037', N'เขตราชเทวี   ', N'Khet Ratchathewi', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (38, N'1038', N'เขตลาดพร้าว   ', N'Khet Lat Phrao', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (39, N'1039', N'เขตวัฒนา   ', N'Khet Watthana', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (40, N'1040', N'เขตบางแค   ', N'Khet Bang Khae', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (41, N'1041', N'เขตหลักสี่   ', N'Khet Lak Si', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (42, N'1042', N'เขตสายไหม   ', N'Khet Sai Mai', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (43, N'1043', N'เขตคันนายาว   ', N'Khet Khan Na Yao', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (44, N'1044', N'เขตสะพานสูง   ', N'Khet Saphan Sung', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (45, N'1045', N'เขตวังทองหลาง   ', N'Khet Wang Thonglang', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (46, N'1046', N'เขตคลองสามวา   ', N'Khet Khlong Sam Wa', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (47, N'1047', N'เขตบางนา   ', N'Khet Bang Na', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (48, N'1048', N'เขตทวีวัฒนา   ', N'Khet Thawi Watthana', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (49, N'1049', N'เขตทุ่งครุ   ', N'Khet Thung Khru', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (50, N'1050', N'เขตบางบอน   ', N'Khet Bang Bon', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (51, N'1081', N'*บ้านทะวาย   ', N'*Bantawai', 2, 1)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (52, N'1101', N'เมืองสมุทรปราการ   ', N'Mueang Samut Prakan', 2, 2)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (53, N'1102', N'บางบ่อ   ', N'Bang Bo', 2, 2)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (54, N'1103', N'บางพลี   ', N'Bang Phli', 2, 2)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (55, N'1104', N'พระประแดง   ', N'Phra Pradaeng', 2, 2)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (56, N'1105', N'พระสมุทรเจดีย์   ', N'Phra Samut Chedi', 2, 2)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (57, N'1106', N'บางเสาธง   ', N'Bang Sao Thong', 2, 2)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (58, N'1201', N'เมืองนนทบุรี   ', N'Mueang Nonthaburi', 2, 3)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (59, N'1202', N'บางกรวย   ', N'Bang Kruai', 2, 3)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (60, N'1203', N'บางใหญ่   ', N'Bang Yai', 2, 3)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (61, N'1204', N'บางบัวทอง   ', N'Bang Bua Thong', 2, 3)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (62, N'1205', N'ไทรน้อย   ', N'Sai Noi', 2, 3)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (63, N'1206', N'ปากเกร็ด   ', N'Pak Kret', 2, 3)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (64, N'1251', N'เทศบาลนครนนทบุรี (สาขาแขวงท่าทราย)*   ', N'Tetsaban Nonthaburi', 2, 3)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (65, N'1297', N'เทศบาลเมืองปากเกร็ด*   ', N'Tetsaban Pak Kret', 2, 3)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (66, N'1301', N'เมืองปทุมธานี   ', N'Mueang Pathum Thani', 2, 4)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (67, N'1302', N'คลองหลวง   ', N'Khlong Luang', 2, 4)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (68, N'1303', N'ธัญบุรี   ', N'Thanyaburi', 2, 4)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (69, N'1304', N'หนองเสือ   ', N'Nong Suea', 2, 4)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (70, N'1305', N'ลาดหลุมแก้ว   ', N'Lat Lum Kaeo', 2, 4)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (71, N'1306', N'ลำลูกกา   ', N'Lam Luk Ka', 2, 4)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (72, N'1307', N'สามโคก   ', N'Sam Khok', 2, 4)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (73, N'1351', N'ลำลูกกา (สาขาตำบลคูคต)*   ', N'Khlong Luang(Kukod)', 2, 4)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (74, N'1401', N'พระนครศรีอยุธยา   ', N'Phra Nakhon Si Ayutthaya', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (75, N'1402', N'ท่าเรือ   ', N'Tha Ruea', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (76, N'1403', N'นครหลวง   ', N'Nakhon Luang', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (77, N'1404', N'บางไทร   ', N'Bang Sai', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (78, N'1405', N'บางบาล   ', N'Bang Ban', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (79, N'1406', N'บางปะอิน   ', N'Bang Pa-in', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (80, N'1407', N'บางปะหัน   ', N'Bang Pahan', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (81, N'1408', N'ผักไห่   ', N'Phak Hai', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (82, N'1409', N'ภาชี   ', N'Phachi', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (83, N'1410', N'ลาดบัวหลวง   ', N'Lat Bua Luang', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (84, N'1411', N'วังน้อย   ', N'Wang Noi', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (85, N'1412', N'เสนา   ', N'Sena', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (86, N'1413', N'บางซ้าย   ', N'Bang Sai', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (87, N'1414', N'อุทัย   ', N'Uthai', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (88, N'1415', N'มหาราช   ', N'Maha Rat', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (89, N'1416', N'บ้านแพรก   ', N'Ban Phraek', 2, 5)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (90, N'1501', N'เมืองอ่างทอง   ', N'Mueang Ang Thong', 2, 6)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (91, N'1502', N'ไชโย   ', N'Chaiyo', 2, 6)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (92, N'1503', N'ป่าโมก   ', N'Pa Mok', 2, 6)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (93, N'1504', N'โพธิ์ทอง   ', N'Pho Thong', 2, 6)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (94, N'1505', N'แสวงหา   ', N'Sawaeng Ha', 2, 6)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (95, N'1506', N'วิเศษชัยชาญ   ', N'Wiset Chai Chan', 2, 6)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (96, N'1507', N'สามโก้   ', N'Samko', 2, 6)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (97, N'1601', N'เมืองลพบุรี   ', N'Mueang Lop Buri', 2, 7)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (98, N'1602', N'พัฒนานิคม   ', N'Phatthana Nikhom', 2, 7)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (99, N'1603', N'โคกสำโรง   ', N'Khok Samrong', 2, 7)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (100, N'1604', N'ชัยบาดาล   ', N'Chai Badan', 2, 7)
GO
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (101, N'1605', N'ท่าวุ้ง   ', N'Tha Wung', 2, 7)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (102, N'1606', N'บ้านหมี่   ', N'Ban Mi', 2, 7)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (103, N'1607', N'ท่าหลวง   ', N'Tha Luang', 2, 7)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (104, N'1608', N'สระโบสถ์   ', N'Sa Bot', 2, 7)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (105, N'1609', N'โคกเจริญ   ', N'Khok Charoen', 2, 7)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (106, N'1610', N'ลำสนธิ   ', N'Lam Sonthi', 2, 7)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (107, N'1611', N'หนองม่วง   ', N'Nong Muang', 2, 7)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (108, N'1681', N'*อ.บ้านเช่า  จ.ลพบุรี   ', N'*Amphoe Ban Chao', 2, 7)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (109, N'1701', N'เมืองสิงห์บุรี   ', N'Mueang Sing Buri', 2, 8)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (110, N'1702', N'บางระจัน   ', N'Bang Rachan', 2, 8)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (111, N'1703', N'ค่ายบางระจัน   ', N'Khai Bang Rachan', 2, 8)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (112, N'1704', N'พรหมบุรี   ', N'Phrom Buri', 2, 8)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (113, N'1705', N'ท่าช้าง   ', N'Tha Chang', 2, 8)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (114, N'1706', N'อินทร์บุรี   ', N'In Buri', 2, 8)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (115, N'1801', N'เมืองชัยนาท   ', N'Mueang Chai Nat', 2, 9)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (116, N'1802', N'มโนรมย์   ', N'Manorom', 2, 9)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (117, N'1803', N'วัดสิงห์   ', N'Wat Sing', 2, 9)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (118, N'1804', N'สรรพยา   ', N'Sapphaya', 2, 9)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (119, N'1805', N'สรรคบุรี   ', N'Sankhaburi', 2, 9)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (120, N'1806', N'หันคา   ', N'Hankha', 2, 9)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (121, N'1807', N'หนองมะโมง   ', N'Nong Mamong', 2, 9)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (122, N'1808', N'เนินขาม   ', N'Noen Kham', 2, 9)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (123, N'1901', N'เมืองสระบุรี   ', N'Mueang Saraburi', 2, 10)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (124, N'1902', N'แก่งคอย   ', N'Kaeng Khoi', 2, 10)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (125, N'1903', N'หนองแค   ', N'Nong Khae', 2, 10)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (126, N'1904', N'วิหารแดง   ', N'Wihan Daeng', 2, 10)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (127, N'1905', N'หนองแซง   ', N'Nong Saeng', 2, 10)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (128, N'1906', N'บ้านหมอ   ', N'Ban Mo', 2, 10)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (129, N'1907', N'ดอนพุด   ', N'Don Phut', 2, 10)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (130, N'1908', N'หนองโดน   ', N'Nong Don', 2, 10)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (131, N'1909', N'พระพุทธบาท   ', N'Phra Phutthabat', 2, 10)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (132, N'1910', N'เสาไห้   ', N'Sao Hai', 2, 10)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (133, N'1911', N'มวกเหล็ก   ', N'Muak Lek', 2, 10)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (134, N'1912', N'วังม่วง   ', N'Wang Muang', 2, 10)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (135, N'1913', N'เฉลิมพระเกียรติ   ', N'Chaloem Phra Kiat', 2, 10)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (136, N'2001', N'เมืองชลบุรี   ', N'Mueang Chon Buri', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (137, N'2002', N'บ้านบึง   ', N'Ban Bueng', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (138, N'2003', N'หนองใหญ่   ', N'Nong Yai', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (139, N'2004', N'บางละมุง   ', N'Bang Lamung', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (140, N'2005', N'พานทอง   ', N'Phan Thong', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (141, N'2006', N'พนัสนิคม   ', N'Phanat Nikhom', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (142, N'2007', N'ศรีราชา   ', N'Si Racha', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (143, N'2008', N'เกาะสีชัง   ', N'Ko Sichang', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (144, N'2009', N'สัตหีบ   ', N'Sattahip', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (145, N'2010', N'บ่อทอง   ', N'Bo Thong', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (146, N'2011', N'เกาะจันทร์   ', N'Ko Chan', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (147, N'2051', N'สัตหีบ (สาขาตำบลบางเสร่)*   ', N'Sattahip(Bang Sre)*', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (148, N'2072', N'ท้องถิ่นเทศบาลเมืองหนองปรือ*   ', N'Tong Tin Tetsaban Mueang Nong Prue*', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (149, N'2093', N'เทศบาลตำบลแหลมฉบัง*   ', N'Tetsaban Tambon Lamsabang*', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (150, N'2099', N'เทศบาลเมืองชลบุรี*   ', N'Mueang Chon Buri', 5, 11)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (151, N'2101', N'เมืองระยอง   ', N'Mueang Rayong', 5, 12)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (152, N'2102', N'บ้านฉาง   ', N'Ban Chang', 5, 12)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (153, N'2103', N'แกลง   ', N'Klaeng', 5, 12)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (154, N'2104', N'วังจันทร์   ', N'Wang Chan', 5, 12)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (155, N'2105', N'บ้านค่าย   ', N'Ban Khai', 5, 12)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (156, N'2106', N'ปลวกแดง   ', N'Pluak Daeng', 5, 12)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (157, N'2107', N'เขาชะเมา   ', N'Khao Chamao', 5, 12)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (158, N'2108', N'นิคมพัฒนา   ', N'Nikhom Phatthana', 5, 12)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (159, N'2151', N'สาขาตำบลมาบข่า*   ', N'Saka Tambon Mabka', 5, 12)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (160, N'2201', N'เมืองจันทบุรี   ', N'Mueang Chanthaburi', 5, 13)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (161, N'2202', N'ขลุง   ', N'Khlung', 5, 13)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (162, N'2203', N'ท่าใหม่   ', N'Tha Mai', 5, 13)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (163, N'2204', N'โป่งน้ำร้อน   ', N'Pong Nam Ron', 5, 13)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (164, N'2205', N'มะขาม   ', N'Makham', 5, 13)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (165, N'2206', N'แหลมสิงห์   ', N'Laem Sing', 5, 13)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (166, N'2207', N'สอยดาว   ', N'Soi Dao', 5, 13)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (167, N'2208', N'แก่งหางแมว   ', N'Kaeng Hang Maeo', 5, 13)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (168, N'2209', N'นายายอาม   ', N'Na Yai Am', 5, 13)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (169, N'2210', N'เขาคิชฌกูฏ   ', N'Khoa Khitchakut', 5, 13)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (170, N'2281', N'*กิ่ง อ.กำพุธ  จ.จันทบุรี   ', N'*King Amphoe Kampud', 5, 13)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (171, N'2301', N'เมืองตราด   ', N'Mueang Trat', 5, 14)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (172, N'2302', N'คลองใหญ่   ', N'Khlong Yai', 5, 14)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (173, N'2303', N'เขาสมิง   ', N'Khao Saming', 5, 14)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (174, N'2304', N'บ่อไร่   ', N'Bo Rai', 5, 14)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (175, N'2305', N'แหลมงอบ   ', N'Laem Ngop', 5, 14)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (176, N'2306', N'เกาะกูด   ', N'Ko Kut', 5, 14)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (177, N'2307', N'เกาะช้าง   ', N'Ko Chang', 5, 14)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (178, N'2401', N'เมืองฉะเชิงเทรา   ', N'Mueang Chachoengsao', 5, 15)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (179, N'2402', N'บางคล้า   ', N'Bang Khla', 5, 15)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (180, N'2403', N'บางน้ำเปรี้ยว   ', N'Bang Nam Priao', 5, 15)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (181, N'2404', N'บางปะกง   ', N'Bang Pakong', 5, 15)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (182, N'2405', N'บ้านโพธิ์   ', N'Ban Pho', 5, 15)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (183, N'2406', N'พนมสารคาม   ', N'Phanom Sarakham', 5, 15)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (184, N'2407', N'ราชสาส์น   ', N'Ratchasan', 5, 15)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (185, N'2408', N'สนามชัยเขต   ', N'Sanam Chai Khet', 5, 15)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (186, N'2409', N'แปลงยาว   ', N'Plaeng Yao', 5, 15)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (187, N'2410', N'ท่าตะเกียบ   ', N'Tha Takiap', 5, 15)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (188, N'2411', N'คลองเขื่อน   ', N'Khlong Khuean', 5, 15)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (189, N'2501', N'เมืองปราจีนบุรี   ', N'Mueang Prachin Buri', 5, 16)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (190, N'2502', N'กบินทร์บุรี   ', N'Kabin Buri', 5, 16)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (191, N'2503', N'นาดี   ', N'Na Di', 5, 16)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (192, N'2504', N'*สระแก้ว   ', N'Sa Kaeo', 5, 16)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (193, N'2505', N'*วังน้ำเย็น   ', N'Wang Nam Yen', 5, 16)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (194, N'2506', N'บ้านสร้าง   ', N'Ban Sang', 5, 16)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (195, N'2507', N'ประจันตคาม   ', N'Prachantakham', 5, 16)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (196, N'2508', N'ศรีมหาโพธิ   ', N'Si Maha Phot', 5, 16)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (197, N'2509', N'ศรีมโหสถ   ', N'Si Mahosot', 5, 16)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (198, N'2510', N'*อรัญประเทศ   ', N'Aranyaprathet', 5, 16)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (199, N'2511', N'*ตาพระยา   ', N'Ta Phraya', 5, 16)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (200, N'2512', N'*วัฒนานคร   ', N'Watthana Nakhon', 5, 16)
GO
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (201, N'2513', N'*คลองหาด   ', N'Khlong Hat', 5, 16)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (202, N'2601', N'เมืองนครนายก   ', N'Mueang Nakhon Nayok', 2, 17)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (203, N'2602', N'ปากพลี   ', N'Pak Phli', 2, 17)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (204, N'2603', N'บ้านนา   ', N'Ban Na', 2, 17)
INSERT [dbo].[LDMS_M_Amphurs] ([AMPHUR_ID], [AMPHUR_CODE], [AMPHUR_NAME], [AMPHUR_NAME_ENG], [GEO_ID], [PROVINCE_ID]) VALUES (205, N'2604', N'องครักษ์   ', N'Ongkharak', 2, 17)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'ELECTRONICS', 2, N'Electronics', N'Electronics', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'MUSIC', 2, N'Music', N'Music', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'MOVIES', 2, N'Movies', N'Movies', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, N'FNS', 2, N'Financial Services', N'Financial Services', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'LDMS_M_Instructor', N'Type', N'INT', N'Internal', NULL, N'Internal instructor', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'LDMS_M_Instructor', N'Type', N'EXT', N'External', NULL, N'External instructor', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'LDMS_T_Class', N'ClassStatus', N'00', N'Plan', 1, N'Class ยังไม่กำหนด RegisterDate', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, N'LDMS_T_Class', N'ClassStatus', N'01', N'Delay', 2, N'เกิน ClassDateแต่ยังไม่ Register', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (5, N'LDMS_T_Class', N'ClassStatus', N'02', N'Postpone', 3, N'Class ที่ปรับเลื่อนวัน', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (6, N'LDMS_T_Class', N'ClassStatus', N'10', N'Not start', 4, N'Class ที่ระบุ Register Date แล้วแต่ยังไม่ถึงช่วงลงทะเบียน', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (7, N'LDMS_T_Class', N'ClassStatus', N'20', N'Register', 5, N'ช่วงการเปิดลงทะเบียน', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (8, N'LDMS_T_Class', N'ClassStatus', N'30', N'On Progress', 6, N'ปิดการลงทะเบียนและอยู่ระหว่างการเรียน', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (9, N'LDMS_T_Class', N'ClassStatus', N'70', N'Completed', 7, N'Class closed', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (10, N'LDMS_T_ClassRegistration', N'RegisterStatus', N'10', N'Registered', 1, N'พนักงาน request register เข้ามา', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (11, N'LDMS_T_ClassRegistration', N'RegisterStatus', N'20', N'Waiting List', 2, N'manager approve แล้วรอ admin', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (12, N'LDMS_T_ClassRegistration', N'RegisterStatus', N'70', N'Approved', 3, N'admin approve register ', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (13, N'LDMS_T_ClassRegistration', N'RegisterStatus', N'99', N'Rejected', 4, N'admin reject หรือ manager reject', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (14, N'LDMS_T_ClassAttendAndResult', N'ClassState', N'10', N'Attend', NULL, N'scan employee card หรือ RFID', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (15, N'LDMS_T_ClassAttendAndResult', N'ClassState', N'20', N'PreTest', NULL, N'PreTest', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (16, N'LDMS_T_ClassAttendAndResult', N'ClassState', N'30', N'PostTest', NULL, N'PostTest', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (17, N'LDMS_T_ClassAttendAndResult', N'ClassState', N'40', N'Skill', NULL, N'Skill Test', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (18, N'LDMS_T_ClassAttendAndResult', N'ClassState', N'50', N'Coaching', NULL, N'Coaching period', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (19, N'LDMS_T_ClassAttendAndResult', N'ClassState', N'60', N'Certificate', NULL, N'waiting certificate and attachment', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (20, N'LDMS_T_ClassAttendAndResult', N'ClassState', N'70', N'Completed', NULL, N'completed all or class closed', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (21, N'LDMS_T_ClassAttendAndResult', N'LearningResult', N'30', N'On Progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (22, N'LDMS_T_ClassAttendAndResult', N'LearningResult', N'70', N'Qualified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (23, N'LDMS_T_ClassAttendAndResult', N'LearningResult', N'99', N'Unqualified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (24, N'LDMS_T_Coaching', N'CoachingStatus', N'10', N'Not Start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (25, N'LDMS_T_Coaching', N'CoachingStatus', N'30', N'On Progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (26, N'LDMS_T_Coaching', N'CoachingStatus', N'70', N'Completed', NULL, N'ปิดแบบ completed', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (27, N'LDMS_T_Coaching', N'CoachingStatus', N'99', N'Incompleted', NULL, N'ปิดแบบ Incompleted เช่น admin close class', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (28, N'LDMS_T_IDP', N'IDP_Status', N'10', N'Not Start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (29, N'LDMS_T_IDP', N'IDP_Status', N'30', N'On Progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (30, N'LDMS_T_IDP', N'IDP_Status', N'70', N'Completed', NULL, N'ปิดแบบ completed', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (31, N'LDMS_T_IDP', N'IDP_Status', N'99', N'Incompleted', NULL, N'ปิดแบบ Incompleted', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (32, N'LDMS_T_IDP_SubTopic', N'SubTopicStatus', N'10', N'Not Start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (33, N'LDMS_T_IDP_SubTopic', N'SubTopicStatus', N'30', N'On Progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (34, N'LDMS_T_IDP_SubTopic', N'SubTopicStatus', N'70', N'Complete', NULL, N'ปิดแบบ completed', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (35, N'LDMS_T_IDP_SubTopic', N'SubTopicStatus', N'99', N'Incompleted', NULL, N'ปิดแบบ Incompleted', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (36, N'LDMS_T_IDP_ReviewHead', N'ReviewStatus', N'30', N'Open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (37, N'LDMS_T_IDP_ReviewHead', N'ReviewStatus', N'70', N'Closed', NULL, N'ปิด review report สำหรับกระทู้นั้นๆ', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (38, N'Learning_and_Performance', N'LearningPlatformStatus', N'10', N'Not start', NULL, N'ยังไม่มี course ใดใน platform ที่ลงทะเบียนเรียนเลย', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (39, N'Learning_and_Performance', N'LearningPlatformStatus', N'30', N'On Progress', NULL, N'เหลือ class ที่ On progress อยู่ และไม่มี overdue', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (40, N'Learning_and_Performance', N'LearningPlatformStatus', N'70', N'Completed', NULL, N'ทุก course ต้อง completed', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (41, N'Learning_and_Performance', N'LearningPlatformStatus', N'99', N'Overdue', NULL, N'มี class ที่ overdue ใน platform อย่างน้อย 1 class', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (42, N'Learning_and_Performance', N'CourseAttendStatus', N'10', N'Not start', NULL, N'ยังไม่เคยลงทะเบียนใน couse ดังกล่าวเลยในช่วงเวลาที่ค้นหา', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (43, N'Learning_and_Performance', N'CourseAttendStatus', N'30', N'On Progress', NULL, N'มี class ที่ลงทะเบียนแล้วหรือกำลังเรียนอยู่', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (44, N'Learning_and_Performance', N'CourseAttendStatus', N'70', N'Completed', NULL, N'เรียนและ Qualifed ใน course นั้นๆแล้ว', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (45, N'Learning_and_Performance', N'CourseAttendStatus', N'99', N'Overdue', NULL, N'วิชาที่ไม่เคยลงทะเบียน หรือเรียนแล้วไม่ผ่าน โดยไม่มี class ของวิชานั้นๆเปิดแล้ว', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (46, N'LDMS_T_CompetenceStar', N'CompetenceStarTypeID', N'Star01', N'IDPCompleted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (47, N'LDMS_T_CompetenceStar', N'CompetenceStarTypeID', N'Star02', N'CoachCompleted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CodeLookUp] ([ID], [TableName], [FieldName], [Code], [StateName], [Sequence], [Description], [IsDefault], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (48, N'LDMS_T_CompetenceStar', N'CompetenceStarTypeID', N'Star03', N'CourseQualified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'HR-S001-01', N'Course Name1', 1, 1, N'ทดสอบ', N'ทดสอบ 1', N'ทดสอบ 1', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'HR-S002-02', N'Course Name2', 1, 1, N'ทดอสอบ', N'ทดสอบ 2', N'ทดสอบ 2', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CourseLearnMethod] ([ID], [Course_LearnMethodName_EN], [Course_LearnMethodName_TH], [IsInterface], [Url], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'Class Room', NULL, 0, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:33:44.840' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CourseLearnMethod] ([ID], [Course_LearnMethodName_EN], [Course_LearnMethodName_TH], [IsInterface], [Url], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'Public Training', NULL, 0, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:33:44.840' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CourseLearnMethod] ([ID], [Course_LearnMethodName_EN], [Course_LearnMethodName_TH], [IsInterface], [Url], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'PACD', NULL, 1, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:33:44.840' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CourseLearnMethod] ([ID], [Course_LearnMethodName_EN], [Course_LearnMethodName_TH], [IsInterface], [Url], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, N'LMS', NULL, 1, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:33:44.840' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CourseType] ([ID], [CourseTypeName_EN], [CourseTypeName_TH], [ID_PlatformType], [PrefixFormat], [PrefixCode], [SubPrefixCode], [RunningLength], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'Orientaton ', NULL, 2, N'PrefixCode-Running', N'ORT', NULL, 3, NULL, N'Admin', CAST(N'2020-04-05T01:55:34.267' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CourseType] ([ID], [CourseTypeName_EN], [CourseTypeName_TH], [ID_PlatformType], [PrefixFormat], [PrefixCode], [SubPrefixCode], [RunningLength], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'Soft Skill', NULL, 2, N'PrefixCode-Running', N'SOFT', NULL, 3, NULL, N'Admin', CAST(N'2020-04-05T01:55:34.267' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CourseType] ([ID], [CourseTypeName_EN], [CourseTypeName_TH], [ID_PlatformType], [PrefixFormat], [PrefixCode], [SubPrefixCode], [RunningLength], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'Fundamental', NULL, 2, N'PrefixCode-Running', N'FUND', NULL, 3, NULL, N'Admin', CAST(N'2020-04-05T01:55:34.267' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CourseType] ([ID], [CourseTypeName_EN], [CourseTypeName_TH], [ID_PlatformType], [PrefixFormat], [PrefixCode], [SubPrefixCode], [RunningLength], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, N'Legal and Compliance', NULL, 2, N'PrefixCode-Running', N'LCO', NULL, 3, NULL, N'Admin', CAST(N'2020-04-05T01:55:34.267' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CourseType] ([ID], [CourseTypeName_EN], [CourseTypeName_TH], [ID_PlatformType], [PrefixFormat], [PrefixCode], [SubPrefixCode], [RunningLength], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (5, N'Function Common', NULL, 2, N'PrefixCode-Running', N'FUNC-COM', NULL, 3, NULL, N'Admin', CAST(N'2020-04-05T01:55:34.267' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_CourseType] ([ID], [CourseTypeName_EN], [CourseTypeName_TH], [ID_PlatformType], [PrefixFormat], [PrefixCode], [SubPrefixCode], [RunningLength], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (6, N'Function Business Unit', NULL, 1, N'PrefixCode-SubPrefixCode-Running', N'FNC', N'DeptID', 3, NULL, N'Admin', CAST(N'2020-04-05T01:55:34.267' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'TDD', 1, N'Training & Development Department', N'Training & Development Department', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'ACDD', 2, N'Accounting Department', N'Accounting Department', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'HROD', 3, N'Human Resource Organization Development', N'Human Resource Organization Development', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (1, N'TDD', 1, N'Training and Development Officer', N'Training and Development Officer', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (2, N'ACD', 1, N'Accounting Division', N'Accounting Division', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (3, N'HRD', 1, N'Human Resource Division', N'Human Resource Division', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'JG0001', N'Job Grade 1', N'Job Grade 1', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'JG0002', N'Job Grade 2', N'Job Grade 2', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'JG0003', N'Job Grade 3', N'Job Grade 3', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, N'JG0004', N'Job Grade 4', N'Job Grade 4', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'JT0001', N'Job Title 1', N'Job Title 1', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'JT0002', N'Job Title 2', N'Job Title 2', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'JT0003', N'Job Title 3', N'Job Title 3', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Module] ([ID], [ModuleID], [ModuleName_EN], [ModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'MD01', N'My Plan', NULL, 1, NULL, NULL, NULL, N'สำหรับพนักงานเรียกดูข้อมูลของตนเอง', N'Admin', CAST(N'2020-04-05T01:26:18.940' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Module] ([ID], [ModuleID], [ModuleName_EN], [ModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'MD02', N'My Team', N'My Monitoring', 2, NULL, NULL, NULL, N'สำหรับหัวหน้างาน Manager', N'Admin', CAST(N'2020-04-05T01:26:18.940' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Module] ([ID], [ModuleID], [ModuleName_EN], [ModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'MD03', N'I-Manage', NULL, 3, NULL, NULL, NULL, N'สำหรับ Admin จัดการข้อมูลพื้นฐานและคอร์สเรียน', N'Admin', CAST(N'2020-04-05T01:26:18.940' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Platform] ([ID], [PlatformID], [PlatformName_EN], [PlatformName_TH], [ID_PlatformType], [PlatformDescription], [ID_Department_Create], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'P001', N'Orientation', N'ปฐมนิเทศ', 2, N'การปฐมนิดทศ', 1, N'1', NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Platform] ([ID], [PlatformID], [PlatformName_EN], [PlatformName_TH], [ID_PlatformType], [PlatformDescription], [ID_Department_Create], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'P002', N'Soft Skill', N'ทักษะทางสังคม', 2, N'กระบวนการทักษะทางสังคม', 1, N'1', NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Platform] ([ID], [PlatformID], [PlatformName_EN], [PlatformName_TH], [ID_PlatformType], [PlatformDescription], [ID_Department_Create], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'P003', N'Fundamental ', N'พื้นฐาน', 2, N'พื้นฐาน', 1, N'1', NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Platform] ([ID], [PlatformID], [PlatformName_EN], [PlatformName_TH], [ID_PlatformType], [PlatformDescription], [ID_Department_Create], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, N'P004', N'Legal and Complience', N'กฎหมายและการปฏิบัติตาม', 2, N'กฎหมายและการปฏิบัติตาม', 1, N'1', NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Platform] ([ID], [PlatformID], [PlatformName_EN], [PlatformName_TH], [ID_PlatformType], [PlatformDescription], [ID_Department_Create], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (5, N'P005', N'Functional - Common', N'Funtional - Common', 2, N'Funtional - Common', 1, N'1', NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Platform] ([ID], [PlatformID], [PlatformName_EN], [PlatformName_TH], [ID_PlatformType], [PlatformDescription], [ID_Department_Create], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (6, N'P006', N'Functional - Dept A', N'Functional - Dept A', 1, N'Functional - Dept A', 1, N'1', NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_PlatformType] ([ID], [PlatformTypeName_EN], [PlatformTypeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'Business', NULL, N'Platform เฉพาะของแต่ละ deparment', N'Admin', CAST(N'2020-04-05T01:42:48.567' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_PlatformType] ([ID], [PlatformTypeName_EN], [PlatformTypeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'HR-Common', NULL, N'Common Platform จัดการโดย HR', N'Admin', CAST(N'2020-04-05T01:42:48.567' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Role] ([ID], [RoleName_EN], [RoleName_TH], [RoleDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'User', NULL, N'พนักงานทั่วไปเรียกดูข้อมูลของตนเอง', N'Admin', CAST(N'2020-04-05T03:28:54.390' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Role] ([ID], [RoleName_EN], [RoleName_TH], [RoleDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'User Admin', NULL, N'พนักงานทั่วไปได้รับสิทธิ์ Admin ในการจัดการ Couse ของแผนก', N'Admin', CAST(N'2020-04-05T03:28:54.390' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Role] ([ID], [RoleName_EN], [RoleName_TH], [RoleDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'General Manger', NULL, N'ระดับผู้บริหารในการเรียกดูข้อมูลภายใต้การดูแลของตนเอง', N'Admin', CAST(N'2020-04-05T03:28:54.390' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Role] ([ID], [RoleName_EN], [RoleName_TH], [RoleDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, N'Team Manager', NULL, N'ระดับหัวหน้าทีม ได้รับสิทธิ์อนุมัติ', N'Admin', CAST(N'2020-04-05T03:28:54.390' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Role] ([ID], [RoleName_EN], [RoleName_TH], [RoleDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (5, N'Admin Department', NULL, N'user กลางของ deparment ในการจัดการ course ของแผนก', N'Admin', CAST(N'2020-04-05T03:28:54.390' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Role] ([ID], [RoleName_EN], [RoleName_TH], [RoleDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (6, N'Admin HR', NULL, N'Admin HR ดูแล course กลางของบริษัท', N'Admin', CAST(N'2020-04-05T03:28:54.390' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Role] ([ID], [RoleName_EN], [RoleName_TH], [RoleDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (7, N'Super Admin', NULL, NULL, N'Admin', CAST(N'2020-04-05T03:28:54.390' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, 1, 1, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, 1, 2, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, 1, 3, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, 1, 4, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (5, 1, 5, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (6, 2, 1, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (7, 2, 2, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (8, 2, 3, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (9, 2, 4, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (10, 2, 5, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (11, 2, 13, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (12, 2, 14, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (13, 2, 15, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (14, 2, 16, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (15, 2, 17, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (16, 2, 18, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (17, 2, 20, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (18, 3, 1, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (19, 3, 2, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (20, 3, 3, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (21, 3, 4, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (22, 3, 5, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (23, 3, 6, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (24, 3, 7, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (25, 3, 8, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (26, 3, 9, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (27, 3, 10, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (28, 3, 11, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (29, 3, 12, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (30, 4, 1, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (31, 4, 2, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (32, 4, 3, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (33, 4, 4, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (34, 4, 5, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (35, 4, 6, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (36, 4, 7, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (37, 4, 8, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (38, 4, 9, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (39, 4, 10, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (40, 4, 11, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (41, 4, 12, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (42, 5, 13, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (43, 5, 14, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (44, 5, 15, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (45, 5, 16, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (46, 5, 17, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (47, 5, 18, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (48, 5, 20, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (49, 6, 6, 100, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (50, 6, 7, 100, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (51, 6, 8, 100, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (52, 6, 9, 100, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (53, 6, 10, 100, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (54, 6, 11, 100, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (55, 6, 12, 100, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (56, 6, 13, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (57, 6, 14, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (58, 6, 15, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (59, 6, 16, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (60, 6, 17, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (61, 6, 18, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (62, 6, 19, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (63, 6, 20, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (64, 7, 1, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (65, 7, 2, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (66, 7, 3, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (67, 7, 4, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (68, 7, 5, 200, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (69, 7, 6, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (70, 7, 7, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (71, 7, 8, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (72, 7, 9, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (73, 7, 10, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (74, 7, 11, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (75, 7, 12, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (76, 7, 13, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (77, 7, 14, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (78, 7, 15, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (79, 7, 16, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (80, 7, 17, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (81, 7, 18, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (82, 7, 19, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (83, 7, 20, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'MD01-01', 1, N'My Plan and Progress', NULL, 1, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'MD01-02', 1, N'My Class Schedule', NULL, 2, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'MD01-03', 1, N'My IDP', NULL, 3, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, N'MD01-04', 1, N'My Coach', NULL, 4, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (5, N'MD01-05', 1, N'My Report', NULL, 5, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (6, N'MD02-01', 2, N'My Team Learning Performance', N'My Monitoring Learning Performance', 1, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (7, N'MD02-02', 2, N'My Team Class Schedule', N'My Monitoring Class Schedule', 2, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (8, N'MD02-03', 2, N'My Team Class Room Registration', N'My Monitoring Class Room Registration', 3, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (9, N'MD02-04', 2, N'My Team Competence Analytic', N'My Monitoring Competence Analytic', 4, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (10, N'MD02-05', 2, N'My Team IDP', N'My Monitoring IDP', 5, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (11, N'MD02-06', 2, N'My Team Coaching', N'My Monitoring Coaching', 6, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (12, N'MD02-07', 2, N'My Team Report', N'My Monitoring Report', 7, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (13, N'MD03-01', 3, N'Learning Performance', NULL, 1, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (14, N'MD03-02', 3, N'Platform Management', NULL, 2, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (15, N'MD03-03', 3, N'Course Information', NULL, 3, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (16, N'MD03-04', 3, N'Instructor Inventory', NULL, 4, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (17, N'MD03-05', 3, N'Schedule', NULL, 5, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (18, N'MD03-06', 3, N'I-Manage Report', NULL, 6, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (19, N'MD03-07', 3, N'I-Manage LDMS', NULL, 7, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (20, N'MD03-08', 3, N'I-Manage Section', NULL, 8, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'007B898E49274C8192B2F731D7D7E1D5', 1, N'', NULL, NULL, N'Donna', N'Orr', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'donna.orr@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'01419D4420464767B3239029884AB4F5', 1, N'', NULL, NULL, N'Jonathan', N'Poitras', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'jonathan.poitras@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'035616114F25433B8556628022108BC6', 1, N'', NULL, NULL, N'Brooks', N'Jones', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Brooks.Jones@concordmusicgroup.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'058E54BFE75E4D7C92F14AA8C64E9D9D', 1, N'', NULL, NULL, N'Kristina', N'Alldrin', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'kristina.alldrin@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'067DDF8FA54A497881B77E0052A5F11D', 1, N'', NULL, NULL, N'Richard', N'Hayes', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'richard.hayes@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'06ADFABC198141C29F32DC859F0765CD', 0, N'', NULL, NULL, N'Alexander', N'Simon', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'alexander.simon@zebralution.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'09F610C275C345538E57508F053E317D', 0, N'', NULL, NULL, N'Carlos', N'Montes', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'carlos.montes@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'0AF9AFC626E44A159523FBE68BA8F3F7', 0, N'', NULL, NULL, N'Ingrid', N'Hemesath', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'ingsthings@msn.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'0B384016EA4C4454869286425DAF8A40', 0, N'', NULL, NULL, N'Rebecca', N'Donkin', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Rebecca.Donkin@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'0D12D85BB2EE4A5E8AA4E129F026B747', 0, N'', NULL, NULL, N'Chris', N'Brown', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'chris.brown@roadrunnerrecords.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'0E5702170D684BF986426FA84DBC2DAD', 0, N'', NULL, NULL, N'Nathan', N'Anderson', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'nathan.anderson@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'0EEEE707D24A43CBBF2ED95B8B4B7E50', 0, N'', NULL, NULL, N'Laura', N'Mende', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'laura.mende@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'0F90C5F3E5244D439C3F09086E892C44', 0, N'', NULL, NULL, N'Yulia', N'Berestneva', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Yulia.Berestneva@warnermusic.ru', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'10561181B44041F3954FA99E58BD6EC4', 0, N'', NULL, NULL, N'Will', N'White', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'will.white@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'1131FE5A385947E28A2E8ADB6ED6E79F', 0, N'', NULL, NULL, N'Rebeca', N'Delgado', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'rebeca.delgado@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'11515E07FD0646469203FC6953E403A4', 0, N'', NULL, NULL, N'Ted', N'Facciani', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'ted.facciani@bakersman.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'1469EA3E1BEC4D9F84AF72F424E97222', 0, N'', NULL, NULL, N'Olivier', N'Blanrue', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'olivier.blanrue@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'149B3213DDC54602AE67C63F205A0945', 0, N'', NULL, NULL, N'Gregg', N'Schaufeld', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'gregg.schaufeld@nonesuch.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'15327CF80EEB45CF8A04F43FF1398358', 0, N'', NULL, NULL, N'Caroline', N'Duong', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Caroline.Duong@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'178135DCE3804419B21D75C6ACD74077', 0, N'', NULL, NULL, N'Chris', N'Clough', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Chris.Clough@concordmusicgroup.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'17814B6A28DF4BE893CE04F2B4A472C5', 0, N'', NULL, NULL, N'Nancy', N'Rogers', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'nancy.rogers@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'1847F5E22AB24AB7BF2DA3E01DADAC2D', 0, N'', NULL, NULL, N'Nick', N'Romei', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'nick.romei@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'18CCD7FAE3AD416C955518B8AFD3C374', 0, N'', NULL, NULL, N'James', N'O''Toole', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'james.otoole@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'1AA052807672417FA63FC18AC2D58EDC', 0, N'', NULL, NULL, N'Jill', N'Augusto', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'jill.augusto@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'1B2C63BB7E704772AF44B374D6FE4212', 0, N'', NULL, NULL, N'Desireen', N'Law', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Desireen.Law@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'1B7915EEFF8A45D88C3CBD4BB8DD8EF2', 0, N'', NULL, NULL, N'test', N'declare user', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'declare-test@lannasofrworks.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'1CD964E5B3384DE98C7A3408204191FE', 0, N'', NULL, NULL, N'Kevin', N'Eiroa', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'kevin.eiroa@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'1D208DFBDE494AA5805AEAADBB9EA0D6', 0, N'', NULL, NULL, N'James', N'Garrigus', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'James.Garrigus@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'1F67FAD821CA4BD8B841F04282231A3E', 0, N'', NULL, NULL, N'Cahyadi', N'Yuniarso', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Cahyadi.Yuniarso@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'1FC71CAE734A4E4D858ADE054E4CC661', 0, N'', NULL, NULL, N'Ben', N'Pearce', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Ben.Pearce@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'208D3BF1D3DC4A5CB17E9E3ECC6DA212', 0, N'', NULL, NULL, N'Leah', N'Taub', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'leah.taub@nonesuch.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'22301856E6CB4EEAA9113592C7C48995', 0, N'', NULL, NULL, N'Anthony', N'Syme', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Anthony.Syme@ada-music.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'224FAF3A74E64D5C88B8B1E3D25D56A7', 0, N'', NULL, NULL, N'Brette ', N'Moseley', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Brette.Moseley@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'23FFC7817A6E4741B6D124C21BA5D16E', 0, N'', NULL, NULL, N'Robert', N'Smith', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Robert.Smith@concordmusicgroup.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'245C8299EFDE4232A9135A995C37268C', 0, N'', NULL, NULL, N'Spencer', N'Chrislu', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'spencer.chrislu@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'26CAEE179E5A4E71A0CA116E5A2D46DD', 0, N'', NULL, NULL, N'Chrstine', N'Trinh', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Christine.Trinh@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'26D58B079069430D8D97DAF34E68C159', 0, N'', NULL, NULL, N'Dennis', N'Fernandez', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Dennis.Fernandez@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'27E5BE4081DB437F8F4AA4CABBCBD364', 0, N'', NULL, NULL, N'winai', N'kaewsila', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'winai@lannasoftworks.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'28B9DAE0F08240819F4320D61CEC5891', 0, N'', NULL, NULL, N'Samuel', N'Abaijon', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'samuel@digitalfactory.fi', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'28CC087C2B224F1B80FA7D7BE62F73AA', 0, N'', NULL, NULL, N'Cyndi', N'Zhi', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'cyndi.zhi@warnermusic.com.cn', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'2937EE4144C94CDC9CD2111E69EC33FB', 0, N'', NULL, NULL, N'PilarMaria', N'Gioia', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'pilarmaria.gioia@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'2971BB276DE844B194360E007DD73FDE', 0, N'', NULL, NULL, N'April', N'Gerloff', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'april.gerloff@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'2A9F94FA2E9A4FB791B29ABE70BCA15C', 0, N'', NULL, NULL, N'Julien', N'Lacroix', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Julien.Lacroix@Warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'2B0AE1E258E141E1B5161EDF661D8D55', 0, N'', NULL, NULL, N'Elizabeth', N'Rivera', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'elizabeth.rivera@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'2C4B1131E2784A83AB71653C9BE5C28A', 0, N'', NULL, NULL, N'Miharu', N'Takizawa', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Miharu.Takizawa@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'2D5A235BC0C843B788331C5F2683BB7E', 0, N'', NULL, NULL, N'test-winai', N'test-kaewsila', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'test-winai@lannasoftworks.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'2D8FCDABB8DF4D93BAD0B9D4FD1A3757', 0, N'', NULL, NULL, N'Casper', N'Faartoft', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'casper.faartoft@ada-music.co.uk', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'2E1C2AE67C8148069918381A4274AEE8', 0, N'', NULL, NULL, N'Guillermo', N'Negrete', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Guillermo.Negrete@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'2E1FEAECE4B14EDA85E22FE03737DD65', 0, N'', NULL, NULL, N'Andre', N'Rodriguez', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'andre.rodriguez@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'2F104492900C422E88D6F3476D977087', 0, N'', NULL, NULL, N'Jonathan', N'Poitras', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'jonathan.poitras@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'2FB11F87EB4045D4890332E31743F0A4', 0, N'', NULL, NULL, N'Nerea', N'Igualador', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Nerea.igualador@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'2FF926512E924170B381D9B91AA7FDA4', 0, N'', NULL, NULL, N'Andrew', N'Lubis', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'andrew.lubis@rhino.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'309C62CED8764DF2AD8EF2650C385E80', 0, N'', NULL, NULL, N'Sharon', N'Madge', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Sharon.Madge@WarnerMusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'312C989E4538469096A9851D9D5D2FF8', 0, N'', NULL, NULL, N'Shannan', N'Carr', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Shannan.Carr@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'31411E2657D044C2BBFAA6E51DA2803F', 0, N'', NULL, NULL, N'Derek', N'Bergheimer', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Derek.Bergheimer@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'322B1DA1D4264CBAB9B7CCF62937940E', 0, N'', NULL, NULL, N'Pamela', N'Diaz', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'pamela.diaz@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'332FCAD5C81743A88DD7BC8505A9FF46', 0, N'', NULL, NULL, N'Dale', N'Weiser', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'dale.weiser@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'33D0E5D48C5F4609A44E5A1B670DA62F', 0, N'', NULL, NULL, N'Patrick', N'Henschen', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Patrick.Henschen@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'3440D9899C844E4397DC5E1887A74A29', 0, N'', NULL, NULL, N'Digital Assets', N'Cinram', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'digitalassets@cinram.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'348F6BCE50494951AE4BCD39986C22EB', 0, N'', NULL, NULL, N'Shelley', N'Burcher', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'shelley.burcher@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'361CB42C48D24F9DA891812C886A0ED0', 0, N'', NULL, NULL, N'Helena', N'Chagas', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'helena.chagas@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'37132C6D5DBD4972A1851C03965D34B2', 0, N'', NULL, NULL, N'Bertrand', N'Castellani', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Bertrand.Castellani@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'39A451DC02D8416E901270BED9BA6F9F', 0, N'', NULL, NULL, N'Anna', N'Krestnikova', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'anna.krestnikova@warnermusic.ru', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'3A7A6C25A1EB4A4DBBF1977B5767D439', 0, N'', NULL, NULL, N'Ryan', N'@Hotmail', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'rarahlf@hotmail.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'3B130C3D56BD4064A6D0E255B49AFCC1', 0, N'', NULL, NULL, N'Alissa', N'Krumlauf', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'alissa.krumlauf@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'3BB0F3C532EC4B24A650572667FC4464', 0, N'', NULL, NULL, N'Aurelie', N'Guillemin', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'aurelie.guillemin@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'3C70FB357089487CB1DA512931AA22E9', 0, N'', NULL, NULL, N'Filip', N'Kabaj', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'filip.kabaj@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'3D29034484654C9A9F1D748566E80328', 0, N'', NULL, NULL, N'Lily', N'Wen', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'lily.wen@nonesuch.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'3DA7ABD8208448BFB4CD1438CECA96FE', 0, N'', NULL, NULL, N'Egor', N'Shchedrin', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'egor.shchedrin@warnermusic.ru', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'3DDD3C49806C4F15BD94E236E0410344', 0, N'', NULL, NULL, N'Ramsey', N'Kouri', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Ramsey.Kouri@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'408B2FFB9770499EB31DD606010B9054', 0, N'', NULL, NULL, N'Steve', N'Lang', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'steve.lang@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'44F97775C449471483CCEF4EE80FA637', 0, N'', NULL, NULL, N'Dave', N'Reilly', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Dave.Reilly@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'45CE3181666942968AD40F0B931646B1', 0, N'', NULL, NULL, N'Alli', N'Giansanti', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Alli.Giansanti@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'46B5D1CE33EB4CFF965FB70B4A0F7E7E', 0, N'', NULL, NULL, N'Mikaela', N'Ramviken', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Mikaela.Ramviken@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'491FB9109B43407999BADE4EF1967D55', 0, N'', NULL, NULL, N'Tim', N'Hall', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'tim.hall@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'49588C1C295F42D7AEBA9E2D7E90653E', 0, N'', NULL, NULL, N'Diego', N'Cacivio', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'dcacivio@beatmobile.com.ar', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'497871898B5E4AAABFE6CEF49B172BEE', 0, N'', NULL, NULL, N'Trey', N'Tuzil', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'trey.tuzil@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'49A111F7C74C42BF92963C8B97298DE4', 0, N'', NULL, NULL, N'Craig', N'Rosen', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'craig.rosen@atlanticrecords.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'4AA0B429457143CF8797F6C73A6C1B0A', 0, N'', NULL, NULL, N'Sayo', N'Muraoka', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'sayo.muraoka@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'4BAC0BC122B14D358E08FDF8A6EBF918', 0, N'', NULL, NULL, N'Lydia', N'Sarno', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'lydia.sarno@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'4DC411C9145E4B54A026606CB9799A92', 0, N'', NULL, NULL, N'CMD', N'Info', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'info@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'4F0E07361A9040799971F0C95D7D4A29', 0, N'', NULL, NULL, N'Workflow', N'Tester', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'beakers17@gmail.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'52532E6F33314630BC1B416C177EAC9F', 0, N'', NULL, NULL, N'Danica', N'Middleton', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'danica212@gmail.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'5444C3E2CDE84D4C8A6B86004921F1E8', 0, N'', NULL, NULL, N'Jesse', N'Iden', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'jesse.iden@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'545FBADB56054136A717CD34DB064D09', 0, N'', NULL, NULL, N'Roberta', N'Massimi', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'roberta.massimi@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'54E97C7771604813824974811F19AB9E', 0, N'', NULL, NULL, N'Fred', N'van de Klomp', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Fred.van.de.Klomp@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'55ED5C7794484A1FA214BD8E32B7E874', 0, N'', NULL, NULL, N'Linda', N'Nelson', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'linda.nelson@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'56C2997AEDAD41FDB3CAE416A81751FF', 0, N'', NULL, NULL, N'Philipp', N'Puls', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Philipp.Puls@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'577A2456D6974F3FAC6AEEC4ADEA78B4', 0, N'', NULL, NULL, N'Lee Ann', N'Wong', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'leeann.wong@rhino.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'57D376C28D974BD9A409F0BA63E7DC8F', 0, N'', NULL, NULL, N'Ellen', N'Ghislain', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'ellenghislain@cinram.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'585C24E27BC94C1AB78B671B2D44C84A', 0, N'', NULL, NULL, N'Sabrina', N'Escuredo', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Sabrina.Escuredo@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'58F69A92C95E4B73B234ED0CA0567C43', 0, N'', NULL, NULL, N'Paco', N'Cuadrado', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'paco.cuadrado@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'5915400E855A4AB68CE6FCFEB1092EB6', 0, N'', NULL, NULL, N'Ryan', N'Rahlf3', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'info@empty7.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'59ED42F92CBF44E3A78B0969755CDADE', 0, N'', NULL, NULL, N'TJ', N'Vittore', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'tj@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'5ACA03CA30B748459EB96D40D975BCDB', 0, N'', NULL, NULL, N'Margaret', N'Gwynne', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'margaret.gwynne@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'5C09ED55A6B742B5B6F62F0861E96FF1', 0, N'', NULL, NULL, N'Craig', N'Man', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'craig@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'5CCA1B026CF7442989E215B22C994D24', 0, N'', NULL, NULL, N'Jessica', N'Embick', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Jessica.Embick@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'5D0CEE6E75494294A9DAA6AC5FFD307F', 0, N'', NULL, NULL, N'Ryan', N'Rahlf', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'ryan.rahlf@gmail.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'5D114A1D68FE4C58916742761EF1B276', 0, N'', NULL, NULL, N'Caroline', N'Soderlund', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'caroline.soderlund@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'5D781FEB024748429A5C802AFFA960DA', 0, N'', NULL, NULL, N'Steve', N'Woolard', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'steve.woolard@rhino.com', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'5FC7F52E3AD84B21BBDA180B76643FA3', 0, N'', NULL, NULL, N'Chee Yian', N'Ou', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Chee_Yian.Ou@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'60FE2F7D5EC740B49DA8CF4DBCD080CB', 0, N'', NULL, NULL, N'Petra', N'Brinkmann', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'petra.brinkmann@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'616C80DD93F2479EB58A94E93C9A96B4', 0, N'', NULL, NULL, N'Jessica', N'Stell', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'jessica.stell@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'61A4B8420C264DFDA0A1566DD2965F06', 0, N'', NULL, NULL, N'Michael', N'Dupree', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Michael.Dupree@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'621FC079982345D795DD5D619F69949C', 0, N'', NULL, NULL, N'Dmitry', N'Stolyarov', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'dstolyarov@galarec.ru', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'62F1B631262749268D6F395B228A23E8', 0, N'', NULL, NULL, N'Alexandra', N'Johnson', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'alexandra.johnson@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'65B6ED1FF7FA4C82A86D92B7D31DAE32', 0, N'', NULL, NULL, N'Derek', N'Jablonski', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Derek.Jablonski@rhino.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'6721B7C388874392A0ED490AF13A812A', 0, N'', NULL, NULL, N'Michelle', N'Marmol', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'michelle.marmol@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'67C216A9E6DD4358B9664DF4A6EFF426', 0, N'', NULL, NULL, N'Lucas', N'Bedau', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Lucas.Bedau@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'67F8CCF42E5B4CEBB17C81C8CA1C02AD', 0, N'', NULL, NULL, N'Anna', N'Milosz', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'anna.milosz@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'68BB283E2BFF4A53AF32DF473ED4C02B', 0, N'', NULL, NULL, N'MK', N'Lee', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'MK.Lee@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'69281ED5282D4B83AC7CE9EDD1E7008F', 0, N'', NULL, NULL, N'Catherine', N'Rumenius', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'catherine.rumenius@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'699BDC54C0984F4380FDFFE89E2FFB61', 0, N'', NULL, NULL, N'Nilda', N'Diaz', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'nilda.diaz@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'69E2223F1AD84E44AB3F68427C469878', 0, N'', NULL, NULL, N'Charles', N'Benson', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'charles.benson@rhino.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'6A0BF5FBEB3C4596A7484FE50980EEBF', 0, N'', NULL, NULL, N'Steve', N'Kravac', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'steve@porterhouserecords.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'6A2053DF8AF64AA58D9ECD2978742CB6', 0, N'', NULL, NULL, N'Filippo', N'Innocenti', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Filippo.Innocenti@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'6AB6EA41EF114836930B2CFF6F2FEE0D', 0, N'', NULL, NULL, N'Brian', N'Wei', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'brian.wei@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'6B0A90B39E8447979E0B0FF8A4A11162', 0, N'', NULL, NULL, N'Rafael', N'Maldonado', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'rafael.maldonado@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'6B39EF5D30E64926BBEE63682A654D17', 0, N'', NULL, NULL, N'Frank', N'Frelih', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'frank.frelih@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'6B81D8F3C5C8456D8276531A049AE396', 0, N'', NULL, NULL, N'Marie', N'Navarro', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'marie.navarro@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'6CCD91EC92F0436B9186A1F25614AB3B', 0, N'', NULL, NULL, N'Iris', N'Bollebakker', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Iris.Bollebakker@spinninrecords.nl', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'6D658AF6B92C4469916B61D8AFE0CEB3', 0, N'', NULL, NULL, N'Susanne', N'Savage', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'susanne.savage@rhino.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'6F97B1481337461DA5A912E421A8C099', 0, N'', NULL, NULL, N'Ana', N'Moreira', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'ana.moreira@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'708CD1DC2EEB45C3A55D38374382B348', 0, N'', NULL, NULL, N'Josh', N'Skubel', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'joshua.skubel@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'71740C170B5D4234AECC16B672264D23', 0, N'', NULL, NULL, N'Ryan', N'Adesys', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'rrahlf@adesys.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'73CE7479462442829B96B3605FD1DDDC', 0, N'', NULL, NULL, N'Paul', N'Forte', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'paul.forte@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'74632D544A3C4BC694379F16BC992080', 0, N'', NULL, NULL, N'Selina', N'Tham', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Selina.Tham@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'755CE684A5B144788F286A7CEF2492A8', 0, N'', NULL, NULL, N'Ingrid', N'Sakariassen', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Ingrid.Sakariassen@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'76F5C77B3D9D439BB6BB239CEF15FDAC', 0, N'', NULL, NULL, N'Angeline', N'Ngo', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Angeline.Ngo@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'783D39F984644A2E88D51B2A0E2B35CA', 0, N'', NULL, NULL, N'Vanessa', N'Mah', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'vanessa.mah@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'7869D95F342848ADBD86BC80DF9000A7', 0, N'', NULL, NULL, N'Marcia', N'Millar', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'marcia.millar@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'786D1AE5E20B43868C3617918D3EB03A', 0, N'', NULL, NULL, N'Cyndi', N'Fung', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Cyndi.Fung@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'7A29FA35DE6C4EC49A713BA01340343D', 0, N'', NULL, NULL, N'Yuki', N'Okumura', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Yuki.Okumura@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'7CAFE637EC3543CEBC4EFA07482B53E8', 0, N'', NULL, NULL, N'Genie', N'Eubanks', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Genie.Eubanks@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'7D58C81F4CAC4F0A8FE8F6BFD5DC7A4C', 0, N'', NULL, NULL, N'Eric', N'Rosloff', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'eric.rosloff@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'817B15695FF24BF4975E855309DC4885', 0, N'', NULL, NULL, N'Adelechiara', N'Nicoletti', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Adelechiara.Nicoletti@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'837C8B12DA4642808AC12FDDC22DE58E', 0, N'', NULL, NULL, N'Rebecca', N'Rodriguez', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'rebecca.rodriguez@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'850407CAB0084F89A36D672A5BF88DAB', 0, N'', NULL, NULL, N'Michael', N'Tompkins', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'michael.tompkins@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'85FCDE45F3EF402DA1826A11E99EF91F', 0, N'', NULL, NULL, N'Hillary', N'Hawkins', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'hillary.hawkins@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'8641512CA2B640C894639954CE7DBEAB', 0, N'', NULL, NULL, N'Julieta', N'Lanzo', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Julieta.Lanzo@WarnerMusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'8AE6620983AB4815A93618865A0F1B65', 0, N'', NULL, NULL, N'Nicole', N'Blonder', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'nicole@mute.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'8BA98AEA5F3B4AACBC3A4CA22F970147', 0, N'', NULL, NULL, N'Heiko', N'Ziemke', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'HeikoZiemke@cinram.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'8C94FFBA966249A1AC73EBD5BB9806CA', 0, N'', NULL, NULL, N'Jenny', N'Thyrhaug', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'jenny.thyrhaug@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'8DA6264DC2BB4114BEAA49310D39C23E', 0, N'', NULL, NULL, N'Miroslav', N'Klima', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Miroslav.Klima@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'8DFD333503E24CBAA6F046E0AF214C07', 0, N'', NULL, NULL, N'Elizabeth', N'Boettcher', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Elizabeth.Boettcher@concordmusicgroup.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'91BE66F32778410D955B0722CF1F8AFF', 0, N'', NULL, NULL, N'Melissa', N'Cusick', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'melissa.cusick@nonesuch.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'9299C0F6230B4BBE9D041ECE4CCF4187', 0, N'', NULL, NULL, N'Laurence', N'Jacobs', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Laurence.Jacobs@concordmusicgroup.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'92DAF69176CF4A61BFBA84AD9B0943A0', 0, N'', NULL, NULL, N'Crystal', N'Murphy', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'crystal.murphy@rhino.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'936216A8DF354EBD8ACBB953F8BECFF4', 0, N'', NULL, NULL, N'Ryan', N'Rahlf2', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'ryan.rahlf@empty7.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'943417EF273E4531A485C5CDAB1C499C', 0, N'', NULL, NULL, N'Alexandra', N'Chandler', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Alexandra.Chandler@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'9457E4D4A70F4A00B680ECA24E296CCD', 0, N'', NULL, NULL, N'Leni', N'Rugsveen', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'leni.rugsveen@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'994F7F8DA4F849CAB0D66520F8316B1F', 0, N'', NULL, NULL, N'Ryan', N'Rahlf', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'ryan@empty7.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'9A34276076584A09A846C7FB5E7FBC2C', 0, N'', NULL, NULL, N'Jorge', N'Oseguera', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Jorge.Oseguera@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'9AFFC05ED755438CA70B0820B97AF265', 0, N'', NULL, NULL, N'Eric', N'Test', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'eric@disaxiom.net', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'9C8E491DC87D40929278777BD9B53CE5', 0, N'', NULL, NULL, N'Victoria', N'Pe', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Victoria.Pe@warnermusic.ru', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'9EE51EC8423A41588AB5410F137C1D22', 0, N'', NULL, NULL, N'Dan', N'Perloff', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'dan@manifesto.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'9F064B60078840108E02E90E98389FBC', 0, N'', NULL, NULL, N'Ruriko', N'Misawa', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Ruriko.Misawa@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'9F2260EFCBEC4B5B92ACF709848F1BA9', 0, N'', NULL, NULL, N'David', N'Dieckmann', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'David.Dieckmann@CraigmanDigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'9F768E4C2C9846D59B218E0F00DA0E17', 0, N'', NULL, NULL, N'Katja', N'Sonderhauge', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'katja.sonderhauge@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'9FCABCE099C94FAC9CC6B6DB88ECFDA4', 0, N'', NULL, NULL, N'Nick', N'Allen', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'nick.allen@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'A0034A082E1B4387974121FC0718A10C', 0, N'', NULL, NULL, N'Jenesis', N'Alonso', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'jenesis.alonso@atlanticrecords.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'A013A607510642EAB95A8D99DF6C34BF', 0, N'', NULL, NULL, N'Rebeca', N'Villalobos', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'rebeca.villalobos@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'A355202A4D1D4C318ACBCE90310D06D4', 0, N'', NULL, NULL, N'System', N'Account', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'System@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'A61777CF85A14B4598B1EAF1D3AD038C', 0, N'', NULL, NULL, N'Emiko', N'Ohnishi', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'emiko.ohnishi@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'A71447C0CC0F47B5A8DCD8C517F53CE4', 0, N'', NULL, NULL, N'Cristi', N'McGilvray', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'cristi.mcgilvray@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'A9272ED06B914010A8ABB702C133F799', 0, N'', NULL, NULL, N'Yutaro', N'Tabu', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Yutaro.Tabu@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'AC5A6EC791C6473F9F4E5DFAE283AA3F', 0, N'', NULL, NULL, N'Gonzalo', N'Cuevas', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'gonzalo.cuevas@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'AD2C7D67756544FCA9D3C8AE4AB1C6D8', 0, N'', NULL, NULL, N'Bill', N'Taylor', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Bill.Taylor@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'AD4A5F7AE345493C85CEDBA38A94D54D', 0, N'', NULL, NULL, N'Frank', N'Collura', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'frank.collura@umusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'AD93FB85874243B0A35C2112E506305E', 0, N'', NULL, NULL, N'Ryan', N'Rahlf', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'webaccounts@adesys.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'ADA829EAAA8540B28063C8EBD0CE68FD', 0, N'', NULL, NULL, N'Erika', N'Stewart', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'erika.stewart@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'AE05DCB65A2F487A80644153DFFF6197', 0, N'', NULL, NULL, N'Vincent', N'Barrier', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'vincent.barrier@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'AF4CECAB3858409489B407C9DE245201', 0, N'', NULL, NULL, N'Chad', N'DePasquale', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'chad.depasquale@nonesuch.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'AFC6023FAB3540FD86D1CFA5138E85D8', 0, N'', NULL, NULL, N'Callum', N'Eckersley', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'callum.eckersley@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'B0321B98D5584CD3BDCAD570FA7ED3A2', 0, N'', NULL, NULL, N'Aitor', N'Nunez', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'aitor.nunez@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'B114B7CE783A42C7B7C2CE68B5CE9EA4', 0, N'', NULL, NULL, N'Jack', N'Anderson', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'jack.anderson@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'B3B13EA0EF184CC3A81C22DA3FA78798', 0, N'', NULL, NULL, N'Marlena', N'Krawczyk', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'marlena.krawczyk@parlophonemusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'B44F407AABF14B3ABE63FBE5B275DABC', 0, N'', NULL, NULL, N'Ceri', N'Roberts', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'ceri.roberts@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'B47539574A144C5C9E42608017D556EE', 0, N'', NULL, NULL, N'Kobi', N'Ferguson', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'ferguson@yeshuaisrael.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'B4AF4CC3C98E411384AC0FEC49736B18', 0, N'', NULL, NULL, N'Lisa', N'DeLuca', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Lisa.DeLuca@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'B5DAA58013394F90B471304CE8CFF84E', 0, N'', NULL, NULL, N'Terry', N'Watson', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'terry.watson@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'B636F308BC1C43C2ADC42CE60C2D35D2', 0, N'', NULL, NULL, N'Nkateko', N'Malubane', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'nkateko.malubane@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'B7B77C453D33479F8C05674B03ADFEE5', 0, N'', NULL, NULL, N'David', N'Wong', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'david.wong@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'B9F11EA0472849B2B93B5ABA55750860', 0, N'', NULL, NULL, N'Maggie', N'Porter', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'maggie.porter@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'BB082D2D4ED245D0BAFB4AC9B1A9338B', 0, N'', NULL, NULL, N'Maximiliano', N'Prez ', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'mprez@beatmobile.com.ar', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'BBFADB94A84E4CBCA2F225A486255C74', 0, N'', NULL, NULL, N'Robin', N'Winter', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'robin.winter@atlanticrecords.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'BC9F2819F0B8499797998F46F7660FC2', 0, N'', NULL, NULL, N'Tuija', N'Kytö', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'tuija.Kyto@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'BD8C4B6C328C430BAD1EBE7E535A4279', 0, N'', NULL, NULL, N'Julia', N'Solana', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'julia.solana@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'BE742B450FEF4374AA4A150C2E133718', 0, N'', NULL, NULL, N'Brian', N'Ranney', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Brian.Ranney@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'BF254B01AB9A48F7904723233845AFEC', 0, N'', NULL, NULL, N'Jamie', N'Younger', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'jamie.younger@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'BF327F7816DE4AD2852E7C47A845D2B7', 0, N'', NULL, NULL, N'Thomas', N'Mosch', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Thomas.Mosch@osfal.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'C1A27BFBDAE14C198B452119FC6D0843', 0, N'', NULL, NULL, N'James', N'Ball', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'james.ball@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'C2FE5128A8724C68BD1F4533D9CE85E8', 0, N'', NULL, NULL, N'Manuela', N'Wellemsen', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'manuela.wellemsen@zebralution.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'C48B9804F7544F30AC3F746053D8E2D4', 0, N'', NULL, NULL, N'Steve', N'Bollard', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'sbollard@musicchoice.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'C4A8185AC0CF4AC5B410F9543B99C7AC', 0, N'', NULL, NULL, N'Simon', N'Malaussena', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Simon.Malaussena@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'C4B14788C2BC4A15BC57395F90B372BB', 0, N'', NULL, NULL, N'Austin', N'Gomez', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'austingomez@elektra.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'C4F3980633414F339FD283366BBCCD92', 0, N'', NULL, NULL, N'Carolina', N'Moreira', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'carolina.moreira@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'C57BEA6109954379B827F4A3EA00D793', 0, N'', NULL, NULL, N'John', N'Hanssen', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'john.hanssen@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'C5E07B291D1F4B3C8F4DACBC2F08FC5D', 0, N'', NULL, NULL, N'Alexandra', N'Houck', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'alexandra.houck@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'C5E935BA7EC2406D81EAA7B18E98F98F', 0, N'', NULL, NULL, N'René', N'Madsen', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'rene.madsen@warnermusic.com', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'C707439D948D48E2B75D0D30576D475D', 0, N'', NULL, NULL, N'Tim', N'Phillips', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'tim.phillips@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'C8F14011029543879E14F9A25022A794', 0, N'', NULL, NULL, N'Kristina', N'Fox', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'kfox@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'C92DBE97493243319E577599AEE57DAE', 0, N'', NULL, NULL, N'Eduardo', N'Soto', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'eduardo.soto@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'CA8172C5810B4F0E9A6ABDF9FB37B365', 0, N'', NULL, NULL, N'Rebecca', N'Stueven', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Rebecca.Stueven@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'CB8D55717A534FBC9899A0A15805C20F', 0, N'', NULL, NULL, N'Taylor', N'Collins', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Taylor.Collins@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'CC386D3BD48F4EC89B63AF2C995DB6CC', 0, N'', NULL, NULL, N'Rick ', N'Bond', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'rick.bond@bmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'CCDC70BA215649A6BE5155989462AC83', 0, N'', NULL, NULL, N'Oda', N'Svendsby', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'oda.svendsby@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'CD14802323A947169AAC0E9ECF895FF2', 0, N'', NULL, NULL, N'Tanya', N'Hong', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'tanya.hong@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'CDACF637895442BB862138D2AEC45ACF', 0, N'', NULL, NULL, N'Sutipong', N'Rojanaviphata', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Sutipong.Rojanaviphata@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'CDE48380D9CA4FBBB727DD49C2827597', 0, N'', NULL, NULL, N'Hannu', N'Asumaa', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'hannu.asumaa@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'CE065BA00C5747DCBC5F8B1E0DBD012B', 0, N'', NULL, NULL, N'Nicole', N'DeJesus', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Nicole.DeJesus@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'CFA9317AAC384057AD1E8ABC4D8D88AD', 0, N'', NULL, NULL, N'Cody', N'Kern', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'cody.kern@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'D16067C6CEA44A1A9A9367012B014F1E', 0, N'', NULL, NULL, N'Matt', N'D''Amico', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Matt.DAmico@umusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'D272A0138CDD4C849DE3FEAE9452871C', 0, N'', NULL, NULL, N'Dana', N'Smart', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Dana.Smart@umusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'D2C8630475464089B369B2DB57720C18', 0, N'', NULL, NULL, N'James', N'Findlay', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'James.Findlay@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'D4A4C1A4992D42B9AA4AF8BE2C6C6F92', 0, N'', NULL, NULL, N'Tom', N'Amesbury', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'tom.amesbury@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'D4D07AB02A474ECC888531FB2934280A', 0, N'', NULL, NULL, N'Tyler', N'Boswell', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'tyler.boswell@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'D4D3F814B72E4AAC9E5E27261DC54EC1', 0, N'', NULL, NULL, N'Sophie', N'Wilkinson', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Sophie.Wilkinson@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'D68729E69F004289939FE715227BBA7E', 0, N'', NULL, NULL, N'Lexi', N'Hero', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Lexie.Hero@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'D9E993304C1F450FBC1C52500036B9A5', 0, N'', NULL, NULL, N'Andrew', N'Berkowitz', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Andrew.Berkowitz@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'DA7D12C6E574475FBFC37ED72DDCEDCA', 0, N'', NULL, NULL, N'Mauricio', N'Riquelme', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'mauricio.riquelme@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'DAE671D3E818446EA51BCD672E554E9B', 0, N'', NULL, NULL, N'Steven', N'Salgado', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'steven.salgado@atlanticrecords.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'DBFB49168653470E9AA6F193B94724E3', 0, N'', NULL, NULL, N'Brandon', N'Peckham', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'brandon.peckham@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'DDF0E7D6B01C4F19944F50C31C47454A', 0, N'', NULL, NULL, N'Shelagh', N'Hughes', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'shelagh.hughes@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'DF0B8204F05848638686FB94B8094AAC', 0, N'', NULL, NULL, N'Phoeni', N'Shih', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Phoeni.Shih@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'DF4A48601F264D678DBDA1238A5393DC', 0, N'', NULL, NULL, N'Ivan', N'Babic', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Ivan.Babic@parlophonemusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'DFFC7A56E5444359B23F2CB2FF802BF0', 0, N'', NULL, NULL, N'Leighton', N'Singleton', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'lksent@comcast.net', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'E24C4EADE0A24205A671FCA4C0578DEF', 0, N'', NULL, NULL, N'delete', N'me', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'deleteme@empty7.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'E2506BE0717046C9BD7C09F3B38C6C86', 0, N'', NULL, NULL, N'Jonathan', N'Sosis', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'jonathan.sosis@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'E282357EABF44435936332E715326A0A', 0, N'', NULL, NULL, N'Shane', N'Konen', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Shane.Konen@ada-music.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'E2E0B385B62B4BBB8C4F12197E9EB21A', 0, N'', NULL, NULL, N'Severine', N'LeFoll', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'severine.lefoll@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'E3CE01CA142E41778EA9A18AEEEF8650', 0, N'', NULL, NULL, N'Craig', N'Mantra', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'craigmantra@earthlink.net', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'E47525AF603B4F6EA3B29805D24DC4BA', 0, N'', NULL, NULL, N'Jennifer', N'Cook-Hanssen', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'jennifer.cook-hanssen@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'E6E96D6CAA774CB2A25786E021BE844C', 0, N'', NULL, NULL, N'Mary', N'Hogan', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Mary.Hogan@concordmusicgroup.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'E714250D7CC8439EA58BCD396A1990A6', 0, N'', NULL, NULL, N'Derec', N'Dunn', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'derec.dunn@atlanticrecords.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'E73276599F574F78928354DE50280963', 0, N'', NULL, NULL, N'Aaron', N'Sawyer', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'aaronsawyer@redtheater.org', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'EA1E3762541E459597C12351E8754D97', 0, N'', NULL, NULL, N'Andreas', N'Wideroe', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'post@filmtek.no', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'EA66DA1145474D5EADCCF716974F7139', 0, N'', NULL, NULL, N'Mike', N'Liguori', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'mike.liguori@roadrunnerrecords.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'EA92C294CD3943D78D3DBC0EF9FA93DC', 0, N'', NULL, NULL, N'Scott', N'Fitzpatrick', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'scott.fitzpatrick@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'EB4B609C652946409F9F2496DF2E8C71', 0, N'', NULL, NULL, N'Tomás', N'Sprei', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'tsprei@beatmobile.com.ar', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'EB62B0B12C464B5E8346116FC9463F15', 0, N'', NULL, NULL, N'Jeff', N'Fura', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'jeff.fura@umusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'EBE2034D087C411BB703EF7A0E00EE64', 0, N'', NULL, NULL, N'Antonella', N'Scarponi', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'antonella.scarponi@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'ECBF86F4A9104833A7A1B65A357DB80D', 0, N'', NULL, NULL, N'Lauryn', N'Snapp', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'lauryn.snapp@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'ED68FDF82E4F46879E7E8A0A45EFCD71', 0, N'', NULL, NULL, N'Chris', N'King', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'chris.king@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'ED72B81EA2EA4BF49046D835E23DDAE2', 0, N'', NULL, NULL, N'Kristine', N'Gonzalez', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'kristine.gonzalez@atlanticrecords.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'ED77ABB7DEBD436F98EA6DEC46A4FC10', 0, N'', NULL, NULL, N'Ingo', N'Mandelartz', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'ingomandelartz@cinram.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'EDBED55F3B724951AF1114E83C6E67F0', 0, N'', NULL, NULL, N'Shannon', N'Ward', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'shannon.ward@rhino.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'F0EE74DF816D4095BEE752CB23B3FA7E', 0, N'', NULL, NULL, N'Emily', N'Ostertag', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'emily.ostertag@nonesuch.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'F2163BE3F3DB43EABF7D4694DC2F49DB', 0, N'', NULL, NULL, N'Mizuki', N'Hoshino', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'mizuki.hoshino@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'F24A6E40962946A6B6EB85FFFD4BABFC', 0, N'', NULL, NULL, N'Angelica', N'Gange', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Angelica.Gange@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'F42FC83B7C5945D89D0A53288B5F62AC', 0, N'', NULL, NULL, N'Maggie', N'Porter', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'maggie.griffin@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'F573DF09C32F45C0AAD44587F95E9994', 0, N'', NULL, NULL, N'Lara', N'Greening', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Lara.Greening@ada-music.co.uk', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'F740F99A17534832A9F65471B499AF2E', 0, N'', NULL, NULL, N'Craig', N'Anderson', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Craig.Anderson@CraigmanDigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'F744724D29774DF89909EEA909A18458', 0, N'', NULL, NULL, N'Devin', N'Sarno', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'devin.sarno@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'F7E9A26735AF47068C3A494240A5B001', 0, N'', NULL, NULL, N'Roderick', N'Scott', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'roderick.scott@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'F95BC80E02A24E94A2817D753909BF8A', 0, N'', NULL, NULL, N'Andrew', N'Saiker', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'andrew.saiker@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'F9CF83DD29F6423B96CE757630E30B1D', 0, N'', NULL, NULL, N'DeAngelo', N'Jones', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'deangelo.jones@wbr.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'FBCBB8CE6A1849C5AAD394F23B323F6B', 0, N'', NULL, NULL, N'Stephanie', N'Brouwer', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'Stephanie.Brouwer@spinninrecords.nl', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'FBD33E14BE4848148375283E7EA3F935', 0, N'', NULL, NULL, N'Brooke', N'Tuzil', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'brooke.tuzil@craigmandigital.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'FCAEA3B1806349EEB140ABA2F55432EE', 0, N'', NULL, NULL, N'Sean', N'Beaton', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'sean.beaton@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'FF15452BC9B14E90A99FEDAB0526AF7A', 0, N'', NULL, NULL, N'Johanna', N'Norberg', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'johanna.norberg@warnermusic.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'FF57290862CB4A3BBD5706BFAC2F9A06', 0, N'', NULL, NULL, N'Meghan', N'Ryan', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'meghan.ryan@timelife.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'FF5F2EFB7B414601ADC1EE1B3B119516', 0, N'', NULL, NULL, N'Diane', N'Chen', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, CAST(N'2020-04-04T12:47:00.103' AS DateTime), CAST(N'2020-04-04T12:47:00.103' AS DateTime), N'Apr  4 2020 12:47PM', NULL, N'diane.chen@wmg.com', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'STT00001', 0, NULL, N'XXXX-XXXX-XXX-XX', N'M', N'Nancy', N'Rogers', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, N'nancy@bakersman.com', N'System', CAST(N'2020-04-02T06:28:04.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'STT00002', 0, NULL, N'XXXX-XXXX-XXX-X1', N'M', N'Meghan', N'Ryan', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, N'meghan@bakersman.com', N'System', CAST(N'2020-04-02T06:29:00.633' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_UserRole] ([ID], [EmployeeID], [ID_Role], [Password], [IsInstructor], [IsSectionHead], [ID_Section], [Remark], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive], [passwordSalt]) VALUES (1, N'STT00001', 1, N'azsx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
/****** Object:  StoredProcedure [dbo].[sp_Course_select]    Script Date: 4/8/2020 11:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE  PROCEDURE [dbo].[sp_Course_select]
	 @paramCourseId nvarchar(50) = null,
	 @paramCourseName nvarchar(50) = null,
	 @paramCourseStatus int = 1,
	 @paramLearnMethod int = null
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  
	ROW_NUMBER() OVER(ORDER BY c.CourseID ASC)  as RowIndex, 
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

	FROM  LDMS_M_Course  c WITH (NOLOCK) 
	LEFT OUTER JOIN LDMS_M_CourseLearnMethod cm WITH (NOLOCK)  on c.ID_LearnMethod = cm.ID
	WHERE c.IsActive = 1

	/*AND (1 =  CASE WHEN @paramCourseId IS NOT NULL AND @paramCourseId <> '' AND @paramCourseId <> ' ' THEN
				CASE WHEN UPPER(c.CourseID) like '%'+ UPPER(@paramCourseId) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)
    AND (1 =  CASE WHEN @paramCourseName IS NOT NULL AND @paramCourseName <> '' AND @paramCourseName <> ' ' THEN
				CASE WHEN UPPER(c.CourseName) like '%'+ UPPER(@paramCourseName) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)
	AND ( @paramLearnMethod IS NOT NULL AND c.ID_LearnMethod = @paramLearnMethod )*/
			  
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CourseLearnMethod_ALL]    Script Date: 4/8/2020 11:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_CourseLearnMethod_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(ORDER BY ID ASC)  as RowIndex, ID AS ID, Course_LearnMethodName_TH, Course_LearnMethodName_EN FROM LDMS_M_CourseLearnMethod WITH (NOLOCK)  WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_CodeLookUp_Select]    Script Date: 4/8/2020 11:38:10 PM ******/
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
      ,[CreateBy]
      ,[CreateDate]
      ,[UpdateBy]
      ,[UpdateDate]
      ,[IsActive]
	FROM [dbo].[LDMS_M_CodeLookUp]
	WHERE [IsActive] = 1 AND [TableName] = @TableName AND [FieldName] = @FieldName
	ORDER BY [Sequence] ASC


END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Insert]    Script Date: 4/8/2020 11:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_M_Instructor_Insert]
	@Instructor_ID nvarchar(10),
    @Instructor_Name nvarchar(100),
    @Type nvarchar(50),
    @Phone nvarchar(20),
    @Email nvarchar(50),
    @Organization int = NULL,
    @Address nvarchar(100),
    @District_Id int = NULL,
    @Aumphur_Id int = NULL,
    @Provice_Id int,
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

	SELECT @@IDENTITY

END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Select]    Script Date: 4/8/2020 11:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_M_Instructor_Select]
	@ID int
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT [ID]
      ,[Instructor_ID]
      ,[Instructor_Name]
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
      ,[IsActive]
	FROM [dbo].[LDMS_M_Instructor]
	WHERE [ID] = @ID
   
END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_SelectPaging]    Script Date: 4/8/2020 11:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_M_Instructor_SelectPaging]
	@Instructor_ID varchar(10) = NULL,
	@IsActive varchar(1) = NULL,
	@Instructor_Name varchar(100) = NULL,
	@Organization varchar(10) = NULL,
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
	SET @RowFilter = 'WHERE 1 = 1'

	IF @Instructor_ID IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[Instructor_ID] LIKE ''%'+@Instructor_ID+ '%'' '

	IF @IsActive IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[IsActive] = '+@IsActive+ ' '
	
	IF @Instructor_Name IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[Instructor_Name] LIKE = ''%'+@Instructor_Name+ '%'' '

	IF @Organization IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[Organization] = '+@Organization+ ' '

	IF @Type IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[Type] = '''+@Type+ ''' '

	IF @Course_Experience IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND i.[Course_Experience] LIKE ''%'+@Course_Experience+ '%'' '

	IF @CourseName IS NOT NULL
		SET @RowFilter = @RowFilter + ' AND u.[CourseName]  LIKE ''%'+@CourseName+ '%'' '
	
	SET @CountColumn = '[ID]'
	
	SET @SortField = '[update_date] DESC'
    

	SET @sql = 'SELECT i.[ID]
					  ,i.[Instructor_ID]
					  ,i.[Instructor_Name]
					  ,i.[Type]
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
					  ,c.[ID_Course]
					  ,u.[CourseName]
				FROM LDMS_M_Instructor i
					LEFT JOIN [dbo].[LDMS_T_Class] c ON c.[ID_Instructor] = i.[ID]
					LEFT JOIN [dbo].[LDMS_M_Course] u ON u.[ID] = c.[ID_Course] ';

	 exec dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn

	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Update]    Script Date: 4/8/2020 11:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_M_Instructor_Update]
	@ID int,
	@Instructor_ID nvarchar(10),
    @Instructor_Name nvarchar(100),
    @Type nvarchar(50),
    @Phone nvarchar(20),
    @Email nvarchar(50),
    @Organization int = NULL,
    @Address nvarchar(100),
    @District_Id int = NULL,
    @Aumphur_Id int = NULL,
    @Provice_Id int,
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
		[Instructor_ID] = @Instructor_ID, [Instructor_Name] = @Instructor_Name, [Type] = @Type, [Phone] = @Phone,
		[Email] = @Email, [Organization] = @Organization, [Address] = @Address, [District_Id] = @District_Id, 
		[Aumphur_Id] = @Address, [Provice_Id] = @Provice_Id, [Post_Code] = @Post_Code, [Path_Image] = @Path_Image,
		[Path_Certificate] = @Path_Certificate, [Major] = @Major, [Course_Experience] = @Course_Experience,
		[Skill_Professional] = @Skill_Professional, [Customer_Reference] = @Customer_Reference, [Manufacturing_Area] = @Manufacturing_Area,
		[Update_By] = @Update_By, [Update_Date] = GETDATE(), [IsActive] = @IsActive
	WHERE [ID] = @ID


END
GO
/****** Object:  StoredProcedure [dbo].[sp_PagingHelper]    Script Date: 4/8/2020 11:38:10 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_PlatformType_ALL]    Script Date: 4/8/2020 11:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_PlatformType_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(ORDER BY ID ASC)  as RowIndex, ID AS PlatformID, PlatformTypeName_TH, PlatformTypeName_EN FROM LDMS_M_PlatformType WITH (NOLOCK)  WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Platfrom_select]    Script Date: 4/8/2020 11:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE   PROCEDURE [dbo].[sp_Platfrom_select]
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
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Center_READ_ALL]    Script Date: 4/8/2020 11:38:10 PM ******/
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
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,* FROM LDMS_M_Center WITH (NOLOCK) WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Department_READ_ALL]    Script Date: 4/8/2020 11:38:10 PM ******/
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
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,* FROM LDMS_M_Department WITH (NOLOCK) WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Division_READ_ALL]    Script Date: 4/8/2020 11:38:10 PM ******/
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
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,* FROM LDMS_M_Division WITH (NOLOCK) WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_JobGrade_READ_ALL]    Script Date: 4/8/2020 11:38:10 PM ******/
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
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,* FROM LDMS_M_JobGrade WITH (NOLOCK)  WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_JobTitle_READ_ALL]    Script Date: 4/8/2020 11:38:10 PM ******/
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
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,* FROM LDMS_M_JobTitle WITH (NOLOCK)  WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Role_READ_ALL]    Script Date: 4/8/2020 11:38:10 PM ******/
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
	SELECT ROW_NUMBER() OVER(ORDER BY ID ASC)  as RowIndex,ID AS RoleId,RoleName_EN,RoleName_TH,RoleDescription  FROM LDMS_M_Role WITH (NOLOCK)  WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_RoleMenu_READ_By_Role]    Script Date: 4/8/2020 11:38:10 PM ******/
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
	 INNER JOIN LDMS_M_SubModule subm  WITH (NOLOCK)  on rolm.ID_SubModule = subm.ID and subm.IsActive =1
	 INNER JOIN LDMS_M_Module mol WITH (NOLOCK)  on subm.ID_Module = mol.ID and mol.IsActive =1
	 WHERE rolm.IsActive = 1 and rol.ID = @paramRoleId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Section_READ_ALL]    Script Date: 4/8/2020 11:38:10 PM ******/
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
	SELECT ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID ASC)  as RowIndex,* FROM LDMS_M_Section WITH (NOLOCK) WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_READ_ALL]    Script Date: 4/8/2020 11:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC [dbo].[usp_User_READ_ALL] @paramEmployeeId=null,@paramEmployeeName=null,@paramdepartments='2'
-- =============================================
CREATE   PROCEDURE [dbo].[usp_User_READ_ALL]
	 @paramEmployeeId nvarchar(50) = null,
	 @paramEmployeeName nvarchar(50) = null,
	 @paramdepartments nvarchar(max) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @paramdepartments IS NULL
		SET @paramdepartments=''; 
    Declare @departments table (ID INT);

	INSERT INTO @departments SELECT  Item FROM dbo.SplitInts(@paramdepartments, ','); 

    -- Insert statements for procedure here
	SELECT  
	ROW_NUMBER() OVER(ORDER BY muser.EmployeeID ASC)  as RowIndex,
	muser.DateOfBirth,muser.DriverLicenseID,muser.email,muser.EmployeeID,muser.Gender,muser.ID_Center,
	muser.ID_Division,muser.ID_JobGrade,muser.ID_JobTitle,muser.IDCardNumber,muser.IsAD,muser.JoinDate ,
	muser.Name,muser.Nationality,muser.OutDate,muser.PhoneNumber,muser.Surname,muser.ID_Center,muser.ID_Division,muser.ID_Department,
	usrRole.ID as UserRoleId,usrRole.ID_Role,usrRole.IsInstructor,usrRole.Password,usrRole.Remark,usrRole.ID_Section,
	rol.ID as RoleId,rol.RoleDescription,rol.RoleName_EN,rol.RoleName_TH,
	dep.ID as ID_Department,dep.DepartmentID,dep.DepartmentName_EN,dep.DepartmentName_TH,dep.Description,
	muser.ID_Plant,plant.PlantDescription,plant.PlantID,plant.PlantName_EN,plant.PlantName_TH
	FROM   LDMS_M_User  muser WITH (NOLOCK) 
	LEFT OUTER JOIN LDMS_M_UserRole usrRole WITH (NOLOCK)  on muser.EmployeeID = usrRole.EmployeeID
	LEFT OUTER JOIN LDMS_M_Role rol  WITH (NOLOCK) on usrRole.ID_Role = rol.ID
	LEFT OUTER JOIN LDMS_M_Department dep  WITH (NOLOCK) on muser.ID_Department = dep.ID
	LEFT OUTER JOIN LDMS_M_Plant plant  WITH (NOLOCK) on muser.ID_Plant = plant.ID
	WHERE muser.IsActive =1
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
END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_READ_BY_EmployeeId]    Script Date: 4/8/2020 11:38:10 PM ******/
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

	SELECT ROW_NUMBER() OVER(ORDER BY muser.EmployeeID ASC)  as RowIndex,
	muser.DateOfBirth,muser.DriverLicenseID,muser.email AS Email,muser.EmployeeID,muser.Gender,muser.ID_Center,
	muser.ID_Division,muser.ID_JobGrade,muser.ID_JobTitle,muser.IDCardNumber,muser.IsAD,muser.JoinDate,
	muser.Name,muser.Nationality,muser.OutDate,muser.PhoneNumber,muser.Surname,muser.ID_Center,muser.ID_Division,muser.ID_Department,

	usrRole.ID as UserRoleId,usrRole.ID_Role,usrRole.IsInstructor,usrRole.Password,usrRole.Remark,usrRole.ID_Section,
	rol.ID as RoleId,rol.RoleDescription,rol.RoleName_EN,rol.RoleName_TH,
	dep.ID as ID_Department,dep.DepartmentID,dep.DepartmentName_EN,dep.DepartmentName_TH,dep.Description,
	muser.ID_Plant,plant.PlantDescription,plant.PlantID,plant.PlantName_EN,plant.PlantName_TH
	FROM   LDMS_M_User  muser WITH (NOLOCK) 
	LEFT OUTER JOIN LDMS_M_UserRole usrRole WITH (NOLOCK)  on muser.EmployeeID = usrRole.EmployeeID
	LEFT OUTER JOIN LDMS_M_Role rol WITH (NOLOCK)  on usrRole.ID_Role = rol.ID
	LEFT OUTER JOIN LDMS_M_Department dep WITH (NOLOCK)  on muser.ID_Department = dep.ID
	LEFT OUTER JOIN LDMS_M_Plant plant WITH (NOLOCK)  on muser.ID_Plant = plant.ID
	WHERE USRROLE.EmployeeID = @param_EmployeeId AND muser.IsActive =1

END
GO
/****** Object:  StoredProcedure [dbo].[usp_UserRole_READ_BY_EmployeeId]    Script Date: 4/8/2020 11:38:10 PM ******/
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
	SELECT  ROW_NUMBER() OVER(ORDER BY usrRole.ID ASC)  as RowIndex, usrRole.ID as UserRoleId,usrRole.ID_Role,usrRole.IsInstructor,usrRole.Password,usrRole.Remark,
	rol.ID as RoleId,rol.RoleDescription,rol.RoleName_EN,rol.RoleName_TH
	FROM   LDMS_M_UserRole usrRole WITH (NOLOCK) 
	LEFT OUTER JOIN LDMS_M_Role rol  WITH (NOLOCK) on usrRole.ID_Role = rol.ID
	WHERE  usrRole.EmployeeID = @param_EmployeeId AND usrRole.[Password] = @param_Password
END
GO
