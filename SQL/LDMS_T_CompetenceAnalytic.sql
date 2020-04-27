USE [veraplus_ldms]
GO

/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic]    Script Date: 4/27/2020 1:05:34 AM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic]
GO

/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic]    Script Date: 4/27/2020 1:05:34 AM ******/
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
	[CreateBy] [nvarchar](50)  NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[ID_Department] [int] NULL,
	[ID_JobGrade] [int] NULL,
	[Is_Active] [TINYINT]  NOT NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


