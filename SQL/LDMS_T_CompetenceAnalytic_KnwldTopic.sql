USE [veraplus_ldms]
GO

/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]    Script Date: 4/27/2020 1:12:40 AM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]
GO

/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic]    Script Date: 4/27/2020 1:12:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LDMS_T_CompetenceAnalytic_KnwldTopic](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_CompetenceAnalytic] [int] NOT NULL,
	[ID_Course] [int] NULL,
	[KnowledgeTopicName] [nvarchar](100) NOT NULL,
	[CreateBy] [nvarchar](50)  NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[Is_Active] [TINYINT]  NOT NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic_KnwldTopicr] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


