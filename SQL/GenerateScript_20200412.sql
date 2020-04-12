--USE [veraplus_ldms]
--GO
/****** Object:  StoredProcedure [dbo].[usp_UserRole_READ_BY_EmployeeId]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_UserRole_READ_BY_EmployeeId]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_Update]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_User_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_ResetPassword]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_User_ResetPassword]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_READ_BY_EmployeeId]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_User_READ_BY_EmployeeId]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_READ_ALL]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_User_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_Delete]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_User_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_Create]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_User_Create]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_ChangePassword]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_User_ChangePassword]
GO
/****** Object:  StoredProcedure [dbo].[usp_Section_READ_ALL]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_Section_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_RoleMenu_READ_By_Role]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_RoleMenu_READ_By_Role]
GO
/****** Object:  StoredProcedure [dbo].[usp_Role_READ_ALL]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_Role_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_JobTitle_READ_ALL]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_JobTitle_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_JobGrade_READ_ALL]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_JobGrade_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_Division_READ_ALL]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_Division_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_Department_READ_ALL]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_Department_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_Center_READ_ALL]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[usp_Center_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[sp_Platfrom_select]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[sp_Platfrom_select]
GO
/****** Object:  StoredProcedure [dbo].[sp_PlatformType_ALL]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[sp_PlatformType_ALL]
GO
/****** Object:  StoredProcedure [dbo].[sp_PagingHelper]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[sp_PagingHelper]
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Update]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[sp_M_Instructor_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_SelectPaging]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[sp_M_Instructor_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Select]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[sp_M_Instructor_Select]
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Insert]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[sp_M_Instructor_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_M_CodeLookUp_Select]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[sp_M_CodeLookUp_Select]
GO
/****** Object:  StoredProcedure [dbo].[sp_CourseLearnMethod_ALL]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[sp_CourseLearnMethod_ALL]
GO
/****** Object:  StoredProcedure [dbo].[sp_Course_select]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP PROCEDURE [dbo].[sp_Course_select]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_Topic]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_IDP_Topic]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_SubTopic]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_IDP_SubTopic]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_ReviewHead]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_IDP_ReviewHead]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_ReviewDetail]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_IDP_ReviewDetail]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_IDP]
GO
/****** Object:  Table [dbo].[LDMS_T_DataLog]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_DataLog]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceStar]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceStar]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Score]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic_Score]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Employee]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic_Employee]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic]
GO
/****** Object:  Table [dbo].[LDMS_T_CoachingReviewHead]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_CoachingReviewHead]
GO
/****** Object:  Table [dbo].[LDMS_T_CoachingReviewDetail]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_CoachingReviewDetail]
GO
/****** Object:  Table [dbo].[LDMS_T_Coaching]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_Coaching]
GO
/****** Object:  Table [dbo].[LDMS_T_ClassRegistration]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_ClassRegistration]
GO
/****** Object:  Table [dbo].[LDMS_T_ClassCertificate]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_ClassCertificate]
GO
/****** Object:  Table [dbo].[LDMS_T_ClassAttendAndResult]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_ClassAttendAndResult]
GO
/****** Object:  Table [dbo].[LDMS_T_Class]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_Class]
GO
/****** Object:  Table [dbo].[LDMS_T_AuditLog]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_T_AuditLog]
GO
/****** Object:  Table [dbo].[LDMS_M_Zipcodes]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Zipcodes]
GO
/****** Object:  Table [dbo].[LDMS_M_VenueRoom]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_VenueRoom]
GO
/****** Object:  Table [dbo].[LDMS_M_UserRole]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_UserRole]
GO
/****** Object:  Table [dbo].[LDMS_M_User]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_User]
GO
/****** Object:  Table [dbo].[LDMS_M_SubPlatformCourse]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_SubPlatformCourse]
GO
/****** Object:  Table [dbo].[LDMS_M_SubPlatform]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_SubPlatform]
GO
/****** Object:  Table [dbo].[LDMS_M_SubModule]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_SubModule]
GO
/****** Object:  Table [dbo].[LDMS_M_Section]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Section]
GO
/****** Object:  Table [dbo].[LDMS_M_RolePermission]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_RolePermission]
GO
/****** Object:  Table [dbo].[LDMS_M_Role]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Role]
GO
/****** Object:  Table [dbo].[LDMS_M_Provinces]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Provinces]
GO
/****** Object:  Table [dbo].[LDMS_M_Prefix]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Prefix]
GO
/****** Object:  Table [dbo].[LDMS_M_PlatformType]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_PlatformType]
GO
/****** Object:  Table [dbo].[LDMS_M_Platform]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Platform]
GO
/****** Object:  Table [dbo].[LDMS_M_Plant]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Plant]
GO
/****** Object:  Table [dbo].[LDMS_M_Page]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Page]
GO
/****** Object:  Table [dbo].[LDMS_M_Module]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Module]
GO
/****** Object:  Table [dbo].[LDMS_M_JobTitle]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_JobTitle]
GO
/****** Object:  Table [dbo].[LDMS_M_JobGrade]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_JobGrade]
GO
/****** Object:  Table [dbo].[LDMS_M_Instructor]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Instructor]
GO
/****** Object:  Table [dbo].[LDMS_M_Division]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Division]
GO
/****** Object:  Table [dbo].[LDMS_M_Districts]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Districts]
GO
/****** Object:  Table [dbo].[LDMS_M_Department]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Department]
GO
/****** Object:  Table [dbo].[LDMS_M_CourseType]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_CourseType]
GO
/****** Object:  Table [dbo].[LDMS_M_CourseLearnMethod]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_CourseLearnMethod]
GO
/****** Object:  Table [dbo].[LDMS_M_Course]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Course]
GO
/****** Object:  Table [dbo].[LDMS_M_CodeLookUp]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_CodeLookUp]
GO
/****** Object:  Table [dbo].[LDMS_M_Center]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Center]
GO
/****** Object:  Table [dbo].[LDMS_M_ApproveFlow]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_ApproveFlow]
GO
/****** Object:  Table [dbo].[LDMS_M_Amphurs]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Amphurs]
GO
/****** Object:  UserDefinedFunction [dbo].[SplitInts]    Script Date: 4/12/2020 4:46:14 PM ******/
DROP FUNCTION [dbo].[SplitInts]
GO
/****** Object:  UserDefinedFunction [dbo].[SplitInts]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Amphurs]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Amphurs](
	[AMPHUR_ID] [int] NOT NULL,
	[AMPHUR_CODE] [varchar](4) NOT NULL,
	[AMPHUR_NAME] [varchar](150) NOT NULL,
	[AMPHUR_NAME_ENG] [varchar](150) NOT NULL,
	[GEO_ID] [int] NOT NULL,
	[PROVINCE_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AMPHUR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_ApproveFlow]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Center]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_CodeLookUp]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Course]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Course](
	[ID] [int] NOT NULL,
	[CourseID] [nvarchar](50) NOT NULL,
	[CourseName] [nvarchar](50) NULL,
	[ID_LearnMethod] [int] NOT NULL,
	[ID_CourseType] [int] NOT NULL,
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
	[ID_DepartmentCreate] [int] NULL,
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
/****** Object:  Table [dbo].[LDMS_M_CourseLearnMethod]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_CourseLearnMethod](
	[ID] [int] NOT NULL,
	[Course_LearnMethodName_EN] [nvarchar](50) NULL,
	[Course_LearnMethodName_TH] [nvarchar](50) NULL,
	[IsInterface] [int] NOT NULL,
	[Url] [nvarchar](200) NULL,
	[Description] [nvarchar](100) NULL,
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
/****** Object:  Table [dbo].[LDMS_M_CourseType]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_CourseType](
	[ID] [int] NOT NULL,
	[CourseTypeName_EN] [nvarchar](50) NULL,
	[CourseTypeName_TH] [nvarchar](50) NULL,
	[ID_PlatformType] [int] NULL,
	[PrefixFormat] [nvarchar](50) NOT NULL,
	[PrefixCode] [nvarchar](10) NOT NULL,
	[SubPrefixCode] [nvarchar](10) NULL,
	[RunningLength] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_CourseType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Department]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Districts]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Districts](
	[DISTRICT_ID] [int] NOT NULL,
	[DISTRICT_CODE] [varchar](6) NULL,
	[DISTRICT_NAME] [varchar](150) NULL,
	[DISTRICT_NAME_ENG] [varchar](150) NULL,
	[AMPHUR_ID] [int] NULL,
	[PROVINCE_ID] [int] NULL,
	[GEO_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DISTRICT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Division]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Instructor]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Instructor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Instructor_ID] [nvarchar](10) NOT NULL,
	[Instructor_Name] [nvarchar](100) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[ID_Employee] [int] NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[Organization] [nvarchar](250) NULL,
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
/****** Object:  Table [dbo].[LDMS_M_JobGrade]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_JobTitle]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Module]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Page]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Page](
	[ID_Page] [int] NOT NULL,
	[PageCode] [nvarchar](10) NOT NULL,
	[ID_SubModule] [int] NULL,
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
	[ID_Page] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Plant]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Platform]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_PlatformType]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Prefix]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Provinces]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Provinces](
	[PROVINCE_ID] [int] NOT NULL,
	[PROVINCE_CODE] [varchar](2) NULL,
	[PROVINCE_NAME] [varchar](150) NULL,
	[PROVINCE_NAME_ENG] [varchar](150) NULL,
	[GEO_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PROVINCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_Role]    Script Date: 4/12/2020 4:46:14 PM ******/
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
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_RolePermission]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_RolePermission](
	[ID] [int] NOT NULL,
	[ID_Role] [int] NOT NULL,
	[ID_SubModule] [int] NOT NULL,
	[PermissionType] [int] NOT NULL,
	[RolePermissionDescription] [nvarchar](250) NULL,
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
/****** Object:  Table [dbo].[LDMS_M_Section]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_SubModule]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_SubModule](
	[ID] [int] NOT NULL,
	[SubModuleID] [nvarchar](50) NULL,
	[ID_Module] [int] NOT NULL,
	[SubModuleName_EN] [nvarchar](50) NULL,
	[SubModuleName_TH] [nvarchar](50) NULL,
	[Sequence] [int] NULL,
	[Parent] [int] NULL,
	[URL] [nvarchar](100) NULL,
	[Icon] [nvarchar](100) NULL,
	[Description] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [int] NOT NULL,
 CONSTRAINT [PK_LDMS_M_SubModule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_SubPlatform]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_SubPlatformCourse]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_User]    Script Date: 4/12/2020 4:46:14 PM ******/
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
	[JoinDate] [datetime] NULL,
	[OutDate] [datetime] NULL,
	[DateOfBirth] [datetime] NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[ProfilePath] [nvarchar](250) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_User] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_UserRole]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_UserRole](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [nvarchar](50) NULL,
	[ID_Role] [int] NOT NULL,
	[Password] [nvarchar](1024) NULL,
	[IsInstructor] [int] NOT NULL,
	[IsSectionHead] [int] NOT NULL,
	[ID_Section] [int] NULL,
	[Remark] [nvarchar](200) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [tinyint] NOT NULL,
	[PasswordSalt] [nvarchar](1024) NULL,
	[IsForceChangePass] [tinyint] NOT NULL,
 CONSTRAINT [PK_LDMS_M_UserRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_M_VenueRoom]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Zipcodes]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_M_Zipcodes](
	[ID] [int] NOT NULL,
	[DISTRICT_CODE] [varchar](6) NULL,
	[ZIPCODE] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_AuditLog]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_AuditLog](
	[AuditLogID] [int] NOT NULL,
	[ip_address] [nvarchar](50) NULL,
	[LogDetail] [text] NULL,
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
/****** Object:  Table [dbo].[LDMS_T_Class]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_ClassAttendAndResult]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_ClassCertificate]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_ClassRegistration]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_Coaching]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_CoachingReviewDetail]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_CoachingReviewHead]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Employee]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Score]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_CompetenceStar]    Script Date: 4/12/2020 4:46:14 PM ******/
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
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceStar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_DataLog]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_DataLog](
	[DataLogID] [int] NOT NULL,
	[ip_address] [nvarchar](50) NULL,
	[LogDetail] [text] NULL,
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
/****** Object:  Table [dbo].[LDMS_T_IDP]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_IDP_ReviewDetail]    Script Date: 4/12/2020 4:46:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LDMS_T_IDP_ReviewDetail](
	[ID] [int] NOT NULL,
	[ID_IDP_ReviewHead] [int] NOT NULL,
	[PostDetail] [text] NOT NULL,
	[AttachFilePath] [nvarchar](100) NULL,
	[PostDate] [datetime] NOT NULL,
	[ID_PostByEmployee] [int] NOT NULL,
 CONSTRAINT [PK_LDMS_T_IDP_ReviewDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_ReviewHead]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_IDP_SubTopic]    Script Date: 4/12/2020 4:46:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_IDP_Topic]    Script Date: 4/12/2020 4:46:14 PM ******/
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
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'HR-S003-03', N'Course Name3', 1, 1, N'ทดสอบ', N'ทดสอบ 3', N'ทดสอบ 3', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, N'HR-S004-01', N'Course Name4', 1, 1, N'ทดสอบ', N'ทดสอบ 4', N'ทดสอบ 4', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (5, N'HR-S005-02', N'Course Name5', 1, 1, N'ทดอสอบ', N'ทดสอบ 5', N'ทดสอบ 5', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (6, N'HR-S006-03', N'Course Name6', 1, 1, N'ทดสอบ', N'ทดสอบ 6', N'ทดสอบ 6', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (7, N'HR-S007-01', N'Course Name7', 1, 1, N'ทดสอบ', N'ทดสอบ 7', N'ทดสอบ 7', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (8, N'HR-S008-02', N'Course Name8', 1, 1, N'ทดอสอบ', N'ทดสอบ 8', N'ทดสอบ 8', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (9, N'HR-S009-03', N'Course Name9', 1, 1, N'ทดสอบ', N'ทดสอบ 9', N'ทดสอบ 9', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (10, N'HR-S010-01', N'Course Name10', 1, 1, N'ทดสอบ', N'ทดสอบ 10', N'ทดสอบ 10', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (11, N'HR-S011-02', N'Course Name11', 1, 1, N'ทดอสอบ', N'ทดสอบ 11', N'ทดสอบ 11', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (12, N'HR-S012-03', N'Course Name12', 1, 1, N'ทดสอบ', N'ทดสอบ 12', N'ทดสอบ 12', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (13, N'HR-S013-01', N'Course Name13', 1, 1, N'ทดสอบ', N'ทดสอบ 13', N'ทดสอบ 13', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (14, N'HR-S014-02', N'Course Name14', 1, 1, N'ทดอสอบ', N'ทดสอบ 14', N'ทดสอบ 14', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Course] ([ID], [CourseID], [CourseName], [ID_LearnMethod], [ID_CourseType], [Objective], [Description], [OutLine], [IsRefreshment], [RefreshmentPeriod_Day], [TargetEmployeeID], [ID_PlantTarget], [ID_CenterTarget], [ID_DivisionTarget], [ID_DepartmentTarget], [ID_SectionTarget], [JobGradeTargetID], [JobTitleTargetID], [ID_DepartmentCreate], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (15, N'HR-S015-03', N'Course Name15', 1, 1, N'ทดสอบ', N'ทดสอบ 15', N'ทดสอบ 15', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1)
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
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (49, 6, 6, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (50, 6, 7, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (51, 6, 8, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (52, 6, 9, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (53, 6, 10, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (54, 6, 11, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (55, 6, 12, 300, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (56, 6, 13, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (57, 6, 14, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (58, 6, 15, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (59, 6, 16, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (60, 6, 17, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (61, 6, 18, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (62, 6, 19, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_RolePermission] ([ID], [ID_Role], [ID_SubModule], [PermissionType], [RolePermissionDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (63, 6, 20, 0, N'0 = view only - User Under department, 100 = view only - User Global, 200 = Edit - User Under deparment , 300 = Edit - User Global', N'Admin', CAST(N'2020-04-05T03:52:41.810' AS DateTime), NULL, NULL, 1)
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
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'SOD', 3, N'Training Section', N'Training Section', N'Training Section', N'System', NULL, NULL, NULL, 1)
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
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (14, N'MD03-02', 3, N'Platform Management', NULL, 2, NULL, N'Platform/Index', NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (15, N'MD03-03', 3, N'Course Information', NULL, 3, NULL, N'Courses/Index', NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (16, N'MD03-04', 3, N'Instructor Inventory', NULL, 4, NULL, N'Instructor/Index', NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (17, N'MD03-05', 3, N'Schedule', NULL, 5, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (18, N'MD03-06', 3, N'I-Manage Report', NULL, 6, NULL, NULL, NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (19, N'MD03-07', 3, N'I-Manage LDMS', NULL, 7, NULL, N'Account/UserManagement', NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_SubModule] ([ID], [SubModuleID], [ID_Module], [SubModuleName_EN], [SubModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (20, N'MD03-08', 3, N'I-Manage Section', NULL, 8, NULL, N'Organization/Section', NULL, NULL, N'Admin', CAST(N'2020-04-05T01:26:30.687' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'ET00001', 0, NULL, NULL, N'MALE', N'test', N'dev', N'thai', 1, 1, 2, 1, 3, 3, CAST(N'2020-04-11T07:03:40.980' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'STT00001', NULL, N'STT00001', CAST(N'2020-04-11T07:05:14.847' AS DateTime), 0)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'ST0003', 0, NULL, NULL, N'MALE', N'asa', N'asa', NULL, 1, 1, 2, 1, 3, 3, CAST(N'2020-04-11T01:28:15.050' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'STT00001', NULL, N'STT00001', CAST(N'2020-04-11T02:19:52.187' AS DateTime), 0)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'ST0004', 0, NULL, NULL, N'MALE', N'INS', N'INS', NULL, 1, 1, 2, 1, 3, 3, CAST(N'2020-04-11T01:34:35.100' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'STT00001', NULL, N'STT00001', CAST(N'2020-04-11T02:20:15.030' AS DateTime), 0)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'ST002', 0, NULL, N'XXXX-XXXX-XXX-XX', N'MALE', N'Nancy', N'Rogers', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, N'nancy@bakersman.com', N'System', CAST(N'2020-04-02T06:28:04.810' AS DateTime), N'STT00001', CAST(N'2020-04-11T02:21:01.553' AS DateTime), 0)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'STD001', 0, NULL, NULL, N'MALE', N'นาย วีระ', N'ภาระเยอะ', N'Thai', 4, 2, 2, 1, 3, 3, CAST(N'2020-04-11T09:01:18.367' AS DateTime), NULL, NULL, NULL, N'aaa@gmail.com', NULL, N'STT00001', NULL, NULL, NULL, 1)
INSERT [dbo].[LDMS_M_User] ([EmployeeID], [IsAD], [DriverLicenseID], [IDCardNumber], [Gender], [Name], [Surname], [Nationality], [ID_JobGrade], [ID_JobTitle], [ID_Plant], [ID_Center], [ID_Division], [ID_Department], [JoinDate], [OutDate], [DateOfBirth], [PhoneNumber], [Email], [ProfilePath], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (N'STT00001', 0, NULL, N'XXXX-XXXX-XXX-XX', N'MALE', N'Nancy', N'Rogers', N'Thai', NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, N'nancy@bakersman.com', N'System', CAST(N'2020-04-02T06:28:04.810' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[LDMS_M_UserRole] ON 

INSERT [dbo].[LDMS_M_UserRole] ([ID], [EmployeeID], [ID_Role], [Password], [IsInstructor], [IsSectionHead], [ID_Section], [Remark], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive], [PasswordSalt], [IsForceChangePass]) VALUES (1, N'STT00001', 7, N'rQs8kl/WhNIouVUSK6YvXjzeXKA=', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'H/O9luM+jQyw86vscWcpRA==', 1)
INSERT [dbo].[LDMS_M_UserRole] ([ID], [EmployeeID], [ID_Role], [Password], [IsInstructor], [IsSectionHead], [ID_Section], [Remark], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive], [PasswordSalt], [IsForceChangePass]) VALUES (2, N'ST002', 7, N'rQs8kl/WhNIouVUSK6YvXjzeXKA=', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'H/O9luM+jQyw86vscWcpRA==', 1)
INSERT [dbo].[LDMS_M_UserRole] ([ID], [EmployeeID], [ID_Role], [Password], [IsInstructor], [IsSectionHead], [ID_Section], [Remark], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive], [PasswordSalt], [IsForceChangePass]) VALUES (5, N'ST0003', 0, N'zzIn46kxZZ5l5utHJcRlORM3W8I=', 1, 1, 1, N'sss', N'STT00001', CAST(N'2020-04-11T01:28:15.050' AS DateTime), NULL, NULL, 1, N'8kysnwOeKbOoYpS4W/8DkSD1gRfuGqQx', 0)
INSERT [dbo].[LDMS_M_UserRole] ([ID], [EmployeeID], [ID_Role], [Password], [IsInstructor], [IsSectionHead], [ID_Section], [Remark], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive], [PasswordSalt], [IsForceChangePass]) VALUES (6, N'ST0004', 0, N'7BHZGePQpATNXc2dttAj0pw1ou4=', 1, 1, 1, NULL, N'STT00001', CAST(N'2020-04-11T01:34:35.100' AS DateTime), NULL, NULL, 1, N'nkfgXmsaB6jY5zGmc2HBGpFxYJsY7mgR', 0)
INSERT [dbo].[LDMS_M_UserRole] ([ID], [EmployeeID], [ID_Role], [Password], [IsInstructor], [IsSectionHead], [ID_Section], [Remark], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive], [PasswordSalt], [IsForceChangePass]) VALUES (7, N'ET00001', 0, N'nFqz7s6DdQRmqaH41wYoqHZDF18=', 1, 1, 1, NULL, N'STT00001', CAST(N'2020-04-11T07:03:40.980' AS DateTime), NULL, NULL, 1, N'JSCa4FOx1lst2aAloHFv2LMKtyrHZ5WM', 0)
INSERT [dbo].[LDMS_M_UserRole] ([ID], [EmployeeID], [ID_Role], [Password], [IsInstructor], [IsSectionHead], [ID_Section], [Remark], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive], [PasswordSalt], [IsForceChangePass]) VALUES (8, N'STD001', 0, N'1RweuER1l7WRqQt4lssJrdzx8Zk=', 1, 1, 1, NULL, N'STT00001', CAST(N'2020-04-11T09:01:18.367' AS DateTime), NULL, NULL, 1, N'lMcb+zS+gBk5zg6tD8+RJY5Zdm7gmy+K', 0)
SET IDENTITY_INSERT [dbo].[LDMS_M_UserRole] OFF
/****** Object:  StoredProcedure [dbo].[sp_Course_select]    Script Date: 4/12/2020 4:46:27 PM ******/
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
	WHERE c.IsActive = @paramCourseStatus

	AND  c.ID_LearnMethod = @paramLearnMethod OR @paramLearnMethod IS NOT NULL

	AND (1 =  CASE WHEN @paramCourseId IS NOT NULL AND @paramCourseId <> '' AND @paramCourseId <> ' ' THEN
				CASE WHEN UPPER(c.CourseID) like '%'+ UPPER(@paramCourseId) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)
    AND (1 =  CASE WHEN @paramCourseName IS NOT NULL AND @paramCourseName <> '' AND @paramCourseName <> ' ' THEN
				CASE WHEN UPPER(c.CourseName) like '%'+ UPPER(@paramCourseName) +'%' THEN 1 ELSE 0 END
			  ELSE 1 END)

	--AND ( @paramLearnMethod IS NOT NULL AND c.ID_LearnMethod = @paramLearnMethod )
			  
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CourseLearnMethod_ALL]    Script Date: 4/12/2020 4:46:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_M_CodeLookUp_Select]    Script Date: 4/12/2020 4:46:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Insert]    Script Date: 4/12/2020 4:46:27 PM ******/
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
    @Organization nvarchar(250),
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

	SELECT @@IDENTITY [ID]

END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Select]    Script Date: 4/12/2020 4:46:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_SelectPaging]    Script Date: 4/12/2020 4:46:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
					  ,c.[ID_Course]
					  ,u.[CourseName]
				FROM LDMS_M_Instructor i
					LEFT JOIN [dbo].[LDMS_M_CodeLookUp] l ON l.[Code] = i.[Type]
					LEFT JOIN [dbo].[LDMS_T_Class] c ON c.[ID_Instructor] = i.[ID]
					LEFT JOIN [dbo].[LDMS_M_Course] u ON u.[ID] = c.[ID_Course] ';

	 exec dbo.sp_PagingHelper @PageNum,@PageSize,@SortField,@sql,@CountColumn

	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Update]    Script Date: 4/12/2020 4:46:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_PagingHelper]    Script Date: 4/12/2020 4:46:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_PlatformType_ALL]    Script Date: 4/12/2020 4:46:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Platfrom_select]    Script Date: 4/12/2020 4:46:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Center_READ_ALL]    Script Date: 4/12/2020 4:46:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Department_READ_ALL]    Script Date: 4/12/2020 4:46:27 PM ******/
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
	dep.ID as ID_Department,dep.DepartmentID,dep.DepartmentName_EN,dep.DepartmentName_TH,dep.Description ,dep.ID_Division
	FROM LDMS_M_Department dep WITH (NOLOCK) WHERE dep.IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Division_READ_ALL]    Script Date: 4/12/2020 4:46:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_JobGrade_READ_ALL]    Script Date: 4/12/2020 4:46:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_JobTitle_READ_ALL]    Script Date: 4/12/2020 4:46:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Role_READ_ALL]    Script Date: 4/12/2020 4:46:27 PM ******/
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
	SELECT ROW_NUMBER() OVER(ORDER BY ID ASC)  as RowIndex,ID AS RoleId,ISNULL(RoleName_EN,'') AS RoleName_EN,ISNULL(RoleName_TH,'') AS RoleName_TH,ISNULL(RoleDescription,'') AS RoleDescription  FROM LDMS_M_Role WITH (NOLOCK)  WHERE IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_RoleMenu_READ_By_Role]    Script Date: 4/12/2020 4:46:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Section_READ_ALL]    Script Date: 4/12/2020 4:46:27 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_User_ChangePassword]    Script Date: 4/12/2020 4:46:27 PM ******/
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

	IF EXISTS (SELECT * FROM [dbo].[LDMS_M_UserRole] WHERE [EmployeeID]  = @EmployeeId AND [Password] = @OldPassword)
		BEGIN

		-- Insert statements for procedure here
		UPDATE	[dbo].[LDMS_M_UserRole]
			SET 
				[Password] = @Password   
			   ,[IsActive] = 1
			   ,[PasswordSalt] = @PasswordSalt
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
/****** Object:  StoredProcedure [dbo].[usp_User_Create]    Script Date: 4/12/2020 4:46:27 PM ******/
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
GO
/****** Object:  StoredProcedure [dbo].[usp_User_Delete]    Script Date: 4/12/2020 4:46:27 PM ******/
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
	SET IsActive = 0 ,UpdateBy = @paramUpdateBy,UpdateDate =GETDATE()
	WHERE EmployeeID = @paramEmployeeId AND IsAD = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_User_READ_ALL]    Script Date: 4/12/2020 4:46:27 PM ******/
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
	usrRole.ID as UserRoleId,usrRole.ID_Role,usrRole.IsInstructor,usrRole.Password,usrRole.Remark,usrRole.ID_Section,usrRole.passwordSalt,
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
/****** Object:  StoredProcedure [dbo].[usp_User_READ_BY_EmployeeId]    Script Date: 4/12/2020 4:46:27 PM ******/
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
	muser.Name,muser.Nationality,muser.OutDate,muser.PhoneNumber,muser.Surname,




	usrRole.ID as UserRoleId,usrRole.ID_Role,usrRole.IsInstructor,usrRole.Password,usrRole.Remark,usrRole.ID_Section,usrRole.passwordSalt,
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
/****** Object:  StoredProcedure [dbo].[usp_User_ResetPassword]    Script Date: 4/12/2020 4:46:27 PM ******/
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

	IF EXISTS (SELECT * FROM [dbo].[LDMS_M_UserRole] WHERE [EmployeeID]  = @EmployeeId)
		BEGIN

		-- Insert statements for procedure here
		UPDATE	[dbo].[LDMS_M_UserRole]
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
/****** Object:  StoredProcedure [dbo].[usp_User_Update]    Script Date: 4/12/2020 4:46:27 PM ******/
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
	@UpdateBy  nvarchar(50)  =null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @PlantId INT;
	DECLARE @JoinDate DATETIME= GETDATE();
	SELECT @PlantId = ID_Plant FROM LDMS_M_Center  WHERE ID = @CenterId;
	IF NOT EXISTS (SELECT * FROM LDMS_M_User WHERE EmployeeID = @EmployeeId)
		RAISERROR (101,-1,-1, 'An Employee ID doen''t exists');  

BEGIN TRANSACTION;
BEGIN TRY

	UPDATE  [dbo].[LDMS_M_User]
	SET 
		[Gender] = @Gender,
		[Name] = @EmployeeName,
		[Surname] = @EmployeeSurName,
		[Nationality] =@Nationality,
		[ID_JobGrade] = @JobGradeId,
		[ID_JobTitle] =@JobTitleId,
		[ID_Plant] = @PlantId,
		[ID_Center]=@CenterId,
		[ID_Division]=@DivisionId,
		[ID_Department] = @DepartmentId,
		[PhoneNumber] = @PhoneNumber,
		[Email]=@Email,
		[UpdateBy] = @UpdateBy,
		[UpdateDate] =GETDATE(),
		[IsActive] = 1
	WHERE [EmployeeID]  = @EmployeeId; 
	
	UPDATE	[dbo].[LDMS_M_UserRole]
		SET [ID_Role] = @RoleId
           ,[Password] = @Password
           ,[IsInstructor] = @IsInstructer
           ,[IsSectionHead] =@IsSectionHead
           ,[ID_Section] = @SectionId
           ,[Remark] = @Remark 
           ,[IsActive] = 1
           ,[PasswordSalt] = @PasswordSalt
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
/****** Object:  StoredProcedure [dbo].[usp_UserRole_READ_BY_EmployeeId]    Script Date: 4/12/2020 4:46:27 PM ******/
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
