USE [EmpSchema]
GO

/****** Object:  Table [dbo].[tbEmpDetails]    Script Date: 2/20/2019 8:12:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbEmpDetails](
	[Id] [int] IDENTITY(10086,1) NOT NULL,
	[Name] [varchar](25) NULL,
	[Email] [varchar](35) NULL,
	[EState] [varchar](25) NULL,
	[City] [varchar](25) NULL,
	[Phone] [varchar](12) NULL,
	[UserName] [varchar](25) NULL,
	[EPassword] [varchar](18) NULL,
	[Gender] [varchar](5) NULL,
	[Skill] [varchar](50) NULL,
	[Religion] [varchar](25) NULL,
	[IsActive] [bit] NULL DEFAULT ((0)),
	[RoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tbEmpDetails]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[RoleEmp] ([Id])
GO

