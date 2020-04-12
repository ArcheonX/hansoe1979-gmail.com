USE [veraplus_ldms]
GO
/****** Object:  StoredProcedure [dbo].[usp_UserRole_READ_BY_EmployeeId]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_UserRole_READ_BY_EmployeeId]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_Update]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_User_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_ResetPassword]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_User_ResetPassword]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_READ_BY_EmployeeId]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_User_READ_BY_EmployeeId]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_READ_ALL]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_User_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_Delete]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_User_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_Create]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_User_Create]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_ChangePassword]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_User_ChangePassword]
GO
/****** Object:  StoredProcedure [dbo].[usp_Section_READ_ALL]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_Section_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_RoleMenu_READ_By_Role]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_RoleMenu_READ_By_Role]
GO
/****** Object:  StoredProcedure [dbo].[usp_Role_READ_ALL]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_Role_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_JobTitle_READ_ALL]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_JobTitle_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_JobGrade_READ_ALL]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_JobGrade_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_Division_READ_ALL]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_Division_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_Department_READ_ALL]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_Department_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[usp_Center_READ_ALL]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[usp_Center_READ_ALL]
GO
/****** Object:  StoredProcedure [dbo].[sp_Platfrom_select]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[sp_Platfrom_select]
GO
/****** Object:  StoredProcedure [dbo].[sp_PlatformType_ALL]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[sp_PlatformType_ALL]
GO
/****** Object:  StoredProcedure [dbo].[sp_PagingHelper]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[sp_PagingHelper]
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Update]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[sp_M_Instructor_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_SelectPaging]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[sp_M_Instructor_SelectPaging]
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Select]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[sp_M_Instructor_Select]
GO
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Insert]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[sp_M_Instructor_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_M_CodeLookUp_Select]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[sp_M_CodeLookUp_Select]
GO
/****** Object:  StoredProcedure [dbo].[sp_CourseLearnMethod_ALL]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[sp_CourseLearnMethod_ALL]
GO
/****** Object:  StoredProcedure [dbo].[sp_Course_select]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP PROCEDURE [dbo].[sp_Course_select]
GO
/****** Object:  Table [dbo].[z_tempTable]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[z_tempTable]
GO
/****** Object:  Table [dbo].[z_tempOrgChart]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[z_tempOrgChart]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_Topic]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_IDP_Topic]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_SubTopic]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_IDP_SubTopic]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_ReviewHead]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_IDP_ReviewHead]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP_ReviewDetail]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_IDP_ReviewDetail]
GO
/****** Object:  Table [dbo].[LDMS_T_IDP]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_IDP]
GO
/****** Object:  Table [dbo].[LDMS_T_DataLog]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_DataLog]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceStar]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceStar]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Score]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic_Score]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Employee]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic_Employee]
GO
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic]
GO
/****** Object:  Table [dbo].[LDMS_T_CoachingReviewHead]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_CoachingReviewHead]
GO
/****** Object:  Table [dbo].[LDMS_T_CoachingReviewDetail]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_CoachingReviewDetail]
GO
/****** Object:  Table [dbo].[LDMS_T_Coaching]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_Coaching]
GO
/****** Object:  Table [dbo].[LDMS_T_ClassRegistration]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_ClassRegistration]
GO
/****** Object:  Table [dbo].[LDMS_T_ClassCertificate]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_ClassCertificate]
GO
/****** Object:  Table [dbo].[LDMS_T_ClassAttendAndResult]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_ClassAttendAndResult]
GO
/****** Object:  Table [dbo].[LDMS_T_Class]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_Class]
GO
/****** Object:  Table [dbo].[LDMS_T_AuditLog]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_T_AuditLog]
GO
/****** Object:  Table [dbo].[LDMS_M_Zipcodes]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Zipcodes]
GO
/****** Object:  Table [dbo].[LDMS_M_VenueRoom]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_VenueRoom]
GO
/****** Object:  Table [dbo].[LDMS_M_UserRole]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_UserRole]
GO
/****** Object:  Table [dbo].[LDMS_M_User]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_User]
GO
/****** Object:  Table [dbo].[LDMS_M_SubPlatformCourse]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_SubPlatformCourse]
GO
/****** Object:  Table [dbo].[LDMS_M_SubPlatform]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_SubPlatform]
GO
/****** Object:  Table [dbo].[LDMS_M_SubModule]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_SubModule]
GO
/****** Object:  Table [dbo].[LDMS_M_Section]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Section]
GO
/****** Object:  Table [dbo].[LDMS_M_RolePermission]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_RolePermission]
GO
/****** Object:  Table [dbo].[LDMS_M_Role]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Role]
GO
/****** Object:  Table [dbo].[LDMS_M_Provinces]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Provinces]
GO
/****** Object:  Table [dbo].[LDMS_M_Prefix]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Prefix]
GO
/****** Object:  Table [dbo].[LDMS_M_PlatformType]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_PlatformType]
GO
/****** Object:  Table [dbo].[LDMS_M_Platform]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Platform]
GO
/****** Object:  Table [dbo].[LDMS_M_Plant]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Plant]
GO
/****** Object:  Table [dbo].[LDMS_M_Page]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Page]
GO
/****** Object:  Table [dbo].[LDMS_M_Module]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Module]
GO
/****** Object:  Table [dbo].[LDMS_M_JobTitle]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_JobTitle]
GO
/****** Object:  Table [dbo].[LDMS_M_JobGrade]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_JobGrade]
GO
/****** Object:  Table [dbo].[LDMS_M_Instructor]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Instructor]
GO
/****** Object:  Table [dbo].[LDMS_M_Division]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Division]
GO
/****** Object:  Table [dbo].[LDMS_M_Districts]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Districts]
GO
/****** Object:  Table [dbo].[LDMS_M_Department]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Department]
GO
/****** Object:  Table [dbo].[LDMS_M_CourseType]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_CourseType]
GO
/****** Object:  Table [dbo].[LDMS_M_CourseLearnMethod]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_CourseLearnMethod]
GO
/****** Object:  Table [dbo].[LDMS_M_Course]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Course]
GO
/****** Object:  Table [dbo].[LDMS_M_CodeLookUp]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_CodeLookUp]
GO
/****** Object:  Table [dbo].[LDMS_M_Center]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Center]
GO
/****** Object:  Table [dbo].[LDMS_M_ApproveFlow]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_ApproveFlow]
GO
/****** Object:  Table [dbo].[LDMS_M_Amphurs]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP TABLE [dbo].[LDMS_M_Amphurs]
GO
/****** Object:  UserDefinedFunction [dbo].[SplitInts]    Script Date: 4/12/2020 9:49:14 PM ******/
DROP FUNCTION [dbo].[SplitInts]
GO
/****** Object:  UserDefinedFunction [dbo].[SplitInts]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Amphurs]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_ApproveFlow]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Center]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_CodeLookUp]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Course]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_CourseLearnMethod]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_CourseType]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Department]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Districts]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Division]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Instructor]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_JobGrade]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_JobTitle]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Module]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Page]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Plant]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Platform]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_PlatformType]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Prefix]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Provinces]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Role]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_RolePermission]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Section]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_SubModule]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_SubPlatform]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_SubPlatformCourse]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_User]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_UserRole]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_VenueRoom]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_M_Zipcodes]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_AuditLog]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_Class]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_ClassAttendAndResult]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_ClassCertificate]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_ClassRegistration]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_Coaching]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_CoachingReviewDetail]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_CoachingReviewHead]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Employee]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Score]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_CompetenceStar]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_DataLog]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_IDP]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_IDP_ReviewDetail]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_IDP_ReviewHead]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_IDP_SubTopic]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[LDMS_T_IDP_Topic]    Script Date: 4/12/2020 9:49:14 PM ******/
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
/****** Object:  Table [dbo].[z_tempOrgChart]    Script Date: 4/12/2020 9:49:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[z_tempOrgChart](
	[ID_plant] [int] NULL,
	[PlantCode] [nvarchar](50) NULL,
	[PlantName] [nvarchar](50) NULL,
	[ID_Center] [int] NULL,
	[CenterCode] [nvarchar](50) NULL,
	[CenterName] [nvarchar](50) NULL,
	[ID_Division] [int] NULL,
	[DivisionCode] [nvarchar](50) NULL,
	[DivisionName] [nvarchar](50) NULL,
	[ID_Department] [int] NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[DepartmentName] [nvarchar](50) NULL,
	[ID_Section] [int] NULL,
	[SectionCode] [nvarchar](50) NULL,
	[SectionName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[z_tempTable]    Script Date: 4/12/2020 9:49:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[z_tempTable](
	[ID] [int] NULL,
	[code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL
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
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'001', 2, N'Automotive BIZ. Center', N'Automotive BIZ. Center', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'002', 2, N'Corp. Human Management Center', N'Corp. Human Management Center', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'003', 1, N'Corp.Human Management Center', N'Corp.Human Management Center', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, N'004', 1, N'Corp.Planning & Control Center', N'Corp.Planning & Control Center', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (5, N'005', 2, N'Corporate Material Management Center', N'Corporate Material Management Center', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (6, N'006', 2, N'Corporate Planning & Control Center', N'Corporate Planning & Control Center', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (7, N'007', 2, N'CWS-Asia Pacific Office', N'CWS-Asia Pacific Office', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (8, N'008', 2, N'DI SET BIZ. Center', N'DI SET BIZ. Center', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (9, N'009', 1, N'Factory Manager Bangkadi', N'Factory Manager Bangkadi', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (10, N'010', 2, N'Factory Manager Chonburi', N'Factory Manager Chonburi', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (11, N'011', 2, N'Lens BIZ. Center', N'Lens BIZ. Center', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (12, N'012', 2, N'MD', N'MD', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (13, N'013', 1, N'MOBILE BIZ CENTER', N'MOBILE BIZ CENTER', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (14, N'014', 2, N'PARTS QUALITY ENGINEERING I', N'PARTS QUALITY ENGINEERING I', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (15, N'015', 2, N'PRODUCTION INNOVATION I', N'PRODUCTION INNOVATION I', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (16, N'016', 2, N'QUALITY ASSURANCE I', N'QUALITY ASSURANCE I', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (17, N'017', 1, N'QUALITY ASSURANCE II', N'QUALITY ASSURANCE II', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Center] ([ID], [CenterID], [ID_Plant], [CenterName_EN], [CenterName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (18, N'018', 2, N'SAFETY, OCCUPATIONAL HEALTH & ENVIRONMENT OFFICE', N'SAFETY, OCCUPATIONAL HEALTH & ENVIRONMENT OFFICE', NULL, N'Admin', CAST(N'2020-04-12T04:47:42.013' AS DateTime), NULL, NULL, 1)
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
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'001', 1, N'AC ENGINEERING ', N'AC ENGINEERING ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'002', 15, N'AC LENS PRODUCTION', N'AC LENS PRODUCTION', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'003', 35, N'AC PRODUCT ASSURANCE ', N'AC PRODUCT ASSURANCE ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, N'004', 18, N'ALPHA PRODUCTION I', N'ALPHA PRODUCTION I', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (5, N'005', 18, N'ALPHA PRODUCTION II  ', N'ALPHA PRODUCTION II  ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (6, N'006', 33, N'ATM PLAN', N'ATM PLAN', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (7, N'007', 1, N'AU ENGINEERING ', N'AU ENGINEERING ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (8, N'008', 35, N'AUDIO PRODUCT ASSURANCE ', N'AUDIO PRODUCT ASSURANCE ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (9, N'009', 1, N'AUDIO PRODUCTION ', N'AUDIO PRODUCTION ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (10, N'010', 1, N'AUTOMOTIVE AUTO MOUNT ', N'AUTOMOTIVE AUTO MOUNT ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (11, N'011', 2, N'Automotive BIZ. Center', N'Automotive BIZ. Center', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (12, N'012', 1, N'AUTOMOTIVE CAMERA PRODUCTION ', N'AUTOMOTIVE CAMERA PRODUCTION ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (13, N'013', 3, N'AUTOMOTIVE ENGINEERING', N'AUTOMOTIVE ENGINEERING', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (14, N'014', 1, N'AUTOMOTIVE PRODUCTION ', N'AUTOMOTIVE PRODUCTION ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (15, N'015', 1, N'AUTOMOTIVE PRODUCTION ENGINEERING ', N'AUTOMOTIVE PRODUCTION ENGINEERING ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (16, N'016', 19, N'BUSINESS APPLICATION ', N'BUSINESS APPLICATION ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (17, N'017', 4, N'BUSINESS CONTROL I ', N'BUSINESS CONTROL I ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (19, N'019', 4, N'BUSINESS PLANNING I', N'BUSINESS PLANNING I', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (20, N'020', 15, N'CHANGEABLE LENS PRODUCTION I ', N'CHANGEABLE LENS PRODUCTION I ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (21, N'021', 22, N'CHANGEABLE LENS PRODUCTION II ', N'CHANGEABLE LENS PRODUCTION II ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (22, N'022', 5, N'Corp. Human Management Center', N'Corp. Human Management Center', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (23, N'023', 6, N'Corporate Material Management Center', N'Corporate Material Management Center', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (24, N'024', 7, N'Corporate Planning & Control Center', N'Corporate Planning & Control Center', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (25, N'025', 8, N'CORPORATE PLANNING & CONTROL CENTER ', N'CORPORATE PLANNING & CONTROL CENTER ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (26, N'026', 29, N'CU PRODUCTION', N'CU PRODUCTION', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (27, N'027', 36, N'CUSTOMER & QUALITY MANAGEMENT ', N'CUSTOMER & QUALITY MANAGEMENT ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (28, N'028', 9, N'CWS-Asia Pacific Office', N'CWS-Asia Pacific Office', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (29, N'029', 10, N'DI ENGINEERING', N'DI ENGINEERING', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (30, N'030', 33, N'DI PLANNING ', N'DI PLANNING ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (31, N'031', 35, N'DI PRODUCT ASSURANCE ', N'DI PRODUCT ASSURANCE ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (32, N'032', 11, N'DI SET BIZ. Center', N'DI SET BIZ. Center', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (33, N'033', 3, N'ELECTRICAL DESIGN ', N'ELECTRICAL DESIGN ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (34, N'034', 27, N'ELECTRICAL ENGINEERING ', N'ELECTRICAL ENGINEERING ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (35, N'035', 34, N'ELECTRICAL PURCHASING ', N'ELECTRICAL PURCHASING ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (36, N'036', 12, N'Factory Manager Bangkadi', N'Factory Manager Bangkadi', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (37, N'037', 13, N'Factory Manager Chonburi', N'Factory Manager Chonburi', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (38, N'038', 14, N'FINANCIAL CONTROL ', N'FINANCIAL CONTROL ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (39, N'039', 15, N'GENERAL AFFAIRS I ', N'GENERAL AFFAIRS I ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (40, N'040', 16, N'GENERAL AFFAIRS II ', N'GENERAL AFFAIRS II ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (41, N'041', 17, N'HROD & TRAINING', N'HROD & TRAINING', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (42, N'042', 17, N'HUMAN RESOURCES', N'HUMAN RESOURCES', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (43, N'043', 17, N'HUMAN RESOURCES MANAGEMENT ', N'HUMAN RESOURCES MANAGEMENT ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (44, N'044', 18, N'IM AUTO MOUNT ', N'IM AUTO MOUNT ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (45, N'045', 18, N'IM PRODUCTION ENGINEERING ', N'IM PRODUCTION ENGINEERING ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (46, N'046', 10, N'IMAGING ENGINEERING', N'IMAGING ENGINEERING', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (47, N'047', 18, N'IMAGING PRODUCTION', N'IMAGING PRODUCTION', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (48, N'048', 19, N'INFORMATION SYSTEM SOLUTION', N'INFORMATION SYSTEM SOLUTION', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (49, N'049', 19, N'INFRASTRUCTURE COMMUNICATION TECHNOLOGY', N'INFRASTRUCTURE COMMUNICATION TECHNOLOGY', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (50, N'050', 18, N'KEY DEVICE PRODUCTION ', N'KEY DEVICE PRODUCTION ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (51, N'051', 14, N'LEGAL &  COMPLIANCE ', N'LEGAL &  COMPLIANCE ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (52, N'052', 20, N'Lens BIZ. Center', N'Lens BIZ. Center', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (53, N'053', 21, N'LENS ENGINEERING ', N'LENS ENGINEERING ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (54, N'054', 22, N'LENS PRODUCTION', N'LENS PRODUCTION', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (55, N'055', 22, N'LENS PRODUCTION CONTROL ', N'LENS PRODUCTION CONTROL ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (56, N'056', 22, N'LENS PRODUCTION ENGINEERING ', N'LENS PRODUCTION ENGINEERING ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (57, N'057', 3, N'Line-Fit Design ', N'Line-Fit Design ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (58, N'058', 23, N'LOGISTICS ', N'LOGISTICS ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (59, N'059', 32, N'MANUFACTURING DESIGN ', N'MANUFACTURING DESIGN ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (60, N'060', 31, N'MANUFACTURING DESIGN I ', N'MANUFACTURING DESIGN I ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (61, N'061', 31, N'MANUFACTURING DESIGN II ', N'MANUFACTURING DESIGN II ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (62, N'062', 23, N'MATERIAL CONTROL & LOGISTICS', N'MATERIAL CONTROL & LOGISTICS', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (63, N'063', 23, N'MATERIAL CONTROL I ', N'MATERIAL CONTROL I ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (64, N'064', 24, N'MD', N'MD', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (65, N'065', 25, N'MD OFFICE', N'MD OFFICE', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (66, N'066', 3, N'MECHANICAL DESIGN', N'MECHANICAL DESIGN', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (67, N'067', 27, N'MECHANICAL ENGINEERING ', N'MECHANICAL ENGINEERING ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (68, N'068', 34, N'MECHANICAL PURCHASING ', N'MECHANICAL PURCHASING ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (69, N'069', 26, N'MOBILE BIZ CENTER', N'MOBILE BIZ CENTER', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (70, N'070', 27, N'MOBILE ENGINEERING', N'MOBILE ENGINEERING', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (71, N'071', 29, N'MOBILE MATERIAL CONTROL ', N'MOBILE MATERIAL CONTROL ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (72, N'072', 27, N'MOBILE PART QUALITY ENGINEERING', N'MOBILE PART QUALITY ENGINEERING', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (73, N'073', 28, N'MOBILE PLANNING ', N'MOBILE PLANNING ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (74, N'074', 28, N'MOBILE PLANNING & CONTROL', N'MOBILE PLANNING & CONTROL', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (75, N'075', 36, N'MOBILE PRODUCT ASSURANCE ', N'MOBILE PRODUCT ASSURANCE ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (76, N'076', 29, N'Mobile Production', N'Mobile Production', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (77, N'077', 29, N'MOBILE SMA & BT ', N'MOBILE SMA & BT ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (78, N'078', 38, N'MOBILE SOURCING', N'MOBILE SOURCING', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (79, N'079', 27, N'NEW MODEL MANAGEMENT ', N'NEW MODEL MANAGEMENT ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (80, N'080', 38, N'NEW MODEL SOURCING ', N'NEW MODEL SOURCING ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (81, N'081', 30, N'PARTS QUALITY ENGINEERING I', N'PARTS QUALITY ENGINEERING I', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (82, N'082', 30, N'PARTS QUALITY ENGINEERING II ', N'PARTS QUALITY ENGINEERING II ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (83, N'083', 30, N'PARTS QUALITY ENGINEERING III ', N'PARTS QUALITY ENGINEERING III ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (84, N'084', 29, N'PRODUCTION ENGINEER ', N'PRODUCTION ENGINEER ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (85, N'085', 31, N'PRODUCTION INNOVATION I', N'PRODUCTION INNOVATION I', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (86, N'086', 32, N'PRODUCTION INNOVATION II', N'PRODUCTION INNOVATION II', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (87, N'087', 33, N'PRODUCTION PLANNING I', N'PRODUCTION PLANNING I', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (88, N'088', 31, N'PRODUCTION RESOURCES CONTROL ', N'PRODUCTION RESOURCES CONTROL ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (89, N'089', 34, N'PURCHASING', N'PURCHASING', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (90, N'090', 35, N'QMS & CS ', N'QMS & CS ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (91, N'091', 35, N'QUALITY ASSURANCE I', N'QUALITY ASSURANCE I', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (92, N'092', 36, N'QUALITY ASSURANCE II', N'QUALITY ASSURANCE II', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (93, N'093', 37, N'SAFETY, OCCUPATIONAL HEALTH & ENVIRONMENT OFFICE', N'SAFETY, OCCUPATIONAL HEALTH & ENVIRONMENT OFFICE', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (94, N'094', 15, N'SECURITY & SHE I ', N'SECURITY & SHE I ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (95, N'095', 16, N'SECURITY & SHE II ', N'SECURITY & SHE II ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (96, N'096', 29, N'SI PRODUCTION ', N'SI PRODUCTION ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (97, N'097', 3, N'SOFTWARE DESIGN ', N'SOFTWARE DESIGN ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (98, N'098', 38, N'SOURCING', N'SOURCING', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (99, N'099', 38, N'SOURCING CONTROL ', N'SOURCING CONTROL ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (100, N'100', 32, N'TEST ENGINEERING ', N'TEST ENGINEERING ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (101, N'101', 15, N'WORKPLACE SOLUTION I ', N'WORKPLACE SOLUTION I ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[LDMS_M_Department] ([ID], [DepartmentID], [ID_Division], [DepartmentName_EN], [DepartmentName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (102, N'102', 16, N'WORKPLACE SOLUTION II ', N'WORKPLACE SOLUTION II ', NULL, N'Admin', CAST(N'2020-04-12T06:19:00.557' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (1, N'001', 1, N'ATM PROD', N'ATM PROD', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (2, N'002', 1, N'Automotive BIZ. Center', N'Automotive BIZ. Center', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (3, N'003', 1, N'AUTOMOTIVE ENGINEERING', N'AUTOMOTIVE ENGINEERING', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (4, N'004', 6, N'BUSINESS PLANNING I', N'BUSINESS PLANNING I', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (5, N'005', 2, N'Corp. Human Management Center', N'Corp. Human Management Center', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (6, N'006', 5, N'Corporate Material Management Center', N'Corporate Material Management Center', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (7, N'007', 6, N'Corporate Planning & Control Center', N'Corporate Planning & Control Center', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (8, N'008', 4, N'Corporate Planning & Control Center', N'Corporate Planning & Control Center', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (9, N'009', 7, N'CWS-Asia Pacific Office', N'CWS-Asia Pacific Office', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (10, N'010', 8, N'DI ENGINEERING', N'DI ENGINEERING', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (11, N'011', 8, N'DI SET BIZ. Center', N'DI SET BIZ. Center', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (12, N'012', 9, N'Factory Manager Bangkadi', N'Factory Manager Bangkadi', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (13, N'013', 10, N'Factory Manager Chonburi', N'Factory Manager Chonburi', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (14, N'014', 6, N'FINANCE & COMPLIANCE CONTROL', N'FINANCE & COMPLIANCE CONTROL', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (15, N'015', 2, N'GENERAL AFFAIRS I ', N'GENERAL AFFAIRS I ', NULL, N'Admin', CAST(N'2020-04-12T05:20:12.010' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (16, N'016', 3, N'GENERAL AFFAIRS II', N'GENERAL AFFAIRS II', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (17, N'017', 2, N'HUMAN RESOURCES', N'HUMAN RESOURCES', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (18, N'018', 8, N'IMAGING PRODUCTION', N'IMAGING PRODUCTION', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (19, N'019', 6, N'INFORMATION SYSTEM SOLUTION', N'INFORMATION SYSTEM SOLUTION', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (20, N'020', 11, N'Lens BIZ. Center', N'Lens BIZ. Center', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (21, N'021', 11, N'LENS ENGINEERING', N'LENS ENGINEERING', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (22, N'022', 11, N'LENS PRODUCTION', N'LENS PRODUCTION', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (23, N'023', 5, N'MATERIAL CONTROL & LOGISTICS', N'MATERIAL CONTROL & LOGISTICS', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (24, N'024', 12, N'MD', N'MD', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (25, N'025', 2, N'MD OFFICE', N'MD OFFICE', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (26, N'026', 13, N'MOBILE BIZ CENTER', N'MOBILE BIZ CENTER', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (27, N'027', 13, N'MOBILE ENGINEERING', N'MOBILE ENGINEERING', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (28, N'028', 4, N'MOBILE PLANNING & CONTROL', N'MOBILE PLANNING & CONTROL', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (29, N'029', 13, N'Mobile Production', N'Mobile Production', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (30, N'030', 14, N'PARTS QUALITY ENGINEERING I', N'PARTS QUALITY ENGINEERING I', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (31, N'031', 15, N'PRODUCTION INNOVATION I', N'PRODUCTION INNOVATION I', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (32, N'032', 13, N'PRODUCTION INNOVATION II', N'PRODUCTION INNOVATION II', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (33, N'033', 6, N'PRODUCTION PLANNING I', N'PRODUCTION PLANNING I', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (34, N'034', 5, N'PURCHASING', N'PURCHASING', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (35, N'035', 16, N'QUALITY ASSURANCE I', N'QUALITY ASSURANCE I', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (36, N'036', 17, N'QUALITY ASSURANCE II', N'QUALITY ASSURANCE II', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (37, N'037', 18, N'SAFETY, OCCUPATIONAL HEALTH & ENVIRONMENT OFFICE', N'SAFETY, OCCUPATIONAL HEALTH & ENVIRONMENT OFFICE', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Division] ([ID], [DivisionID], [ID_Center], [DivisionName_EN], [DivisionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBY], [UpdateDate], [IsActive]) VALUES (38, N'038', 5, N'SOURCING', N'SOURCING', NULL, N'Admin', CAST(N'2020-04-12T05:19:19.887' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'I2', N'I2', N'I2', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'I3A', N'I3A', N'I3A', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'I3', N'I3', N'I3', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, N'I4', N'I4', N'I4', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (5, N'I5', N'I5', N'I5', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (6, N'I6', N'I6', N'I6', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (7, N'M5A', N'M5A', N'M5A', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (8, N'M5', N'M5', N'M5', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (9, N'M6', N'M6', N'M6', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (10, N'M7', N'M7', N'M7', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (11, N'M7A', N'M7A', N'M7A', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (12, N'M8', N'M8', N'M8', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (13, N'M9', N'M9', N'M9', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (14, N'STD', N'STD', N'STD', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobGrade] ([ID], [JobGradeID], [JobGradeName_EN], [JobGradeName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (15, N'SUB', N'SUB', N'SUB', NULL, N'Admin', CAST(N'2020-04-12T06:43:35.477' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'T-LEADI2', N'Leader I2', N'Leader I2', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'T-LEADNI2', N'Leader_N I2', N'Leader_N I2', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'T-ACCI3', N'Accountant I3', N'Accountant I3', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, N'T-ACCI3A', N'Accountant I3A', N'Accountant I3A', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (5, N'T-ADVI3', N'Advisor I3', N'Advisor I3', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (6, N'T-ADVI3A', N'Advisor I3A', N'Advisor I3A', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (7, N'T-ADVI4', N'Advisor I4', N'Advisor I4', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (8, N'T-ADVI5', N'Advisor I5', N'Advisor I5', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (9, N'T-ADVI6', N'Advisor I6', N'Advisor I6', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (10, N'T-DSRGMM7', N'Deputy Senior General Manager M7', N'Deputy Senior General Manager M7', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (11, N'T-ENGI3', N'Engineer I3', N'Engineer I3', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (12, N'T-ENGI3A', N'Engineer I3A', N'Engineer I3A', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (13, N'T-GMM6', N'General Manager M6', N'General Manager M6', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (14, N'T-ITSPI3', N'IT Specialist I3', N'IT Specialist I3', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (15, N'T-ITSPI3A', N'IT Specialist I3A', N'IT Specialist I3A', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (16, N'T-JROFFI2', N'Junior Officer I2', N'Junior Officer I2', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (17, N'T-MGRM5', N'Manager M5', N'Manager M5', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (18, N'T-MDM9', N'Managing Director M9', N'Managing Director M9', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (19, N'T-OFFI3', N'Officer I3', N'Officer I3', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (20, N'T-OFFI3A', N'Officer I3A', N'Officer I3A', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (21, N'T-SRACCI4', N'Senior Accountant I4', N'Senior Accountant I4', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (22, N'T-SRENGI4', N'Senior Engineer I4', N'Senior Engineer I4', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (23, N'T-SRITSPI4', N'Senior IT Specialist I4', N'Senior IT Specialist I4', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (24, N'T-SRMGRM5A', N'Senior Manager M5A', N'Senior Manager M5A', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (25, N'T-SROFFI4', N'Senior Officer I4', N'Senior Officer I4', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (26, N'T-SRSUPI4', N'Senior Supervisor I4', N'Senior Supervisor I4', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (27, N'T-SRTSPI4', N'Senior Technical Specialist I4', N'Senior Technical Specialist I4', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (28, N'T-SRVPM8', N'Senior Vice President M8', N'Senior Vice President M8', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (29, N'T-SPI5', N'Specialist I5', N'Specialist I5', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (30, N'T-SUPI3', N'Supervisor I3', N'Supervisor I3', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (31, N'T-SUPI3A', N'Supervisor I3A', N'Supervisor I3A', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (32, N'T-TSPI3', N'Technical Specialist I3', N'Technical Specialist I3', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (33, N'T-TSPI3A', N'Technical Specialist I3A', N'Technical Specialist I3A', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (34, N'T-TECHI2', N'Technician I2', N'Technician I2', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (35, N'T-VPM7A', N'Vice President M7A', N'Vice President M7A', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (36, N'T-STD', N'STD', N'STD', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_JobTitle] ([ID], [JobTitleID], [JobTitleName_EN], [JobTitleName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (37, N'T-SUB', N'SUB', N'SUB', NULL, N'Admin', CAST(N'2020-04-12T06:46:18.933' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Module] ([ID], [ModuleID], [ModuleName_EN], [ModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'MD01', N'My Plan', NULL, 1, NULL, NULL, NULL, N'สำหรับพนักงานเรียกดูข้อมูลของตนเอง', N'Admin', CAST(N'2020-04-05T01:26:18.940' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Module] ([ID], [ModuleID], [ModuleName_EN], [ModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'MD02', N'My Team', N'My Monitoring', 2, NULL, NULL, NULL, N'สำหรับหัวหน้างาน Manager', N'Admin', CAST(N'2020-04-05T01:26:18.940' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Module] ([ID], [ModuleID], [ModuleName_EN], [ModuleName_TH], [Sequence], [Parent], [URL], [Icon], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'MD03', N'I-Manage', NULL, 3, NULL, NULL, NULL, N'สำหรับ Admin จัดการข้อมูลพื้นฐานและคอร์สเรียน', N'Admin', CAST(N'2020-04-05T01:26:18.940' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Plant] ([ID], [PlantID], [PlantName_EN], [PlantName_TH], [PlantDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'STTB', N'BangPa-in Plant', N'บางปะอิน', NULL, N'Admin', CAST(N'2020-04-12T03:42:28.380' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Plant] ([ID], [PlantID], [PlantName_EN], [PlantName_TH], [PlantDescription], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'STTC', N'Chonburi Plant', N'ชลบุรี', NULL, N'Admin', CAST(N'2020-04-12T03:42:28.380' AS DateTime), NULL, NULL, 1)
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
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (1, N'001', 18, N'MGT BC II', N'MGT BC II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (2, N'002', 18, N'MFC cost control', N'MFC cost control', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (3, N'003', 25, N'MGT Corp plan. B', N'MGT Corp plan. B', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (4, N'004', 34, N'EE III', N'EE III', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (5, N'005', 34, N'MGT EE', N'MGT EE', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (6, N'006', 34, N'EE I', N'EE I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (7, N'007', 34, N'EE IIII', N'EE IIII', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (8, N'008', 34, N'EE II', N'EE II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (9, N'009', 67, N'ME I', N'ME I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (10, N'010', 27, N'Advisor CQM', N'Advisor CQM', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (11, N'011', 27, N'Calibration', N'Calibration', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (12, N'012', 27, N'QMS', N'QMS', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (13, N'013', 27, N'CM', N'CM', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (14, N'014', 27, N'MGT CQM', N'MGT CQM', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (16, N'016', 67, N'ME II', N'ME II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (18, N'018', 67, N'ME III', N'ME III', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (19, N'019', 70, N'Advisor ENG', N'Advisor ENG', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (20, N'020', 70, N'MGT ENG', N'MGT ENG', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (21, N'021', 36, N'MGT FMB', N'MGT FMB', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (22, N'022', 40, N'Canteen & Cleaning', N'Canteen & Cleaning', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (24, N'024', 40, N'MGT GA II', N'MGT GA II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (25, N'025', 40, N'Admin & Expat Service', N'Admin & Expat Service', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (26, N'026', 72, N'ME', N'ME', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (27, N'027', 72, N'SI', N'SI', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (28, N'028', 72, N'IQC&OQC', N'IQC&OQC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (29, N'029', 72, N'EM', N'EM', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (30, N'030', 79, N'MGT NMM', N'MGT NMM', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (31, N'031', 79, N'IP ', N'IP ', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (32, N'032', 79, N'PCM', N'PCM', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (35, N'035', 59, N'AIT Mech', N'AIT Mech', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (36, N'036', 59, N'Fixture Design', N'Fixture Design', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (37, N'037', 59, N'MGT MFD', N'MGT MFD', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (38, N'038', 86, N'MGT INNO II', N'MGT INNO II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (39, N'039', 100, N'MGT TEST', N'MGT TEST', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (40, N'040', 100, N'Advisor  TEST', N'Advisor  TEST', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (41, N'041', 100, N'Admin/Spare part', N'Admin/Spare part', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (42, N'042', 100, N'Test Design', N'Test Design', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (43, N'043', 100, N'AIT TD', N'AIT TD', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (44, N'044', 100, N'Sys Development (BIOS)', N'Sys Development (BIOS)', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (45, N'045', 100, N'Smart system', N'Smart system', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (46, N'046', 69, N'MGT Mobile Center', N'MGT Mobile Center', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (47, N'047', 69, N'Advisor Mobile Center', N'Advisor Mobile Center', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (48, N'048', 26, N'Advisor CU', N'Advisor CU', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (49, N'049', 74, N'MGT Mobile plan', N'MGT Mobile plan', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (50, N'050', 73, N'SMA Team', N'SMA Team', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (51, N'051', 73, N'Planning I', N'Planning I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (52, N'052', 73, N'Plannning II', N'Plannning II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (53, N'053', 75, N'QC', N'QC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (54, N'054', 75, N'QA', N'QA', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (55, N'055', 75, N'MGT MPA', N'MGT MPA', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (56, N'056', 75, N'FPQM', N'FPQM', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (57, N'057', 26, N'RW/AMS', N'RW/AMS', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (58, N'058', 26, N'Flagship', N'Flagship', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (59, N'059', 26, N'Standard', N'Standard', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (60, N'060', 26, N'MGT CU', N'MGT CU', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (61, N'061', 84, N'Manpower/Training', N'Manpower/Training', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (62, N'062', 71, N'MC', N'MC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (63, N'063', 71, N'SI&IP WH', N'SI&IP WH', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (64, N'064', 71, N'CU WH', N'CU WH', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (65, N'065', 71, N'MGT MMC', N'MGT MMC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (66, N'066', 71, N'OWH', N'OWH', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (67, N'067', 71, N'SFG', N'SFG', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (68, N'068', 76, N'Advisor Mobile Prod.', N'Advisor Mobile Prod.', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (69, N'069', 76, N'MGT Mobile Prod.', N'MGT Mobile Prod.', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (70, N'070', 77, N'SMA PD', N'SMA PD', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (71, N'071', 77, N'SMT Eng.', N'SMT Eng.', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (72, N'072', 77, N'SMT M/C', N'SMT M/C', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (73, N'073', 77, N'MGT SMA & BT', N'MGT SMA & BT', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (74, N'074', 92, N'MGT QAII', N'MGT QAII', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (75, N'075', 95, N'SS II', N'SS II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (76, N'076', 95, N'MGT SS', N'MGT SS', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (77, N'077', 77, N'PBA QM', N'PBA QM', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (78, N'078', 77, N'BT RCA', N'BT RCA', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (79, N'079', 77, N'BT PD', N'BT PD', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (80, N'080', 84, N'MNT', N'MNT', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (81, N'081', 84, N'PUM/IP', N'PUM/IP', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (82, N'082', 84, N'Line Set up', N'Line Set up', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (83, N'083', 84, N'MGT MPE', N'MGT MPE', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (84, N'084', 96, N'Flagship Model', N'Flagship Model', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (85, N'085', 96, N'Mid Class Model', N'Mid Class Model', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (86, N'086', 96, N'MGT SI', N'MGT SI', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (87, N'087', 96, N'FGWH', N'FGWH', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (88, N'088', 96, N'Co-Pro & Verification', N'Co-Pro & Verification', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (89, N'089', 102, N'Project , Service & Infrastructure', N'Project , Service & Infrastructure', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (90, N'090', 102, N'PM & Shift Operation', N'PM & Shift Operation', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (91, N'091', 85, N'MGT INNO I', N'MGT INNO I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (93, N'093', 60, N'Admin', N'Admin', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (94, N'094', 60, N'ITE/Workshop', N'ITE/Workshop', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (95, N'095', 61, N'IM (Body)', N'IM (Body)', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (96, N'096', 81, N'Advisor PQE I', N'Advisor PQE I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (97, N'097', 81, N'MGT PQE I', N'MGT PQE I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (98, N'098', 22, N'MGT CHM', N'MGT CHM', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (99, N'099', 39, N'MGT GA I', N'MGT GA I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (100, N'100', 2, N'AC Lens Production', N'AC Lens Production', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (101, N'101', 2, N'MGT AC LENS', N'MGT AC LENS', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (102, N'102', 20, N'CLPD II', N'CLPD II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (103, N'103', 20, N'CLPD I', N'CLPD I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (104, N'104', 20, N'MGT CL PROD I', N'MGT CL PROD I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (105, N'105', 21, N'CLPD II-1', N'CLPD II-1', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (106, N'106', 21, N'CLPD II-2', N'CLPD II-2', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (107, N'107', 29, N'MGT DI ENG', N'MGT DI ENG', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (108, N'108', 46, N'Engineering Admin', N'Engineering Admin', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (110, N'110', 46, N'Advisor IM ENG', N'Advisor IM ENG', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (111, N'111', 46, N'Technology Information', N'Technology Information', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (112, N'112', 46, N'MGT IM ENG', N'MGT IM ENG', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (115, N'115', 32, N'MGT DI', N'MGT DI', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (116, N'116', 1, N'MGT AC ENG', N'MGT AC ENG', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (117, N'117', 1, N'Electrical/5600s', N'Electrical/5600s', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (118, N'118', 1, N'Design', N'Design', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (119, N'119', 1, N'5600s', N'5600s', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (122, N'122', 12, N'MGT AC PD', N'MGT AC PD', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (123, N'123', 10, N'Machine', N'Machine', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (125, N'125', 23, N'MGT CMM', N'MGT CMM', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (126, N'126', 58, N'Logistics I', N'Logistics I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (127, N'127', 58, N'Logistics II', N'Logistics II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (128, N'128', 19, N'MGT BIZ PLAN I', N'MGT BIZ PLAN I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (129, N'129', 18, N'BC II', N'BC II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (130, N'130', 64, N'MGT MD', N'MGT MD', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (131, N'131', 28, N'CWS', N'CWS', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (133, N'133', 37, N'FMC', N'FMC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (134, N'134', 61, N'CL (Lens)', N'CL (Lens)', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (135, N'135', 61, N'MGT MED I', N'MGT MED I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (136, N'136', 61, N'AC-Lens', N'AC-Lens', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (138, N'138', 61, N'eV/Line Fit', N'eV/Line Fit', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (139, N'139', 88, N'PRC', N'PRC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (140, N'140', 91, N'MGT MFD II', N'MGT MFD II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (141, N'141', 31, N'ILC Body', N'ILC Body', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (142, N'142', 31, N'ILC Lens', N'ILC Lens', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (143, N'143', 31, N'Office & Interpreter', N'Office & Interpreter', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (144, N'144', 8, N'MGT AU PA', N'MGT AU PA', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (146, N'146', 90, N'AM/QC', N'AM/QC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (147, N'147', 90, N'Audit/QMS', N'Audit/QMS', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (148, N'148', 90, N'CS & Refurbish', N'CS & Refurbish', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (149, N'149', 90, N'B2B & PS', N'B2B & PS', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (150, N'150', 3, N'MGT AC PA', N'MGT AC PA', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (153, N'153', 81, N'ATM', N'ATM', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (154, N'154', 82, N'MGT PQE II', N'MGT PQE II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (155, N'155', 82, N'Development ', N'Development ', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (156, N'156', 82, N'Elec', N'Elec', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (157, N'157', 82, N'Strategy Planning', N'Strategy Planning', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (158, N'158', 83, N'IQC', N'IQC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (159, N'159', 83, N'OQC', N'OQC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (160, N'160', 83, N'MGT PQE III', N'MGT PQE III', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (161, N'161', 39, N'Employee Service', N'Employee Service', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (163, N'163', 39, N'Manpower from Production', N'Manpower from Production', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (164, N'164', 39, N'Canteen Service', N'Canteen Service', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (165, N'165', 39, N'EC & Office Service', N'EC & Office Service', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (166, N'166', 42, N'MGT HR', N'MGT HR', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (167, N'167', 43, N'Compensation', N'Compensation', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (168, N'168', 43, N'Payroll', N'Payroll', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (169, N'169', 43, N'Regulatory & DM', N'Regulatory & DM', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (170, N'170', 41, N'Recruit & Retain', N'Recruit & Retain', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (171, N'171', 41, N'Human & Organization Development', N'Human & Organization Development', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (172, N'172', 41, N'MGT HROD', N'MGT HROD', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (173, N'173', 65, N'MD Office', N'MD Office', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (174, N'174', 94, N'Security', N'Security', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (175, N'175', 94, N'Safety, Health &Environment ', N'Safety, Health &Environment ', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (176, N'176', 101, N'Project', N'Project', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (177, N'177', 101, N'Maintenance', N'Maintenance', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (178, N'178', 101, N'MGT WS I', N'MGT WS I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (179, N'179', 21, N'MGT CL PROD II', N'MGT CL PROD II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (180, N'180', 56, N'CLPD II-PCE', N'CLPD II-PCE', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (181, N'181', 56, N'CLPD I-PCE', N'CLPD I-PCE', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (182, N'182', 56, N'CLPD II-MFE', N'CLPD II-MFE', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (183, N'183', 56, N'CLPD I-MFE', N'CLPD I-MFE', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (184, N'184', 56, N'AC-MFE', N'AC-MFE', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (185, N'185', 56, N'MGT LEN PE', N'MGT LEN PE', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (186, N'186', 52, N'Advisor Len Biz.', N'Advisor Len Biz.', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (187, N'187', 52, N'MGT Len Biz.', N'MGT Len Biz.', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (188, N'188', 55, N'Packing / SFG', N'Packing / SFG', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (189, N'189', 55, N'Quality / SMLD ', N'Quality / SMLD ', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (190, N'190', 55, N'Manpower / Cost Control', N'Manpower / Cost Control', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (191, N'191', 55, N'MGT LENS CONT', N'MGT LENS CONT', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (192, N'192', 55, N'Part control / Spoilage', N'Part control / Spoilage', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (193, N'193', 53, N'MGT LENS ENG', N'MGT LENS ENG', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (194, N'194', 53, N'Advisor LENS ENG', N'Advisor LENS ENG', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (196, N'196', 53, N'Current Model', N'Current Model', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (197, N'197', 53, N'New Model ', N'New Model ', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (198, N'198', 53, N'AC Lens', N'AC Lens', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (199, N'199', 54, N'MGT LENS PROD', N'MGT LENS PROD', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (200, N'200', 4, N'Alpha I', N'Alpha I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (201, N'201', 4, N'MGT ALPHA I', N'MGT ALPHA I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (202, N'202', 5, N'Alpha II', N'Alpha II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (203, N'203', 5, N'MGT ALPHA II', N'MGT ALPHA II', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (205, N'205', 44, N'Program', N'Program', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (206, N'206', 44, N'MGT IM AM', N'MGT IM AM', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (207, N'207', 45, N'Manufacturing Engineering', N'Manufacturing Engineering', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (208, N'208', 45, N'MGT IM PE', N'MGT IM PE', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (209, N'209', 47, N'MGT IM PROD', N'MGT IM PROD', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (210, N'210', 50, N'KDV', N'KDV', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (211, N'211', 50, N'MGT KDV', N'MGT KDV', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (212, N'212', 11, N'MGT ATM Biz.', N'MGT ATM Biz.', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (214, N'214', 10, N'MGT ATM AM', N'MGT ATM AM', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (215, N'215', 15, N'AC Manufacturing Engineer', N'AC Manufacturing Engineer', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (216, N'216', 15, N'AC Process Engineer', N'AC Process Engineer', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (217, N'217', 15, N'AU Process Engineer', N'AU Process Engineer', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (218, N'218', 15, N'MGT ATM PDE', N'MGT ATM PDE', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (219, N'219', 15, N'AU Manufacturing Engineer', N'AU Manufacturing Engineer', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (220, N'220', 14, N'MGT ATM PROD', N'MGT ATM PROD', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (221, N'221', 7, N'Eng. Support', N'Eng. Support', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (222, N'222', 7, N'MGT AU ENG', N'MGT AU ENG', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (223, N'223', 7, N'Mechanical Eng.', N'Mechanical Eng.', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (224, N'224', 7, N'Electrical Eng.', N'Electrical Eng.', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (226, N'226', 9, N'MGT AU PD', N'MGT AU PD', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (227, N'227', 13, N'Advisor ATM ENG', N'Advisor ATM ENG', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (228, N'228', 13, N'MGT ATM ENG', N'MGT ATM ENG', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (229, N'229', 33, N'MGT EE DS', N'MGT EE DS', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (230, N'230', 33, N'E3 ', N'E3 ', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (231, N'231', 33, N'E1 ', N'E1 ', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (232, N'232', 33, N'E2 ', N'E2 ', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (233, N'233', 66, N'MGT ME DS', N'MGT ME DS', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (234, N'234', 66, N'M3 ', N'M3 ', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (235, N'235', 66, N'M1 ', N'M1 ', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (236, N'236', 66, N'M2 ', N'M2 ', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (237, N'237', 66, N'M4 ', N'M4 ', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (238, N'238', 97, N'MGT SW DS', N'MGT SW DS', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (239, N'239', 97, N'Software Quality Assurance', N'Software Quality Assurance', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (240, N'240', 97, N'Software Development', N'Software Development', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (241, N'241', 57, N'Design Support', N'Design Support', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (242, N'242', 57, N'MGT Line-Fit', N'MGT Line-Fit', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (243, N'243', 62, N'MGT MC & LOG', N'MGT MC & LOG', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (244, N'244', 63, N'DI W/H', N'DI W/H', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (245, N'245', 63, N'ATM W/H & MC Control', N'ATM W/H & MC Control', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (246, N'246', 63, N'MGT MC I', N'MGT MC I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (248, N'248', 35, N'eV & LF', N'eV & LF', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (249, N'249', 35, N'AC & ILC', N'AC & ILC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (250, N'250', 68, N'KEY Mechanical & JIT MR', N'KEY Mechanical & JIT MR', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (251, N'251', 68, N'MGT MECH PUR', N'MGT MECH PUR', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (252, N'252', 68, N'LENS & IPO', N'LENS & IPO', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (253, N'253', 68, N'Mechanic & Packaging', N'Mechanic & Packaging', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (254, N'254', 68, N'Elec-mechanics & Electronic', N'Elec-mechanics & Electronic', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (255, N'255', 68, N'MGT Mobile PUR', N'MGT Mobile PUR', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (256, N'256', 68, N'Advisor Mobile PUR', N'Advisor Mobile PUR', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (257, N'257', 89, N'MGT PUR', N'MGT PUR', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (258, N'258', 78, N'MGT Mobile SC', N'MGT Mobile SC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (259, N'259', 78, N'New Model Sourcing', N'New Model Sourcing', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (260, N'260', 17, N'BC I', N'BC I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (261, N'261', 24, N'MGT Corp plan. C', N'MGT Corp plan. C', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (262, N'262', 38, N'General A/C STTC Unit', N'General A/C STTC Unit', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (263, N'263', 38, N'MGT FC', N'MGT FC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (264, N'264', 38, N'Costing ', N'Costing ', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (265, N'265', 38, N'Finance', N'Finance', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (266, N'266', 51, N'MGT LCO', N'MGT LCO', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (267, N'267', 51, N'Legal & Corporate Compliance', N'Legal & Corporate Compliance', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (268, N'268', 51, N'Tax Incentive & Government Affair', N'Tax Incentive & Government Affair', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (269, N'269', 38, N'General A/C STTB Unit', N'General A/C STTB Unit', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (270, N'270', 49, N'Endpoint Service& Security Control (STTC)', N'Endpoint Service& Security Control (STTC)', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (271, N'271', 48, N'MGT ISS', N'MGT ISS', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (272, N'272', 16, N'Business Application (STTC)', N'Business Application (STTC)', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (273, N'273', 49, N'Infra Solution (STTC)', N'Infra Solution (STTC)', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (274, N'274', 49, N'MGT ICT', N'MGT ICT', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (275, N'275', 16, N'MGT BA', N'MGT BA', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (276, N'276', 16, N'Business Application (STTB)', N'Business Application (STTB)', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (277, N'277', 49, N'Endpoint Service& Security Control (STTB)', N'Endpoint Service& Security Control (STTB)', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (278, N'278', 49, N'Infra Solution (STTB)', N'Infra Solution (STTB)', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (279, N'279', 87, N'MGT Plan I', N'MGT Plan I', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (280, N'280', 30, N'MGT DI PLAN', N'MGT DI PLAN', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (281, N'281', 6, N'MGT ATM PLAN', N'MGT ATM PLAN', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (282, N'282', 6, N'eV/Line-fit', N'eV/Line-fit', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (283, N'283', 80, N'ILC', N'ILC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (284, N'284', 98, N'Advisor SC', N'Advisor SC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (285, N'285', 98, N'MGT SC', N'MGT SC', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (286, N'286', 99, N'Part Approval', N'Part Approval', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (287, N'287', 99, N'MGT SC CONT', N'MGT SC CONT', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (288, N'288', 99, N'Tooling Control', N'Tooling Control', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (289, N'289', 99, N'GP/AQAS Audit Partner', N'GP/AQAS Audit Partner', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (290, N'290', 99, N'Packing', N'Packing', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[LDMS_M_Section] ([ID], [SectionID], [ID_Department], [SectionName_EN], [SectionName_TH], [Description], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [IsActive]) VALUES (291, N'291', 93, N'SAFETY, OCCUPATIONAL HEALTH & ENVIRONMENT OFFICE', N'SAFETY, OCCUPATIONAL HEALTH & ENVIRONMENT OFFICE', NULL, N'Admin', CAST(N'2020-04-12T06:28:40.483' AS DateTime), NULL, NULL, 1)
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
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 4, N'004', N'Corp.Planning & Control Center', 28, N'028', N'MOBILE PLANNING & CONTROL', 18, N'018', N'BUSINESS CONTROL II ', 1, N'001', N'MGT BC II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 4, N'004', N'Corp.Planning & Control Center', 28, N'028', N'MOBILE PLANNING & CONTROL', 18, N'018', N'BUSINESS CONTROL II ', 2, N'002', N'MFC cost control')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 4, N'004', N'Corp.Planning & Control Center', 8, N'008', N'Corporate Planning & Control Center', 25, N'025', N'CORPORATE PLANNING & CONTROL CENTER ', 3, N'003', N'MGT Corp plan. B')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 34, N'034', N'ELECTRICAL ENGINEERING ', 4, N'004', N'EE III')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 34, N'034', N'ELECTRICAL ENGINEERING ', 5, N'005', N'MGT EE')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 34, N'034', N'ELECTRICAL ENGINEERING ', 6, N'006', N'EE I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 34, N'034', N'ELECTRICAL ENGINEERING ', 7, N'007', N'EE IIII')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 34, N'034', N'ELECTRICAL ENGINEERING ', 8, N'008', N'EE II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 67, N'067', N'MECHANICAL ENGINEERING ', 9, N'009', N'ME I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 17, N'017', N'QUALITY ASSURANCE II', 36, N'036', N'QUALITY ASSURANCE II', 27, N'027', N'CUSTOMER & QUALITY MANAGEMENT ', 10, N'010', N'Advisor CQM')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 17, N'017', N'QUALITY ASSURANCE II', 36, N'036', N'QUALITY ASSURANCE II', 27, N'027', N'CUSTOMER & QUALITY MANAGEMENT ', 11, N'011', N'Calibration')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 17, N'017', N'QUALITY ASSURANCE II', 36, N'036', N'QUALITY ASSURANCE II', 27, N'027', N'CUSTOMER & QUALITY MANAGEMENT ', 12, N'012', N'QMS')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 17, N'017', N'QUALITY ASSURANCE II', 36, N'036', N'QUALITY ASSURANCE II', 27, N'027', N'CUSTOMER & QUALITY MANAGEMENT ', 13, N'013', N'CM')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 17, N'017', N'QUALITY ASSURANCE II', 36, N'036', N'QUALITY ASSURANCE II', 27, N'027', N'CUSTOMER & QUALITY MANAGEMENT ', 14, N'014', N'MGT CQM')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 17, N'017', N'QUALITY ASSURANCE II', 36, N'036', N'QUALITY ASSURANCE II', 27, N'027', N'CUSTOMER & QUALITY MANAGEMENT ', 15, N'015', N'System')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 67, N'067', N'MECHANICAL ENGINEERING ', 16, N'016', N'ME II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 67, N'067', N'MECHANICAL ENGINEERING ', 17, N'017', N'MGT')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 67, N'067', N'MECHANICAL ENGINEERING ', 18, N'018', N'ME III')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 70, N'070', N'MOBILE ENGINEERING', 19, N'019', N'Advisor ENG')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 70, N'070', N'MOBILE ENGINEERING', 20, N'020', N'MGT ENG')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 9, N'009', N'Factory Manager Bangkadi', 12, N'012', N'Factory Manager Bangkadi', 36, N'036', N'Factory Manager Bangkadi', 21, N'021', N'MGT FMB')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 3, N'003', N'Corp.Human Management Center', 16, N'016', N'GENERAL AFFAIRS II', 40, N'040', N'GENERAL AFFAIRS II ', 22, N'022', N'Canteen & Cleaning')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 3, N'003', N'Corp.Human Management Center', 16, N'016', N'GENERAL AFFAIRS II', 40, N'040', N'GENERAL AFFAIRS II ', 23, N'023', N'Transportation ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 3, N'003', N'Corp.Human Management Center', 16, N'016', N'GENERAL AFFAIRS II', 40, N'040', N'GENERAL AFFAIRS II ', 24, N'024', N'MGT GA II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 3, N'003', N'Corp.Human Management Center', 16, N'016', N'GENERAL AFFAIRS II', 40, N'040', N'GENERAL AFFAIRS II ', 25, N'025', N'Admin & Expat Service')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 72, N'072', N'MOBILE PART QUALITY ENGINEERING', 17, N'017', N'MGT')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 72, N'072', N'MOBILE PART QUALITY ENGINEERING', 26, N'026', N'ME')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 72, N'072', N'MOBILE PART QUALITY ENGINEERING', 27, N'027', N'SI')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 72, N'072', N'MOBILE PART QUALITY ENGINEERING', 28, N'028', N'IQC&OQC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 72, N'072', N'MOBILE PART QUALITY ENGINEERING', 29, N'029', N'EM')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 79, N'079', N'NEW MODEL MANAGEMENT ', 30, N'030', N'MGT NMM')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 79, N'079', N'NEW MODEL MANAGEMENT ', 31, N'031', N'IP ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 27, N'027', N'MOBILE ENGINEERING', 79, N'079', N'NEW MODEL MANAGEMENT ', 32, N'032', N'PCM')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 32, N'032', N'PRODUCTION INNOVATION II', 59, N'059', N'MANUFACTURING DESIGN ', 33, N'033', N'Automation ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 32, N'032', N'PRODUCTION INNOVATION II', 59, N'059', N'MANUFACTURING DESIGN ', 34, N'034', N'Process engineering')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 32, N'032', N'PRODUCTION INNOVATION II', 59, N'059', N'MANUFACTURING DESIGN ', 35, N'035', N'AIT Mech')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 32, N'032', N'PRODUCTION INNOVATION II', 59, N'059', N'MANUFACTURING DESIGN ', 36, N'036', N'Fixture Design')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 32, N'032', N'PRODUCTION INNOVATION II', 59, N'059', N'MANUFACTURING DESIGN ', 37, N'037', N'MGT MFD')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 32, N'032', N'PRODUCTION INNOVATION II', 86, N'086', N'PRODUCTION INNOVATION II', 38, N'038', N'MGT INNO II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 32, N'032', N'PRODUCTION INNOVATION II', 100, N'100', N'TEST ENGINEERING ', 39, N'039', N'MGT TEST')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 32, N'032', N'PRODUCTION INNOVATION II', 100, N'100', N'TEST ENGINEERING ', 40, N'040', N'Advisor  TEST')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 32, N'032', N'PRODUCTION INNOVATION II', 100, N'100', N'TEST ENGINEERING ', 41, N'041', N'Admin/Spare part')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 32, N'032', N'PRODUCTION INNOVATION II', 100, N'100', N'TEST ENGINEERING ', 42, N'042', N'Test Design')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 32, N'032', N'PRODUCTION INNOVATION II', 100, N'100', N'TEST ENGINEERING ', 43, N'043', N'AIT TD')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 32, N'032', N'PRODUCTION INNOVATION II', 100, N'100', N'TEST ENGINEERING ', 44, N'044', N'Sys Development (BIOS)')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 32, N'032', N'PRODUCTION INNOVATION II', 100, N'100', N'TEST ENGINEERING ', 45, N'045', N'Smart system')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 26, N'026', N'MOBILE BIZ CENTER', 69, N'069', N'MOBILE BIZ CENTER', 46, N'046', N'MGT Mobile Center')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 26, N'026', N'MOBILE BIZ CENTER', 69, N'069', N'MOBILE BIZ CENTER', 47, N'047', N'Advisor Mobile Center')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 26, N'026', N'CU PRODUCTION', 48, N'048', N'Advisor CU')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 4, N'004', N'Corp.Planning & Control Center', 28, N'028', N'MOBILE PLANNING & CONTROL', 74, N'074', N'MOBILE PLANNING & CONTROL', 49, N'049', N'MGT Mobile plan')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 4, N'004', N'Corp.Planning & Control Center', 28, N'028', N'MOBILE PLANNING & CONTROL', 73, N'073', N'MOBILE PLANNING ', 50, N'050', N'SMA Team')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 4, N'004', N'Corp.Planning & Control Center', 28, N'028', N'MOBILE PLANNING & CONTROL', 73, N'073', N'MOBILE PLANNING ', 51, N'051', N'Planning I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 4, N'004', N'Corp.Planning & Control Center', 28, N'028', N'MOBILE PLANNING & CONTROL', 73, N'073', N'MOBILE PLANNING ', 52, N'052', N'Plannning II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 17, N'017', N'QUALITY ASSURANCE II', 36, N'036', N'QUALITY ASSURANCE II', 75, N'075', N'MOBILE PRODUCT ASSURANCE ', 53, N'053', N'QC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 17, N'017', N'QUALITY ASSURANCE II', 36, N'036', N'QUALITY ASSURANCE II', 75, N'075', N'MOBILE PRODUCT ASSURANCE ', 54, N'054', N'QA')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 17, N'017', N'QUALITY ASSURANCE II', 36, N'036', N'QUALITY ASSURANCE II', 75, N'075', N'MOBILE PRODUCT ASSURANCE ', 55, N'055', N'MGT MPA')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 17, N'017', N'QUALITY ASSURANCE II', 36, N'036', N'QUALITY ASSURANCE II', 75, N'075', N'MOBILE PRODUCT ASSURANCE ', 56, N'056', N'FPQM')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 26, N'026', N'CU PRODUCTION', 57, N'057', N'RW/AMS')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 26, N'026', N'CU PRODUCTION', 58, N'058', N'Flagship')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 26, N'026', N'CU PRODUCTION', 59, N'059', N'Standard')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 26, N'026', N'CU PRODUCTION', 60, N'060', N'MGT CU')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 84, N'084', N'PRODUCTION ENGINEER ', 61, N'061', N'Manpower/Training')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 71, N'071', N'MOBILE MATERIAL CONTROL ', 62, N'062', N'MC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 71, N'071', N'MOBILE MATERIAL CONTROL ', 63, N'063', N'SI&IP WH')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 71, N'071', N'MOBILE MATERIAL CONTROL ', 64, N'064', N'CU WH')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 71, N'071', N'MOBILE MATERIAL CONTROL ', 65, N'065', N'MGT MMC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 71, N'071', N'MOBILE MATERIAL CONTROL ', 66, N'066', N'OWH')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 71, N'071', N'MOBILE MATERIAL CONTROL ', 67, N'067', N'SFG')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 76, N'076', N'Mobile Production', 68, N'068', N'Advisor Mobile Prod.')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 76, N'076', N'Mobile Production', 69, N'069', N'MGT Mobile Prod.')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 77, N'077', N'MOBILE SMA & BT ', 70, N'070', N'SMA PD')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 77, N'077', N'MOBILE SMA & BT ', 71, N'071', N'SMT Eng.')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 77, N'077', N'MOBILE SMA & BT ', 72, N'072', N'SMT M/C')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 77, N'077', N'MOBILE SMA & BT ', 73, N'073', N'MGT SMA & BT')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 17, N'017', N'QUALITY ASSURANCE II', 36, N'036', N'QUALITY ASSURANCE II', 92, N'092', N'QUALITY ASSURANCE II', 74, N'074', N'MGT QAII')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 3, N'003', N'Corp.Human Management Center', 16, N'016', N'GENERAL AFFAIRS II', 95, N'095', N'SECURITY & SHE II ', 75, N'075', N'SS II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 3, N'003', N'Corp.Human Management Center', 16, N'016', N'GENERAL AFFAIRS II', 95, N'095', N'SECURITY & SHE II ', 76, N'076', N'MGT SS')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 77, N'077', N'MOBILE SMA & BT ', 77, N'077', N'PBA QM')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 77, N'077', N'MOBILE SMA & BT ', 78, N'078', N'BT RCA')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 77, N'077', N'MOBILE SMA & BT ', 79, N'079', N'BT PD')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 84, N'084', N'PRODUCTION ENGINEER ', 80, N'080', N'MNT')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 84, N'084', N'PRODUCTION ENGINEER ', 81, N'081', N'PUM/IP')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 84, N'084', N'PRODUCTION ENGINEER ', 82, N'082', N'Line Set up')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 84, N'084', N'PRODUCTION ENGINEER ', 83, N'083', N'MGT MPE')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 96, N'096', N'SI PRODUCTION ', 84, N'084', N'Flagship Model')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 96, N'096', N'SI PRODUCTION ', 85, N'085', N'Mid Class Model')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 96, N'096', N'SI PRODUCTION ', 86, N'086', N'MGT SI')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 96, N'096', N'SI PRODUCTION ', 87, N'087', N'FGWH')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 13, N'013', N'MOBILE BIZ CENTER', 29, N'029', N'Mobile Production', 96, N'096', N'SI PRODUCTION ', 88, N'088', N'Co-Pro & Verification')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 3, N'003', N'Corp.Human Management Center', 16, N'016', N'GENERAL AFFAIRS II', 102, N'102', N'WORKPLACE SOLUTION II ', 89, N'089', N'Project , Service & Infrastructure')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (1, N'STTB', NULL, 3, N'003', N'Corp.Human Management Center', 16, N'016', N'GENERAL AFFAIRS II', 102, N'102', N'WORKPLACE SOLUTION II ', 90, N'090', N'PM & Shift Operation')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 15, N'015', N'PRODUCTION INNOVATION I', 31, N'031', N'PRODUCTION INNOVATION I', 85, N'085', N'PRODUCTION INNOVATION I', 91, N'091', N'MGT INNO I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 15, N'015', N'PRODUCTION INNOVATION I', 31, N'031', N'PRODUCTION INNOVATION I', 60, N'060', N'MANUFACTURING DESIGN I ', 33, N'033', N'Automation')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 15, N'015', N'PRODUCTION INNOVATION I', 31, N'031', N'PRODUCTION INNOVATION I', 60, N'060', N'MANUFACTURING DESIGN I ', 15, N'015', N'System')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 15, N'015', N'PRODUCTION INNOVATION I', 31, N'031', N'PRODUCTION INNOVATION I', 60, N'060', N'MANUFACTURING DESIGN I ', 93, N'093', N'Admin')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 15, N'015', N'PRODUCTION INNOVATION I', 31, N'031', N'PRODUCTION INNOVATION I', 60, N'060', N'MANUFACTURING DESIGN I ', 94, N'094', N'ITE/Workshop')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 15, N'015', N'PRODUCTION INNOVATION I', 31, N'031', N'PRODUCTION INNOVATION I', 61, N'061', N'MANUFACTURING DESIGN II ', 95, N'095', N'IM (Body)')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 14, N'014', N'PARTS QUALITY ENGINEERING I', 30, N'030', N'PARTS QUALITY ENGINEERING I', 81, N'081', N'PARTS QUALITY ENGINEERING I', 96, N'096', N'Advisor PQE I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 14, N'014', N'PARTS QUALITY ENGINEERING I', 30, N'030', N'PARTS QUALITY ENGINEERING I', 81, N'081', N'PARTS QUALITY ENGINEERING I', 97, N'097', N'MGT PQE I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 5, N'005', N'Corp. Human Management Center', 22, N'022', N'Corp. Human Management Center', 98, N'098', N'MGT CHM')
GO
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 15, N'015', N'GENERAL AFFAIRS I ', 39, N'039', N'GENERAL AFFAIRS I ', 99, N'099', N'MGT GA I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 15, N'015', N'GENERAL AFFAIRS I ', 2, N'002', N'AC LENS PRODUCTION', 100, N'100', N'AC Lens Production')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 15, N'015', N'GENERAL AFFAIRS I ', 2, N'002', N'AC LENS PRODUCTION', 101, N'101', N'MGT AC LENS')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 15, N'015', N'GENERAL AFFAIRS I ', 20, N'020', N'CHANGEABLE LENS PRODUCTION I ', 102, N'102', N'CLPD II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 15, N'015', N'GENERAL AFFAIRS I ', 20, N'020', N'CHANGEABLE LENS PRODUCTION I ', 103, N'103', N'CLPD I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 15, N'015', N'GENERAL AFFAIRS I ', 20, N'020', N'CHANGEABLE LENS PRODUCTION I ', 104, N'104', N'MGT CL PROD I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 21, N'021', N'CHANGEABLE LENS PRODUCTION II ', 105, N'105', N'CLPD II-1')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 21, N'021', N'CHANGEABLE LENS PRODUCTION II ', 106, N'106', N'CLPD II-2')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 10, N'010', N'DI ENGINEERING', 29, N'029', N'DI ENGINEERING', 107, N'107', N'MGT DI ENG')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 10, N'010', N'DI ENGINEERING', 46, N'046', N'IMAGING ENGINEERING', 108, N'108', N'Engineering Admin')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 10, N'010', N'DI ENGINEERING', 46, N'046', N'IMAGING ENGINEERING', 121, N'121', N'Quality Improvement')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 10, N'010', N'DI ENGINEERING', 46, N'046', N'IMAGING ENGINEERING', 110, N'110', N'Advisor IM ENG')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 10, N'010', N'DI ENGINEERING', 46, N'046', N'IMAGING ENGINEERING', 111, N'111', N'Technology Information')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 10, N'010', N'DI ENGINEERING', 46, N'046', N'IMAGING ENGINEERING', 112, N'112', N'MGT IM ENG')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 10, N'010', N'DI ENGINEERING', 46, N'046', N'IMAGING ENGINEERING', 113, N'113', N'Electrical ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 10, N'010', N'DI ENGINEERING', 46, N'046', N'IMAGING ENGINEERING', 114, N'114', N'Mechanical ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 11, N'011', N'DI SET BIZ. Center', 32, N'032', N'DI SET BIZ. Center', 115, N'115', N'MGT DI')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 1, N'001', N'AC ENGINEERING ', 114, N'114', N'Mechanical ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 1, N'001', N'AC ENGINEERING ', 116, N'116', N'MGT AC ENG')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 1, N'001', N'AC ENGINEERING ', 117, N'117', N'Electrical/5600s')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 1, N'001', N'AC ENGINEERING ', 118, N'118', N'Design')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 1, N'001', N'AC ENGINEERING ', 119, N'119', N'5600s')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 12, N'012', N'AUTOMOTIVE CAMERA PRODUCTION ', 120, N'120', N'Operation Control')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 12, N'012', N'AUTOMOTIVE CAMERA PRODUCTION ', 121, N'121', N'Quality Improvement ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 12, N'012', N'AUTOMOTIVE CAMERA PRODUCTION ', 122, N'122', N'MGT AC PD')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 10, N'010', N'AUTOMOTIVE AUTO MOUNT ', 123, N'123', N'Machine')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 10, N'010', N'AUTOMOTIVE AUTO MOUNT ', 124, N'124', N'Engineer')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 6, N'006', N'Corporate Material Management Center', 23, N'023', N'Corporate Material Management Center', 125, N'125', N'MGT CMM')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 23, N'023', N'MATERIAL CONTROL & LOGISTICS', 58, N'058', N'LOGISTICS ', 126, N'126', N'Logistics I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 23, N'023', N'MATERIAL CONTROL & LOGISTICS', 58, N'058', N'LOGISTICS ', 127, N'127', N'Logistics II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 4, N'004', N'BUSINESS PLANNING I', 19, N'019', N'BUSINESS PLANNING I', 128, N'128', N'MGT BIZ PLAN I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 4, N'004', N'BUSINESS PLANNING I', 18, N'018', N'BUSINESS CONTROL II ', 129, N'129', N'BC II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 12, N'012', N'MD', 24, N'024', N'MD', 64, N'064', N'MD', 130, N'130', N'MGT MD')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 7, N'007', N'CWS-Asia Pacific Office', 9, N'009', N'CWS-Asia Pacific Office', 28, N'028', N'CWS-Asia Pacific Office', 131, N'131', N'CWS')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 7, N'007', N'CWS-Asia Pacific Office', 9, N'009', N'CWS-Asia Pacific Office', 28, N'028', N'CWS-Asia Pacific Office', 132, N'132', N'Advisor')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 10, N'010', N'Factory Manager Chonburi', 13, N'013', N'Factory Manager Chonburi', 37, N'037', N'Factory Manager Chonburi', 133, N'133', N'FMC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 15, N'015', N'PRODUCTION INNOVATION I', 31, N'031', N'PRODUCTION INNOVATION I', 61, N'061', N'MANUFACTURING DESIGN II ', 134, N'134', N'CL (Lens)')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 15, N'015', N'PRODUCTION INNOVATION I', 31, N'031', N'PRODUCTION INNOVATION I', 61, N'061', N'MANUFACTURING DESIGN II ', 135, N'135', N'MGT MED I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 15, N'015', N'PRODUCTION INNOVATION I', 31, N'031', N'PRODUCTION INNOVATION I', 61, N'061', N'MANUFACTURING DESIGN II ', 136, N'136', N'AC-Lens')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 15, N'015', N'PRODUCTION INNOVATION I', 31, N'031', N'PRODUCTION INNOVATION I', 61, N'061', N'MANUFACTURING DESIGN II ', 137, N'137', N'AC ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 15, N'015', N'PRODUCTION INNOVATION I', 31, N'031', N'PRODUCTION INNOVATION I', 61, N'061', N'MANUFACTURING DESIGN II ', 138, N'138', N'eV/Line Fit')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 15, N'015', N'PRODUCTION INNOVATION I', 31, N'031', N'PRODUCTION INNOVATION I', 88, N'088', N'PRODUCTION RESOURCES CONTROL ', 139, N'139', N'PRC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 16, N'016', N'QUALITY ASSURANCE I', 35, N'035', N'QUALITY ASSURANCE I', 91, N'091', N'QUALITY ASSURANCE I', 140, N'140', N'MGT MFD II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 16, N'016', N'QUALITY ASSURANCE I', 35, N'035', N'QUALITY ASSURANCE I', 31, N'031', N'DI PRODUCT ASSURANCE ', 141, N'141', N'ILC Body')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 16, N'016', N'QUALITY ASSURANCE I', 35, N'035', N'QUALITY ASSURANCE I', 31, N'031', N'DI PRODUCT ASSURANCE ', 142, N'142', N'ILC Lens')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 16, N'016', N'QUALITY ASSURANCE I', 35, N'035', N'QUALITY ASSURANCE I', 31, N'031', N'DI PRODUCT ASSURANCE ', 17, N'017', N'MGT')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 16, N'016', N'QUALITY ASSURANCE I', 35, N'035', N'QUALITY ASSURANCE I', 31, N'031', N'DI PRODUCT ASSURANCE ', 143, N'143', N'Office & Interpreter')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 16, N'016', N'QUALITY ASSURANCE I', 35, N'035', N'QUALITY ASSURANCE I', 8, N'008', N'AUDIO PRODUCT ASSURANCE ', 144, N'144', N'MGT AU PA')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 16, N'016', N'QUALITY ASSURANCE I', 35, N'035', N'QUALITY ASSURANCE I', 8, N'008', N'AUDIO PRODUCT ASSURANCE ', 145, N'145', N'Audio/LF ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 16, N'016', N'QUALITY ASSURANCE I', 35, N'035', N'QUALITY ASSURANCE I', 90, N'090', N'QMS & CS ', 146, N'146', N'AM/QC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 16, N'016', N'QUALITY ASSURANCE I', 35, N'035', N'QUALITY ASSURANCE I', 90, N'090', N'QMS & CS ', 147, N'147', N'Audit/QMS')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 16, N'016', N'QUALITY ASSURANCE I', 35, N'035', N'QUALITY ASSURANCE I', 90, N'090', N'QMS & CS ', 148, N'148', N'CS & Refurbish')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 16, N'016', N'QUALITY ASSURANCE I', 35, N'035', N'QUALITY ASSURANCE I', 90, N'090', N'QMS & CS ', 149, N'149', N'B2B & PS')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 16, N'016', N'QUALITY ASSURANCE I', 35, N'035', N'QUALITY ASSURANCE I', 3, N'003', N'AC PRODUCT ASSURANCE ', 150, N'150', N'MGT AC PA')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 16, N'016', N'QUALITY ASSURANCE I', 35, N'035', N'QUALITY ASSURANCE I', 3, N'003', N'AC PRODUCT ASSURANCE ', 137, N'137', N'AC ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 14, N'014', N'PARTS QUALITY ENGINEERING I', 30, N'030', N'PARTS QUALITY ENGINEERING I', 81, N'081', N'PARTS QUALITY ENGINEERING I', 151, N'151', N'Body ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 14, N'014', N'PARTS QUALITY ENGINEERING I', 30, N'030', N'PARTS QUALITY ENGINEERING I', 81, N'081', N'PARTS QUALITY ENGINEERING I', 152, N'152', N'CL ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 14, N'014', N'PARTS QUALITY ENGINEERING I', 30, N'030', N'PARTS QUALITY ENGINEERING I', 81, N'081', N'PARTS QUALITY ENGINEERING I', 153, N'153', N'ATM')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 14, N'014', N'PARTS QUALITY ENGINEERING I', 30, N'030', N'PARTS QUALITY ENGINEERING I', 82, N'082', N'PARTS QUALITY ENGINEERING II ', 154, N'154', N'MGT PQE II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 14, N'014', N'PARTS QUALITY ENGINEERING I', 30, N'030', N'PARTS QUALITY ENGINEERING I', 82, N'082', N'PARTS QUALITY ENGINEERING II ', 155, N'155', N'Development ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 14, N'014', N'PARTS QUALITY ENGINEERING I', 30, N'030', N'PARTS QUALITY ENGINEERING I', 82, N'082', N'PARTS QUALITY ENGINEERING II ', 156, N'156', N'Elec')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 14, N'014', N'PARTS QUALITY ENGINEERING I', 30, N'030', N'PARTS QUALITY ENGINEERING I', 82, N'082', N'PARTS QUALITY ENGINEERING II ', 157, N'157', N'Strategy Planning')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 14, N'014', N'PARTS QUALITY ENGINEERING I', 30, N'030', N'PARTS QUALITY ENGINEERING I', 83, N'083', N'PARTS QUALITY ENGINEERING III ', 158, N'158', N'IQC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 14, N'014', N'PARTS QUALITY ENGINEERING I', 30, N'030', N'PARTS QUALITY ENGINEERING I', 83, N'083', N'PARTS QUALITY ENGINEERING III ', 159, N'159', N'OQC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 14, N'014', N'PARTS QUALITY ENGINEERING I', 30, N'030', N'PARTS QUALITY ENGINEERING I', 83, N'083', N'PARTS QUALITY ENGINEERING III ', 160, N'160', N'MGT PQE III')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 15, N'015', N'GENERAL AFFAIRS I ', 39, N'039', N'GENERAL AFFAIRS I ', 161, N'161', N'Employee Service')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 15, N'015', N'GENERAL AFFAIRS I ', 39, N'039', N'GENERAL AFFAIRS I ', 23, N'023', N'Transportation')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 15, N'015', N'GENERAL AFFAIRS I ', 39, N'039', N'GENERAL AFFAIRS I ', 163, N'163', N'Manpower from Production')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 15, N'015', N'GENERAL AFFAIRS I ', 39, N'039', N'GENERAL AFFAIRS I ', 164, N'164', N'Canteen Service')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 15, N'015', N'GENERAL AFFAIRS I ', 39, N'039', N'GENERAL AFFAIRS I ', 165, N'165', N'EC & Office Service')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 17, N'017', N'HUMAN RESOURCES', 42, N'042', N'HUMAN RESOURCES', 166, N'166', N'MGT HR')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 17, N'017', N'HUMAN RESOURCES', 43, N'043', N'HUMAN RESOURCES MANAGEMENT ', 167, N'167', N'Compensation')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 17, N'017', N'HUMAN RESOURCES', 43, N'043', N'HUMAN RESOURCES MANAGEMENT ', 168, N'168', N'Payroll')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 17, N'017', N'HUMAN RESOURCES', 43, N'043', N'HUMAN RESOURCES MANAGEMENT ', 169, N'169', N'Regulatory & DM')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 17, N'017', N'HUMAN RESOURCES', 43, N'043', N'HUMAN RESOURCES MANAGEMENT ', 17, N'017', N'MGT')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 17, N'017', N'HUMAN RESOURCES', 41, N'041', N'HROD & TRAINING', 170, N'170', N'Recruit & Retain')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 17, N'017', N'HUMAN RESOURCES', 41, N'041', N'HROD & TRAINING', 171, N'171', N'Human & Organization Development')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 17, N'017', N'HUMAN RESOURCES', 41, N'041', N'HROD & TRAINING', 172, N'172', N'MGT HROD')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 25, N'025', N'MD OFFICE', 65, N'065', N'MD OFFICE', 173, N'173', N'MD Office')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 15, N'015', N'GENERAL AFFAIRS I ', 94, N'094', N'SECURITY & SHE I ', 174, N'174', N'Security')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 15, N'015', N'GENERAL AFFAIRS I ', 94, N'094', N'SECURITY & SHE I ', 175, N'175', N'Safety, Health &Environment ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 15, N'015', N'GENERAL AFFAIRS I ', 101, N'101', N'WORKPLACE SOLUTION I ', 176, N'176', N'Project')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 15, N'015', N'GENERAL AFFAIRS I ', 101, N'101', N'WORKPLACE SOLUTION I ', 177, N'177', N'Maintenance')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 2, N'002', N'Corp. Human Management Center', 15, N'015', N'GENERAL AFFAIRS I ', 101, N'101', N'WORKPLACE SOLUTION I ', 178, N'178', N'MGT WS I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 21, N'021', N'CHANGEABLE LENS PRODUCTION II ', 179, N'179', N'MGT CL PROD II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 56, N'056', N'LENS PRODUCTION ENGINEERING ', 180, N'180', N'CLPD II-PCE')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 56, N'056', N'LENS PRODUCTION ENGINEERING ', 181, N'181', N'CLPD I-PCE')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 56, N'056', N'LENS PRODUCTION ENGINEERING ', 182, N'182', N'CLPD II-MFE')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 56, N'056', N'LENS PRODUCTION ENGINEERING ', 183, N'183', N'CLPD I-MFE')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 56, N'056', N'LENS PRODUCTION ENGINEERING ', 184, N'184', N'AC-MFE')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 56, N'056', N'LENS PRODUCTION ENGINEERING ', 185, N'185', N'MGT LEN PE')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 20, N'020', N'Lens BIZ. Center', 52, N'052', N'Lens BIZ. Center', 186, N'186', N'Advisor Len Biz.')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 20, N'020', N'Lens BIZ. Center', 52, N'052', N'Lens BIZ. Center', 187, N'187', N'MGT Len Biz.')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 55, N'055', N'LENS PRODUCTION CONTROL ', 188, N'188', N'Packing / SFG')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 55, N'055', N'LENS PRODUCTION CONTROL ', 189, N'189', N'Quality / SMLD ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 55, N'055', N'LENS PRODUCTION CONTROL ', 190, N'190', N'Manpower / Cost Control')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 55, N'055', N'LENS PRODUCTION CONTROL ', 191, N'191', N'MGT LENS CONT')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 55, N'055', N'LENS PRODUCTION CONTROL ', 192, N'192', N'Part control / Spoilage')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 21, N'021', N'LENS ENGINEERING', 53, N'053', N'LENS ENGINEERING ', 193, N'193', N'MGT LENS ENG')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 21, N'021', N'LENS ENGINEERING', 53, N'053', N'LENS ENGINEERING ', 194, N'194', N'Advisor LENS ENG')
GO
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 21, N'021', N'LENS ENGINEERING', 53, N'053', N'LENS ENGINEERING ', 195, N'195', N'Control ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 21, N'021', N'LENS ENGINEERING', 53, N'053', N'LENS ENGINEERING ', 196, N'196', N'Current Model')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 21, N'021', N'LENS ENGINEERING', 53, N'053', N'LENS ENGINEERING ', 197, N'197', N'New Model ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 21, N'021', N'LENS ENGINEERING', 53, N'053', N'LENS ENGINEERING ', 198, N'198', N'AC Lens')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 11, N'011', N'Lens BIZ. Center', 22, N'022', N'LENS PRODUCTION', 54, N'054', N'LENS PRODUCTION', 199, N'199', N'MGT LENS PROD')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 4, N'004', N'ALPHA PRODUCTION I', 200, N'200', N'Alpha I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 4, N'004', N'ALPHA PRODUCTION I', 201, N'201', N'MGT ALPHA I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 5, N'005', N'ALPHA PRODUCTION II  ', 202, N'202', N'Alpha II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 5, N'005', N'ALPHA PRODUCTION II  ', 203, N'203', N'MGT ALPHA II')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 44, N'044', N'IM AUTO MOUNT ', 204, N'204', N'Production')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 44, N'044', N'IM AUTO MOUNT ', 195, N'195', N'Control ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 44, N'044', N'IM AUTO MOUNT ', 205, N'205', N'Program')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 44, N'044', N'IM AUTO MOUNT ', 124, N'124', N'Engineer')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 44, N'044', N'IM AUTO MOUNT ', 206, N'206', N'MGT IM AM')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 45, N'045', N'IM PRODUCTION ENGINEERING ', 207, N'207', N'Manufacturing Engineering')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 45, N'045', N'IM PRODUCTION ENGINEERING ', 34, N'034', N'Process Engineering')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 45, N'045', N'IM PRODUCTION ENGINEERING ', 208, N'208', N'MGT IM PE')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 47, N'047', N'IMAGING PRODUCTION', 209, N'209', N'MGT IM PROD')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 50, N'050', N'KEY DEVICE PRODUCTION ', 210, N'210', N'KDV')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 8, N'008', N'DI SET BIZ. Center', 18, N'018', N'IMAGING PRODUCTION', 50, N'050', N'KEY DEVICE PRODUCTION ', 211, N'211', N'MGT KDV')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 2, N'002', N'Automotive BIZ. Center', 11, N'011', N'Automotive BIZ. Center', 212, N'212', N'MGT ATM Biz.')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 10, N'010', N'AUTOMOTIVE AUTO MOUNT ', 195, N'195', N'Control')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 10, N'010', N'AUTOMOTIVE AUTO MOUNT ', 214, N'214', N'MGT ATM AM')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 10, N'010', N'AUTOMOTIVE AUTO MOUNT ', 204, N'204', N'Production')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 15, N'015', N'AUTOMOTIVE PRODUCTION ENGINEERING ', 215, N'215', N'AC Manufacturing Engineer')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 15, N'015', N'AUTOMOTIVE PRODUCTION ENGINEERING ', 216, N'216', N'AC Process Engineer')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 15, N'015', N'AUTOMOTIVE PRODUCTION ENGINEERING ', 217, N'217', N'AU Process Engineer')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 15, N'015', N'AUTOMOTIVE PRODUCTION ENGINEERING ', 218, N'218', N'MGT ATM PDE')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 15, N'015', N'AUTOMOTIVE PRODUCTION ENGINEERING ', 219, N'219', N'AU Manufacturing Engineer')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 14, N'014', N'AUTOMOTIVE PRODUCTION ', 220, N'220', N'MGT ATM PROD')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 7, N'007', N'AU ENGINEERING ', 221, N'221', N'Eng. Support')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 7, N'007', N'AU ENGINEERING ', 222, N'222', N'MGT AU ENG')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 7, N'007', N'AU ENGINEERING ', 223, N'223', N'Mechanical Eng.')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 7, N'007', N'AU ENGINEERING ', 224, N'224', N'Electrical Eng.')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 9, N'009', N'AUDIO PRODUCTION ', 120, N'120', N'Operation Control ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 9, N'009', N'AUDIO PRODUCTION ', 121, N'121', N'Quality Improvement ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 1, N'001', N'ATM PROD', 9, N'009', N'AUDIO PRODUCTION ', 226, N'226', N'MGT AU PD')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 13, N'013', N'AUTOMOTIVE ENGINEERING', 227, N'227', N'Advisor ATM ENG')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 13, N'013', N'AUTOMOTIVE ENGINEERING', 228, N'228', N'MGT ATM ENG')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 33, N'033', N'ELECTRICAL DESIGN ', 229, N'229', N'MGT EE DS')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 33, N'033', N'ELECTRICAL DESIGN ', 230, N'230', N'E3 ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 33, N'033', N'ELECTRICAL DESIGN ', 231, N'231', N'E1 ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 33, N'033', N'ELECTRICAL DESIGN ', 232, N'232', N'E2 ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 66, N'066', N'MECHANICAL DESIGN', 233, N'233', N'MGT ME DS')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 66, N'066', N'MECHANICAL DESIGN', 234, N'234', N'M3 ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 66, N'066', N'MECHANICAL DESIGN', 235, N'235', N'M1 ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 66, N'066', N'MECHANICAL DESIGN', 236, N'236', N'M2 ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 66, N'066', N'MECHANICAL DESIGN', 237, N'237', N'M4 ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 97, N'097', N'SOFTWARE DESIGN ', 238, N'238', N'MGT SW DS')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 97, N'097', N'SOFTWARE DESIGN ', 239, N'239', N'Software Quality Assurance')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 97, N'097', N'SOFTWARE DESIGN ', 240, N'240', N'Software Development')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 57, N'057', N'Line-Fit Design ', 241, N'241', N'Design Support')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 57, N'057', N'Line-Fit Design ', 242, N'242', N'MGT Line-Fit')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 57, N'057', N'Line-Fit Design ', 113, N'113', N'Electrical ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 1, N'001', N'Automotive BIZ. Center', 3, N'003', N'AUTOMOTIVE ENGINEERING', 57, N'057', N'Line-Fit Design ', 114, N'114', N'Mechanical ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 23, N'023', N'MATERIAL CONTROL & LOGISTICS', 62, N'062', N'MATERIAL CONTROL & LOGISTICS', 243, N'243', N'MGT MC & LOG')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 23, N'023', N'MATERIAL CONTROL & LOGISTICS', 63, N'063', N'MATERIAL CONTROL I ', 244, N'244', N'DI W/H')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 23, N'023', N'MATERIAL CONTROL & LOGISTICS', 63, N'063', N'MATERIAL CONTROL I ', 245, N'245', N'ATM W/H & MC Control')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 23, N'023', N'MATERIAL CONTROL & LOGISTICS', 63, N'063', N'MATERIAL CONTROL I ', 246, N'246', N'MGT MC I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 34, N'034', N'PURCHASING', 35, N'035', N'ELECTRICAL PURCHASING ', 247, N'247', N'Cor. Indirect Purchase , Data Control')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 34, N'034', N'PURCHASING', 35, N'035', N'ELECTRICAL PURCHASING ', 17, N'017', N'MGT')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 34, N'034', N'PURCHASING', 35, N'035', N'ELECTRICAL PURCHASING ', 248, N'248', N'eV & LF')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 34, N'034', N'PURCHASING', 35, N'035', N'ELECTRICAL PURCHASING ', 249, N'249', N'AC & ILC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 34, N'034', N'PURCHASING', 68, N'068', N'MECHANICAL PURCHASING ', 132, N'132', N'Advisor')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 34, N'034', N'PURCHASING', 68, N'068', N'MECHANICAL PURCHASING ', 250, N'250', N'KEY Mechanical & JIT MR')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 34, N'034', N'PURCHASING', 68, N'068', N'MECHANICAL PURCHASING ', 251, N'251', N'MGT MECH PUR')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 34, N'034', N'PURCHASING', 68, N'068', N'MECHANICAL PURCHASING ', 252, N'252', N'LENS & IPO')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 34, N'034', N'PURCHASING', 68, N'068', N'MECHANICAL PURCHASING ', 253, N'253', N'Mechanic & Packaging')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 34, N'034', N'PURCHASING', 68, N'068', N'MECHANICAL PURCHASING ', 254, N'254', N'Elec-mechanics & Electronic')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 34, N'034', N'PURCHASING', 68, N'068', N'MECHANICAL PURCHASING ', 247, N'247', N'Cor. Indirect Purchase , Data Control')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 34, N'034', N'PURCHASING', 68, N'068', N'MECHANICAL PURCHASING ', 255, N'255', N'MGT Mobile PUR')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 34, N'034', N'PURCHASING', 68, N'068', N'MECHANICAL PURCHASING ', 256, N'256', N'Advisor Mobile PUR')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 34, N'034', N'PURCHASING', 89, N'089', N'PURCHASING', 257, N'257', N'MGT PUR')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 38, N'038', N'SOURCING', 78, N'078', N'MOBILE SOURCING', 258, N'258', N'MGT Mobile SC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 38, N'038', N'SOURCING', 78, N'078', N'MOBILE SOURCING', 259, N'259', N'New Model Sourcing')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 38, N'038', N'SOURCING', 80, N'080', N'NEW MODEL SOURCING ', 137, N'137', N'AC ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 38, N'038', N'SOURCING', 80, N'080', N'NEW MODEL SOURCING ', 145, N'145', N'Audio/LF ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 4, N'004', N'BUSINESS PLANNING I', 17, N'017', N'BUSINESS CONTROL I ', 260, N'260', N'BC I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 7, N'007', N'Corporate Planning & Control Center', 24, N'024', N'Corporate Planning & Control Center', 261, N'261', N'MGT Corp plan. C')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 14, N'014', N'FINANCE & COMPLIANCE CONTROL', 38, N'038', N'FINANCIAL CONTROL ', 262, N'262', N'General A/C STTC Unit')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 14, N'014', N'FINANCE & COMPLIANCE CONTROL', 38, N'038', N'FINANCIAL CONTROL ', 263, N'263', N'MGT FC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 14, N'014', N'FINANCE & COMPLIANCE CONTROL', 38, N'038', N'FINANCIAL CONTROL ', 264, N'264', N'Costing ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 14, N'014', N'FINANCE & COMPLIANCE CONTROL', 38, N'038', N'FINANCIAL CONTROL ', 265, N'265', N'Finance')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 14, N'014', N'FINANCE & COMPLIANCE CONTROL', 51, N'051', N'LEGAL &  COMPLIANCE ', 266, N'266', N'MGT LCO')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 14, N'014', N'FINANCE & COMPLIANCE CONTROL', 51, N'051', N'LEGAL &  COMPLIANCE ', 267, N'267', N'Legal & Corporate Compliance')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 14, N'014', N'FINANCE & COMPLIANCE CONTROL', 51, N'051', N'LEGAL &  COMPLIANCE ', 268, N'268', N'Tax Incentive & Government Affair')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 14, N'014', N'FINANCE & COMPLIANCE CONTROL', 38, N'038', N'FINANCIAL CONTROL ', 269, N'269', N'General A/C STTB Unit')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 19, N'019', N'INFORMATION SYSTEM SOLUTION', 49, N'049', N'INFRASTRUCTURE COMMUNICATION TECHNOLOGY', 270, N'270', N'Endpoint Service& Security Control (STTC)')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 19, N'019', N'INFORMATION SYSTEM SOLUTION', 48, N'048', N'INFORMATION SYSTEM SOLUTION', 271, N'271', N'MGT ISS')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 19, N'019', N'INFORMATION SYSTEM SOLUTION', 16, N'016', N'BUSINESS APPLICATION ', 272, N'272', N'Business Application (STTC)')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 19, N'019', N'INFORMATION SYSTEM SOLUTION', 49, N'049', N'INFRASTRUCTURE COMMUNICATION TECHNOLOGY', 273, N'273', N'Infra Solution (STTC)')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 19, N'019', N'INFORMATION SYSTEM SOLUTION', 49, N'049', N'INFRASTRUCTURE COMMUNICATION TECHNOLOGY', 274, N'274', N'MGT ICT')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 19, N'019', N'INFORMATION SYSTEM SOLUTION', 16, N'016', N'BUSINESS APPLICATION ', 275, N'275', N'MGT BA')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 19, N'019', N'INFORMATION SYSTEM SOLUTION', 16, N'016', N'BUSINESS APPLICATION ', 276, N'276', N'Business Application (STTB)')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 19, N'019', N'INFORMATION SYSTEM SOLUTION', 49, N'049', N'INFRASTRUCTURE COMMUNICATION TECHNOLOGY', 277, N'277', N'Endpoint Service& Security Control (STTB)')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 19, N'019', N'INFORMATION SYSTEM SOLUTION', 49, N'049', N'INFRASTRUCTURE COMMUNICATION TECHNOLOGY', 278, N'278', N'Infra Solution (STTB)')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 33, N'033', N'PRODUCTION PLANNING I', 87, N'087', N'PRODUCTION PLANNING I', 279, N'279', N'MGT Plan I')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 33, N'033', N'PRODUCTION PLANNING I', 30, N'030', N'DI PLANNING ', 132, N'132', N'Advisor')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 33, N'033', N'PRODUCTION PLANNING I', 30, N'030', N'DI PLANNING ', 151, N'151', N'Body ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 33, N'033', N'PRODUCTION PLANNING I', 30, N'030', N'DI PLANNING ', 152, N'152', N'CL ')
GO
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 33, N'033', N'PRODUCTION PLANNING I', 30, N'030', N'DI PLANNING ', 280, N'280', N'MGT DI PLAN')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 33, N'033', N'PRODUCTION PLANNING I', 6, N'006', N'ATM PLAN', 281, N'281', N'MGT ATM PLAN')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 33, N'033', N'PRODUCTION PLANNING I', 6, N'006', N'ATM PLAN', 282, N'282', N'eV/Line-fit')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 6, N'006', N'Corporate Planning & Control Center', 33, N'033', N'PRODUCTION PLANNING I', 6, N'006', N'ATM PLAN', 137, N'137', N'AC ')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 38, N'038', N'SOURCING', 80, N'080', N'NEW MODEL SOURCING ', 283, N'283', N'ILC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 38, N'038', N'SOURCING', 98, N'098', N'SOURCING', 284, N'284', N'Advisor SC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 38, N'038', N'SOURCING', 98, N'098', N'SOURCING', 285, N'285', N'MGT SC')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 38, N'038', N'SOURCING', 99, N'099', N'SOURCING CONTROL ', 286, N'286', N'Part Approval')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 38, N'038', N'SOURCING', 99, N'099', N'SOURCING CONTROL ', 287, N'287', N'MGT SC CONT')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 38, N'038', N'SOURCING', 99, N'099', N'SOURCING CONTROL ', 288, N'288', N'Tooling Control')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 38, N'038', N'SOURCING', 99, N'099', N'SOURCING CONTROL ', 289, N'289', N'GP/AQAS Audit Partner')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 5, N'005', N'Corporate Material Management Center', 38, N'038', N'SOURCING', 99, N'099', N'SOURCING CONTROL ', 290, N'290', N'Packing')
INSERT [dbo].[z_tempOrgChart] ([ID_plant], [PlantCode], [PlantName], [ID_Center], [CenterCode], [CenterName], [ID_Division], [DivisionCode], [DivisionName], [ID_Department], [DepartmentCode], [DepartmentName], [ID_Section], [SectionCode], [SectionName]) VALUES (2, N'STTC', NULL, 18, N'018', N'SAFETY, OCCUPATIONAL HEALTH & ENVIRONMENT OFFICE', 37, N'037', N'SAFETY, OCCUPATIONAL HEALTH & ENVIRONMENT OFFICE', 93, N'093', N'SAFETY, OCCUPATIONAL HEALTH & ENVIRONMENT OFFICE', 291, N'291', N'SAFETY, OCCUPATIONAL HEALTH & ENVIRONMENT OFFICE')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (1, N'001', N'MGT BC II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (2, N'002', N'MFC cost control', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (3, N'003', N'MGT Corp plan. B', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (4, N'004', N'EE III', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (5, N'005', N'MGT EE', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (6, N'006', N'EE I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (7, N'007', N'EE IIII', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (8, N'008', N'EE II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (9, N'009', N'ME I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (10, N'010', N'Advisor CQM', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (11, N'011', N'Calibration', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (12, N'012', N'QMS', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (13, N'013', N'CM', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (14, N'014', N'MGT CQM', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (15, N'015', N'System', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (16, N'016', N'ME II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (17, N'017', N'MGT', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (18, N'018', N'ME III', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (19, N'019', N'Advisor ENG', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (20, N'020', N'MGT ENG', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (21, N'021', N'MGT FMB', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (22, N'022', N'Canteen & Cleaning', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (23, N'023', N'Transportation ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (24, N'024', N'MGT GA II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (25, N'025', N'Admin & Expat Service', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (26, N'026', N'ME', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (27, N'027', N'SI', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (28, N'028', N'IQC&OQC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (29, N'029', N'EM', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (30, N'030', N'MGT NMM', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (31, N'031', N'IP ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (32, N'032', N'PCM', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (33, N'033', N'Automation ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (34, N'034', N'Process engineering', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (35, N'035', N'AIT Mech', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (36, N'036', N'Fixture Design', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (37, N'037', N'MGT MFD', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (38, N'038', N'MGT INNO II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (39, N'039', N'MGT TEST', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (40, N'040', N'Advisor  TEST', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (41, N'041', N'Admin/Spare part', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (42, N'042', N'Test Design', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (43, N'043', N'AIT TD', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (44, N'044', N'Sys Development (BIOS)', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (45, N'045', N'Smart system', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (46, N'046', N'MGT Mobile Center', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (47, N'047', N'Advisor Mobile Center', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (48, N'048', N'Advisor CU', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (49, N'049', N'MGT Mobile plan', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (50, N'050', N'SMA Team', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (51, N'051', N'Planning I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (52, N'052', N'Plannning II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (53, N'053', N'QC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (54, N'054', N'QA', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (55, N'055', N'MGT MPA', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (56, N'056', N'FPQM', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (57, N'057', N'RW/AMS', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (58, N'058', N'Flagship', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (59, N'059', N'Standard', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (60, N'060', N'MGT CU', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (61, N'061', N'Manpower/Training', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (62, N'062', N'MC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (63, N'063', N'SI&IP WH', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (64, N'064', N'CU WH', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (65, N'065', N'MGT MMC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (66, N'066', N'OWH', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (67, N'067', N'SFG', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (68, N'068', N'Advisor Mobile Prod.', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (69, N'069', N'MGT Mobile Prod.', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (70, N'070', N'SMA PD', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (71, N'071', N'SMT Eng.', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (72, N'072', N'SMT M/C', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (73, N'073', N'MGT SMA & BT', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (74, N'074', N'MGT QAII', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (75, N'075', N'SS II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (76, N'076', N'MGT SS', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (77, N'077', N'PBA QM', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (78, N'078', N'BT RCA', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (79, N'079', N'BT PD', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (80, N'080', N'MNT', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (81, N'081', N'PUM/IP', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (82, N'082', N'Line Set up', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (83, N'083', N'MGT MPE', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (84, N'084', N'Flagship Model', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (85, N'085', N'Mid Class Model', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (86, N'086', N'MGT SI', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (87, N'087', N'FGWH', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (88, N'088', N'Co-Pro & Verification', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (89, N'089', N'Project , Service & Infrastructure', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (90, N'090', N'PM & Shift Operation', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (91, N'091', N'MGT INNO I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (92, N'092', N'Automation', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (93, N'093', N'Admin', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (94, N'094', N'ITE/Workshop', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (95, N'095', N'IM (Body)', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (96, N'096', N'Advisor PQE I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (97, N'097', N'MGT PQE I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (98, N'098', N'MGT CHM', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (99, N'099', N'MGT GA I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (100, N'100', N'AC Lens Production', N'Active')
GO
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (101, N'101', N'MGT AC LENS', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (102, N'102', N'CLPD II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (103, N'103', N'CLPD I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (104, N'104', N'MGT CL PROD I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (105, N'105', N'CLPD II-1', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (106, N'106', N'CLPD II-2', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (107, N'107', N'MGT DI ENG', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (108, N'108', N'Engineering Admin', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (109, N'109', N'Quality Improvement', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (110, N'110', N'Advisor IM ENG', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (111, N'111', N'Technology Information', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (112, N'112', N'MGT IM ENG', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (113, N'113', N'Electrical ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (114, N'114', N'Mechanical ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (115, N'115', N'MGT DI', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (116, N'116', N'MGT AC ENG', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (117, N'117', N'Electrical/5600s', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (118, N'118', N'Design', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (119, N'119', N'5600s', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (120, N'120', N'Operation Control', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (121, N'121', N'Quality Improvement ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (122, N'122', N'MGT AC PD', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (123, N'123', N'Machine', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (124, N'124', N'Engineer', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (125, N'125', N'MGT CMM', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (126, N'126', N'Logistics I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (127, N'127', N'Logistics II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (128, N'128', N'MGT BIZ PLAN I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (129, N'129', N'BC II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (130, N'130', N'MGT MD', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (131, N'131', N'CWS', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (132, N'132', N'Advisor', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (133, N'133', N'FMC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (134, N'134', N'CL (Lens)', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (135, N'135', N'MGT MED I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (136, N'136', N'AC-Lens', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (137, N'137', N'AC ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (138, N'138', N'eV/Line Fit', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (139, N'139', N'PRC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (140, N'140', N'MGT MFD II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (141, N'141', N'ILC Body', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (142, N'142', N'ILC Lens', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (143, N'143', N'Office & Interpreter', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (144, N'144', N'MGT AU PA', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (145, N'145', N'Audio/LF ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (146, N'146', N'AM/QC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (147, N'147', N'Audit/QMS', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (148, N'148', N'CS & Refurbish', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (149, N'149', N'B2B & PS', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (150, N'150', N'MGT AC PA', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (151, N'151', N'Body ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (152, N'152', N'CL ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (153, N'153', N'ATM', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (154, N'154', N'MGT PQE II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (155, N'155', N'Development ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (156, N'156', N'Elec', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (157, N'157', N'Strategy Planning', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (158, N'158', N'IQC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (159, N'159', N'OQC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (160, N'160', N'MGT PQE III', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (161, N'161', N'Employee Service', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (162, N'162', N'Transportation', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (163, N'163', N'Manpower from Production', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (164, N'164', N'Canteen Service', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (165, N'165', N'EC & Office Service', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (166, N'166', N'MGT HR', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (167, N'167', N'Compensation', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (168, N'168', N'Payroll', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (169, N'169', N'Regulatory & DM', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (170, N'170', N'Recruit & Retain', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (171, N'171', N'Human & Organization Development', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (172, N'172', N'MGT HROD', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (173, N'173', N'MD Office', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (174, N'174', N'Security', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (175, N'175', N'Safety, Health &Environment ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (176, N'176', N'Project', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (177, N'177', N'Maintenance', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (178, N'178', N'MGT WS I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (179, N'179', N'MGT CL PROD II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (180, N'180', N'CLPD II-PCE', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (181, N'181', N'CLPD I-PCE', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (182, N'182', N'CLPD II-MFE', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (183, N'183', N'CLPD I-MFE', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (184, N'184', N'AC-MFE', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (185, N'185', N'MGT LEN PE', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (186, N'186', N'Advisor Len Biz.', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (187, N'187', N'MGT Len Biz.', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (188, N'188', N'Packing / SFG', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (189, N'189', N'Quality / SMLD ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (190, N'190', N'Manpower / Cost Control', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (191, N'191', N'MGT LENS CONT', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (192, N'192', N'Part control / Spoilage', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (193, N'193', N'MGT LENS ENG', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (194, N'194', N'Advisor LENS ENG', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (195, N'195', N'Control ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (196, N'196', N'Current Model', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (197, N'197', N'New Model ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (198, N'198', N'AC Lens', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (199, N'199', N'MGT LENS PROD', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (200, N'200', N'Alpha I', N'Active')
GO
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (201, N'201', N'MGT ALPHA I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (202, N'202', N'Alpha II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (203, N'203', N'MGT ALPHA II', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (204, N'204', N'Production', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (205, N'205', N'Program', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (206, N'206', N'MGT IM AM', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (207, N'207', N'Manufacturing Engineering', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (208, N'208', N'MGT IM PE', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (209, N'209', N'MGT IM PROD', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (210, N'210', N'KDV', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (211, N'211', N'MGT KDV', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (212, N'212', N'MGT ATM Biz.', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (213, N'213', N'Control', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (214, N'214', N'MGT ATM AM', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (215, N'215', N'AC Manufacturing Engineer', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (216, N'216', N'AC Process Engineer', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (217, N'217', N'AU Process Engineer', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (218, N'218', N'MGT ATM PDE', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (219, N'219', N'AU Manufacturing Engineer', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (220, N'220', N'MGT ATM PROD', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (221, N'221', N'Eng. Support', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (222, N'222', N'MGT AU ENG', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (223, N'223', N'Mechanical Eng.', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (224, N'224', N'Electrical Eng.', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (225, N'225', N'Operation Control ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (226, N'226', N'MGT AU PD', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (227, N'227', N'Advisor ATM ENG', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (228, N'228', N'MGT ATM ENG', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (229, N'229', N'MGT EE DS', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (230, N'230', N'E3 ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (231, N'231', N'E1 ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (232, N'232', N'E2 ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (233, N'233', N'MGT ME DS', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (234, N'234', N'M3 ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (235, N'235', N'M1 ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (236, N'236', N'M2 ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (237, N'237', N'M4 ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (238, N'238', N'MGT SW DS', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (239, N'239', N'Software Quality Assurance', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (240, N'240', N'Software Development', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (241, N'241', N'Design Support', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (242, N'242', N'MGT Line-Fit', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (243, N'243', N'MGT MC & LOG', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (244, N'244', N'DI W/H', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (245, N'245', N'ATM W/H & MC Control', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (246, N'246', N'MGT MC I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (247, N'247', N'Cor. Indirect Purchase , Data Control', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (248, N'248', N'eV & LF', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (249, N'249', N'AC & ILC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (250, N'250', N'KEY Mechanical & JIT MR', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (251, N'251', N'MGT MECH PUR', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (252, N'252', N'LENS & IPO', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (253, N'253', N'Mechanic & Packaging', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (254, N'254', N'Elec-mechanics & Electronic', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (255, N'255', N'MGT Mobile PUR', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (256, N'256', N'Advisor Mobile PUR', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (257, N'257', N'MGT PUR', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (258, N'258', N'MGT Mobile SC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (259, N'259', N'New Model Sourcing', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (260, N'260', N'BC I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (261, N'261', N'MGT Corp plan. C', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (262, N'262', N'General A/C STTC Unit', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (263, N'263', N'MGT FC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (264, N'264', N'Costing ', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (265, N'265', N'Finance', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (266, N'266', N'MGT LCO', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (267, N'267', N'Legal & Corporate Compliance', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (268, N'268', N'Tax Incentive & Government Affair', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (269, N'269', N'General A/C STTB Unit', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (270, N'270', N'Endpoint Service& Security Control (STTC)', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (271, N'271', N'MGT ISS', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (272, N'272', N'Business Application (STTC)', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (273, N'273', N'Infra Solution (STTC)', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (274, N'274', N'MGT ICT', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (275, N'275', N'MGT BA', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (276, N'276', N'Business Application (STTB)', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (277, N'277', N'Endpoint Service& Security Control (STTB)', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (278, N'278', N'Infra Solution (STTB)', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (279, N'279', N'MGT Plan I', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (280, N'280', N'MGT DI PLAN', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (281, N'281', N'MGT ATM PLAN', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (282, N'282', N'eV/Line-fit', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (283, N'283', N'ILC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (284, N'284', N'Advisor SC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (285, N'285', N'MGT SC', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (286, N'286', N'Part Approval', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (287, N'287', N'MGT SC CONT', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (288, N'288', N'Tooling Control', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (289, N'289', N'GP/AQAS Audit Partner', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (290, N'290', N'Packing', N'Active')
INSERT [dbo].[z_tempTable] ([ID], [code], [Name], [Status]) VALUES (291, N'291', N'SAFETY, OCCUPATIONAL HEALTH & ENVIRONMENT OFFICE', N'Active')
/****** Object:  StoredProcedure [dbo].[sp_Course_select]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CourseLearnMethod_ALL]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_M_CodeLookUp_Select]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Insert]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Select]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_SelectPaging]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_M_Instructor_Update]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_PagingHelper]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_PlatformType_ALL]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Platfrom_select]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Center_READ_ALL]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Department_READ_ALL]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Division_READ_ALL]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_JobGrade_READ_ALL]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_JobTitle_READ_ALL]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Role_READ_ALL]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_RoleMenu_READ_By_Role]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Section_READ_ALL]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_User_ChangePassword]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_User_Create]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_User_Delete]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_User_READ_ALL]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_User_READ_BY_EmployeeId]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_User_ResetPassword]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_User_Update]    Script Date: 4/12/2020 9:49:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_UserRole_READ_BY_EmployeeId]    Script Date: 4/12/2020 9:49:31 PM ******/
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
