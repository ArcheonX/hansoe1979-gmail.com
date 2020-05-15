USE [veraplus_ldms]
GO
/****** Object:  Table [dbo].[LDMS_M_ApproveFlow]    Script Date: 2/4/2563 17:27:01 ******/
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
/****** Object:  Table [dbo].[LDMS_M_Center]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Center](
	[ID] [int] NOT NULL,
	[CenterID] [nvarchar](50) NULL,
	[ID_Plant] [int] NOT NULL,
	[CenterName_EN] [nvarchar](100) NULL,
	[CenterName_TH] [nvarchar](100) NULL,
	[Description] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Center] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_CodeLookUp]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_CodeLookUp](
	[ID] [int] NOT NULL,
	[TableName] [nvarchar](50) NOT NULL,
	[FieldName] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NOT NULL,
	[StateName] [nvarchar](50) NULL,
	[Sequence] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[IsDefault] [tinyint] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_CodeLookUp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Course]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Course](
	[ID] [int] NOT NULL,
	[CourseID] [nvarchar](50) NULL,
	[CourseName] [nvarchar](50) NULL,
	[ID_LearnMethod] [int] NOT NULL,
	[Objective] [nvarchar](200) NULL,
	[Description] [nvarchar](200) NULL,
	[OutLine] [nvarchar](200) NULL,
	[IsRefreshment] [int] NOT NULL,
	[RefreshmentPeriod_Day] [int] NULL,
	[TargetEmployeeID] [text] NULL,
	[ID_PlantTarget] [int] NULL,
	[ID_CenterTarget] [int] NULL,
	[ID_DivisionTarget] [int] NULL,
	[ID_DepartmentTarget] [int] NULL,
	[ID_SectionTarget] [int] NULL,
	[JobGradeTargetID] [nvarchar](200) NULL,
	[JobTitleTargetID] [text] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_CourseLearnMethod]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_CourseLearnMethod](
	[ID] [int] NOT NULL,
	[Course_LearnMethodName_EN] [nvarchar](50) NULL,
	[Course_LearnMethodName_TH] [nvarchar](50) NULL,
	[IsInterface] [int] NOT NULL,
	[Url] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_CourseLearnMethod] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Department]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Department](
	[ID] [int] NOT NULL,
	[DepartmentID] [nvarchar](50) NULL,
	[ID_Division] [int] NOT NULL,
	[DepartmentName_EN] [nvarchar](50) NULL,
	[DepartmentName_TH] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Division]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Division](
	[ID] [int] NOT NULL,
	[DivisionID] [nvarchar](50) NULL,
	[ID_Center] [int] NOT NULL,
	[DivisionName_EN] [nvarchar](50) NULL,
	[DivisionName_TH] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBY] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Division] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Instructor]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Instructor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Instructor_ID] [nvarchar](10) NOT NULL,
	[Instructor_Name] [nvarchar](100) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[Organization] [int] NULL,
	[Address] [nvarchar](100) NULL,
	[District_Id] [int] NULL,
	[Aumphur_Id] [int] NULL,
	[Provice_Id] [int] NULL,
	[Post_Code] [nvarchar](5) NULL,
	[Path_Image] [nvarchar](200) NULL,
	[Path_Certificate] [nvarchar](200) NULL,
	[Education_Level] [nvarchar](500) NULL,
	[Major] [nvarchar](200) NULL,
	[Course_Experience] [nvarchar](500) NULL,
	[Skill_Professional] [nvarchar](500) NULL,
	[Customer_Reference] [nvarchar](500) NULL,
	[Manufacturing_Area] [nvarchar](500) NULL,
	[Create_By] [nvarchar](50) NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [nvarchar](50) NULL,
	[Update_Date] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Instructor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_JobGrade]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_JobGrade](
	[ID] [int] NOT NULL,
	[JobGradeID] [nvarchar](50) NULL,
	[JobGradeName_EN] [nvarchar](50) NULL,
	[JobGradeName_TH] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_JobGrade] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_JobTitle]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_JobTitle](
	[ID] [int] NOT NULL,
	[JobTitleID] [nvarchar](50) NULL,
	[JobTitleName_EN] [nvarchar](50) NULL,
	[JobTitleName_TH] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_JobTitle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Module]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Module](
	[ID] [int] NOT NULL,
	[ModuleID] [nvarchar](10) NOT NULL,
	[ModuleName_EN] [nvarchar](50) NULL,
	[ModuleName_TH] [nvarchar](50) NULL,
	[Sequence] [int] NULL,
	[Parent] [int] NULL,
	[URL] [nvarchar](100) NULL,
	[Icon] [nvarchar](100) NULL,
	[Description] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Module] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Page]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Page](
	[PageID] [int] NOT NULL,
	[PageCode] [nvarchar](10) NOT NULL,
	[ModuleID] [int] NULL,
	[PageName_EN] [nvarchar](50) NULL,
	[PageName_TH] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[Sequence] [int] NULL,
	[URL] [nvarchar](100) NULL,
	[Icon] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Page] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Plant]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Plant](
	[ID] [int] NOT NULL,
	[PlantID] [nvarchar](10) NULL,
	[PlantName_EN] [nvarchar](50) NULL,
	[PlantName_TH] [nvarchar](50) NULL,
	[PlantDescription] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Plant] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Platform]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Platform](
	[ID] [int] NOT NULL,
	[PlatformID] [nvarchar](50) NULL,
	[PlatformName_EN] [nvarchar](50) NULL,
	[PlatformName_TH] [nvarchar](50) NULL,
	[ID_PlatformType] [int] NULL,
	[PlatformDescription] [nvarchar](100) NULL,
	[ID_Department_Create] [int] NOT NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Platform] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_PlatformType]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_PlatformType](
	[ID] [int] NOT NULL,
	[PlatformTypeName_EN] [nvarchar](50) NULL,
	[PlatformTypeName_TH] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_PlatformType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Prefix]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Prefix](
	[PrefixID] [int] NULL,
	[PageID] [int] NULL,
	[PrefixKey] [nvarchar](10) NULL,
	[FormatKey] [nvarchar](20) NULL,
	[LenghtKey] [int] NULL,
	[LastestKey] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Role]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Role](
	[ID] [int] NOT NULL,
	[RoleName_EN] [nvarchar](50) NULL,
	[RoleName_TH] [nvarchar](50) NULL,
	[RoleDescription] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NULL,
 CONSTRAINT [PK_LDMS_M_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_RolePermission]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_RolePermission](
	[ID] [int] NOT NULL,
	[ID_Role] [int] NOT NULL,
	[ID_Module] [int] NOT NULL,
	[PermissionType] [int] NOT NULL,
	[RolePermissionDescription] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_RolePermission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Section]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Section](
	[ID] [int] NOT NULL,
	[SectionID] [nvarchar](50) NULL,
	[ID_Department] [int] NOT NULL,
	[SectionName_EN] [nvarchar](50) NULL,
	[SectionName_TH] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Section] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_SubPlatform]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_SubPlatform](
	[ID] [int] NOT NULL,
	[ID_Platform] [int] NOT NULL,
	[SubPlatformName_EN] [nvarchar](50) NULL,
	[SubPlatformName_TH] [nvarchar](50) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_SubPlatform] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_SubPlatformCourse]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_SubPlatformCourse](
	[ID_SubPlatform] [int] NOT NULL,
	[ID_Course] [int] NOT NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_User]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_User](
	[EmployeeID] [nvarchar](50) NOT NULL,
	[IsAD] [tinyint] NOT NULL,
	[DriverLicenseID] [nvarchar](20) NULL,
	[IDCardNumber] [nvarchar](20) NULL,
	[Gender] [nvarchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[ID_JobGrade] [int] NULL,
	[ID_JobTitle] [int] NULL,
	[ID_Plant] [int] NOT NULL,
	[ID_Center] [int] NULL,
	[ID_Division] [int] NULL,
	[ID_Department] [int] NULL,
	[ID_Section] [int] NULL,
	[JoinDate] [datetime] NULL,
	[OutDate] [datetime] NULL,
	[DateOfBirth] [datetime] NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_UserRole]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_UserRole](
	[ID] [int] NOT NULL,
	[EmployeeID] [nvarchar](50) NULL,
	[ID_Role] [int] NOT NULL,
	[Password] [nvarchar](100) NULL,
	[IsInstructor] [int] NULL,
	[Remark] [nvarchar](200) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_UserRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_VenueRoom]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_VenueRoom](
	[ID] [int] NOT NULL,
	[VenueRoomID] [nvarchar](50) NULL,
	[ID_Plant] [int] NOT NULL,
	[RoomName_EN] [nvarchar](50) NULL,
	[RoomName_TH] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_VenueRoom] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_Class]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_Class](
	[ID] [int] NOT NULL,
	[ClassID] [nvarchar](50) NULL,
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
	[PlaceAndLocation] [nvarchar](200) NULL,
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
	[CertificationRemark] [nvarchar](100) NULL,
	[ReminderDurationDay] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_T_Class] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_ClassAttendAndResult]    Script Date: 2/4/2563 17:27:01 ******/
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
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_LDMS_T_ClassAttendAndResult] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_ClassCertificate]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_ClassCertificate](
	[ID] [int] NOT NULL,
	[ID_Class] [int] NOT NULL,
	[ID_Course] [int] NOT NULL,
	[ID_Employee] [int] NOT NULL,
	[Certificate_Path] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_LDMS_T_ClassCertificate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_ClassRegistration]    Script Date: 2/4/2563 17:27:01 ******/
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
	[RemarkManager] [nvarchar](50) NULL,
	[RegisterDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[RemarkAdmin] [nvarchar](50) NULL,
 CONSTRAINT [PK_LDMS_T_ClassRegistration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_Coaching]    Script Date: 2/4/2563 17:27:01 ******/
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
	[Topic] [text] NULL,
	[AssignDate] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_LDMS_T_Coaching] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CoachingReviewDetail]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CoachingReviewDetail](
	[ID] [int] NOT NULL,
	[ID_CoachingReviewHead] [int] NOT NULL,
	[PostDetail] [text] NOT NULL,
	[AttachFilePath] [nvarchar](100) NULL,
	[PostDate] [datetime] NOT NULL,
	[ID_PostByEmployee] [int] NOT NULL,
 CONSTRAINT [PK_LDMS_T_CoachingReviewDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CoachingReviewHead]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CoachingReviewHead](
	[ID] [int] NOT NULL,
	[ID_Coaching] [int] NOT NULL,
	[EmployeeReport] [text] NOT NULL,
	[AttachFilePath] [nvarchar](100) NULL,
	[PostDate] [datetime] NOT NULL,
	[ID_PostByEmployee] [int] NOT NULL,
 CONSTRAINT [PK_LDMS_T_CoachingReviewHead] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CompetenceAnalytic](
	[ID] [int] NOT NULL,
	[ID_EmployeeManager] [int] NOT NULL,
	[CompetenceAnalyticName] [nvarchar](100) NOT NULL,
	[Criteria1] [nvarchar](100) NULL,
	[Criteria2] [nvarchar](100) NULL,
	[Criteria3] [nvarchar](100) NULL,
	[Criteria4] [nvarchar](100) NULL,
	[Criteria5] [nvarchar](100) NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[ID_Department] [int] NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Employee]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CompetenceAnalytic_Employee](
	[ID] [int] NOT NULL,
	[ID_CompetenceAnalytic] [int] NOT NULL,
	[ID_Employee] [int] NOT NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic](
	[ID] [int] NOT NULL,
	[ID_CompetenceAnalytic] [int] NOT NULL,
	[ID_Course] [int] NULL,
	[KnowledgeTopicName] [nvarchar](100) NOT NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic_KnwldTopicr] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Score]    Script Date: 2/4/2563 17:27:01 ******/
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
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic_Score] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceStar]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_CompetenceStar](
	[ID] [int] NOT NULL,
	[ID_Employee] [int] NOT NULL,
	[ID_Manager] [int] NOT NULL,
	[CompetenceStarTypeID] [nvarchar](50) NOT NULL,
	[IsStarActive] [int] NOT NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBY] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceStar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP]    Script Date: 2/4/2563 17:27:01 ******/
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
	[IDP_Objective] [text] NOT NULL,
	[IDP_Status] [int] NOT NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[ID_Department] [int] NULL,
 CONSTRAINT [PK_LDMS_T_IDP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_ReviewDetail]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_IDP_ReviewDetail](
	[ID] [int] NOT NULL,
	[ID_IDP_ReviewHead] [int] NOT NULL,
	[PostDetail] [text] NOT NULL,
	[AttachFilePath] [nvarchar](100) NULL,
	[PastDate] [datetime] NOT NULL,
	[ID_PostByEmployee] [int] NOT NULL,
 CONSTRAINT [PK_LDMS_T_IDP_ReviewDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_ReviewHead]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_IDP_ReviewHead](
	[ID] [int] NOT NULL,
	[ID_IDP_SubTopic] [int] NOT NULL,
	[EmployeeReport] [text] NOT NULL,
	[AttachFilePath] [nvarchar](100) NULL,
	[PostDate] [datetime] NOT NULL,
	[ID_PostByEmployee] [int] NOT NULL,
	[ReviewStatus] [int] NOT NULL,
 CONSTRAINT [PK_LDMS_T_IDP_ReviewHead] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_SubTopic]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_IDP_SubTopic](
	[ID] [int] NOT NULL,
	[ID_IDP_Topic] [int] NOT NULL,
	[HowToDevelopment] [nvarchar](100) NOT NULL,
	[ExpectedOutcom] [nvarchar](100) NOT NULL,
	[ByWhen] [date] NOT NULL,
	[SubTopicStatus] [int] NOT NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_LDMS_T_IDP_SubTopic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_Topic]    Script Date: 2/4/2563 17:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_IDP_Topic](
	[ID] [int] NOT NULL,
	[ID_IDP] [int] NOT NULL,
	[DevelopementTopic] [nvarchar](100) NOT NULL,
	[ExpectedOutcom] [nvarchar](100) NOT NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_LDMS_T_IDP_Topic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
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
ALTER TABLE [dbo].[LDMS_T_Class] ADD  CONSTRAINT [DF_LDMS_T_Class_AttendNum]  DEFAULT ((1)) FOR [AttendNum]
GO
ALTER TABLE [dbo].[LDMS_M_Page]  WITH CHECK ADD  CONSTRAINT [FK_LDMS_M_Page_LDMS_M_Module] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[LDMS_M_Module] ([ID])
GO
ALTER TABLE [dbo].[LDMS_M_Page] CHECK CONSTRAINT [FK_LDMS_M_Page_LDMS_M_Module]
GO
ALTER TABLE [dbo].[LDMS_M_RolePermission]  WITH CHECK ADD  CONSTRAINT [FK_LDMS_M_RolePermission_LDMS_M_Module] FOREIGN KEY([ID_Module])
REFERENCES [dbo].[LDMS_M_Module] ([ID])
GO
ALTER TABLE [dbo].[LDMS_M_RolePermission] CHECK CONSTRAINT [FK_LDMS_M_RolePermission_LDMS_M_Module]
GO
ALTER TABLE [dbo].[LDMS_M_RolePermission]  WITH CHECK ADD  CONSTRAINT [FK_LDMS_M_RolePermission_LDMS_M_Role] FOREIGN KEY([ID_Role])
REFERENCES [dbo].[LDMS_M_Role] ([ID])
GO
ALTER TABLE [dbo].[LDMS_M_RolePermission] CHECK CONSTRAINT [FK_LDMS_M_RolePermission_LDMS_M_Role]
GO
ALTER TABLE [dbo].[LDMS_M_SubPlatform]  WITH CHECK ADD  CONSTRAINT [FK_LDMS_M_SubPlatform_LDMS_M_Platform] FOREIGN KEY([ID_Platform])
REFERENCES [dbo].[LDMS_M_Platform] ([ID])
GO
ALTER TABLE [dbo].[LDMS_M_SubPlatform] CHECK CONSTRAINT [FK_LDMS_M_SubPlatform_LDMS_M_Platform]
GO
ALTER TABLE [dbo].[LDMS_M_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_LDMS_M_UserRole_LDMS_M_Role] FOREIGN KEY([ID_Role])
REFERENCES [dbo].[LDMS_M_Role] ([ID])
GO
ALTER TABLE [dbo].[LDMS_M_UserRole] CHECK CONSTRAINT [FK_LDMS_M_UserRole_LDMS_M_Role]
GO
ALTER TABLE [dbo].[LDMS_M_VenueRoom]  WITH CHECK ADD  CONSTRAINT [FK_LDMS_M_VenueRoom_LDMS_M_Plant] FOREIGN KEY([ID_Plant])
REFERENCES [dbo].[LDMS_M_Plant] ([ID])
GO
ALTER TABLE [dbo].[LDMS_M_VenueRoom] CHECK CONSTRAINT [FK_LDMS_M_VenueRoom_LDMS_M_Plant]
GO
ALTER TABLE [dbo].[LDMS_T_Class]  WITH CHECK ADD  CONSTRAINT [FK_LDMS_T_Class_LDMS_M_Course] FOREIGN KEY([ID_Course])
REFERENCES [dbo].[LDMS_M_Course] ([ID])
GO
ALTER TABLE [dbo].[LDMS_T_Class] CHECK CONSTRAINT [FK_LDMS_T_Class_LDMS_M_Course]
GO
ALTER TABLE [dbo].[LDMS_T_ClassAttendAndResult]  WITH CHECK ADD  CONSTRAINT [FK_LDMS_T_ClassAttendAndResult_LDMS_T_Class] FOREIGN KEY([ID_Class])
REFERENCES [dbo].[LDMS_T_Class] ([ID])
GO
ALTER TABLE [dbo].[LDMS_T_ClassAttendAndResult] CHECK CONSTRAINT [FK_LDMS_T_ClassAttendAndResult_LDMS_T_Class]
GO
ALTER TABLE [dbo].[LDMS_T_ClassCertificate]  WITH CHECK ADD  CONSTRAINT [FK_LDMS_T_ClassCertificate_LDMS_T_Class] FOREIGN KEY([ID_Class])
REFERENCES [dbo].[LDMS_T_Class] ([ID])
GO
ALTER TABLE [dbo].[LDMS_T_ClassCertificate] CHECK CONSTRAINT [FK_LDMS_T_ClassCertificate_LDMS_T_Class]
GO
ALTER TABLE [dbo].[LDMS_T_ClassRegistration]  WITH CHECK ADD  CONSTRAINT [FK_LDMS_T_ClassRegistration_LDMS_T_Class] FOREIGN KEY([ID_Class])
REFERENCES [dbo].[LDMS_T_Class] ([ID])
GO
ALTER TABLE [dbo].[LDMS_T_ClassRegistration] CHECK CONSTRAINT [FK_LDMS_T_ClassRegistration_LDMS_T_Class]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MyPlan, MyTeam, I manage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LDMS_M_Module', @level2type=N'COLUMN',@level2name=N'ModuleName_EN'
GO
