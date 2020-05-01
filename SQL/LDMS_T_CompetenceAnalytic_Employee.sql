/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Employee]    Script Date: 4/27/2020 1:12:15 AM ******/
DROP TABLE [dbo].[LDMS_T_CompetenceAnalytic_Employee]
GO

/****** Object:  Table [dbo].[LDMS_T_CompetenceAnalytic_Employee]    Script Date: 4/27/2020 1:12:15 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LDMS_T_CompetenceAnalytic_Employee](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_CompetenceAnalytic] [int] NOT NULL,
	[EmployeeID] [nvarchar](50) NOT NULL,
	[CreateBy] [nvarchar](50)  NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[Is_Active] [TINYINT]  NOT NULL,
 CONSTRAINT [PK_LDMS_T_CompetenceAnalytic_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


