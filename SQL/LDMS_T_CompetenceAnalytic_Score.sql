/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Score]    Script Date: 4/30/2020 1:35:06 AM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic_Score]
GO

/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Score]    Script Date: 4/30/2020 1:35:06 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LDMS_T_CompetenceAnalytic_Score](
	[ID] [BIGINT] IDENTITY(1,1) NOT NULL,
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


