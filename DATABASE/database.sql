CREATE TABLE [dbo].[Academic_Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rollNumber] [varchar](10) NOT NULL,
	[oldRollNumber] [varchar](50) NULL,
	[memberCode] [varchar](20) NOT NULL,
	[enrollDate] [date] NULL,
	[mode] [nvarchar](12) NOT NULL,
	[studentID] [int] NOT NULL,
 CONSTRAINT [PK_Academic_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campus_Specialized](
	[campusID] [int] NOT NULL,
	[specialzedID] [int] NOT NULL,
 CONSTRAINT [PK_Campus_Specialized_1] PRIMARY KEY CLUSTERED 
(
	[campusID] ASC,
	[specialzedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campuss](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Campuss] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[phoneNumber] [int] NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[job] [nvarchar](50) NOT NULL,
	[placeWork] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Parent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialized](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nameSpecialized] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Specialized] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](25) NOT NULL,
	[lastName] [nvarchar](25) NOT NULL,
	[DOB] [date] NOT NULL,
	[gender] [bit] NOT NULL,
	[cardNO] [int] NULL,
	[cardDate] [date] NULL,
	[cardPlace] [nvarchar](50) NULL,
	[address] [nvarchar](255) NOT NULL,
	[telephone] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Campus](
	[studentID] [int] NOT NULL,
	[campusID] [int] NOT NULL,
 CONSTRAINT [PK_Student_Campus] PRIMARY KEY CLUSTERED 
(
	[studentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentParent](
	[studentID] [int] NOT NULL,
	[parentID] [int] NOT NULL,
 CONSTRAINT [PK_StudentParent] PRIMARY KEY CLUSTERED 
(
	[studentID] ASC,
	[parentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Academic_Student]  WITH CHECK ADD  CONSTRAINT [FK_Academic_Student_Student] FOREIGN KEY([studentID])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Academic_Student] CHECK CONSTRAINT [FK_Academic_Student_Student]
GO
ALTER TABLE [dbo].[Campus_Specialized]  WITH CHECK ADD  CONSTRAINT [FK_Campus_Specialized_Campuss] FOREIGN KEY([campusID])
REFERENCES [dbo].[Campuss] ([id])
GO
ALTER TABLE [dbo].[Campus_Specialized] CHECK CONSTRAINT [FK_Campus_Specialized_Campuss]
GO
ALTER TABLE [dbo].[Campus_Specialized]  WITH CHECK ADD  CONSTRAINT [FK_Campus_Specialized_Specialized1] FOREIGN KEY([specialzedID])
REFERENCES [dbo].[Specialized] ([id])
GO
ALTER TABLE [dbo].[Campus_Specialized] CHECK CONSTRAINT [FK_Campus_Specialized_Specialized1]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Student_Campus] FOREIGN KEY([id])
REFERENCES [dbo].[Student_Campus] ([studentID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Student_Campus]
GO
ALTER TABLE [dbo].[Student_Campus]  WITH CHECK ADD  CONSTRAINT [FK_Student_Campus_Campuss] FOREIGN KEY([campusID])
REFERENCES [dbo].[Campuss] ([id])
GO
ALTER TABLE [dbo].[Student_Campus] CHECK CONSTRAINT [FK_Student_Campus_Campuss]
GO
ALTER TABLE [dbo].[StudentParent]  WITH CHECK ADD  CONSTRAINT [FK_StudentParent_Parent] FOREIGN KEY([parentID])
REFERENCES [dbo].[Parent] ([id])
GO
ALTER TABLE [dbo].[StudentParent] CHECK CONSTRAINT [FK_StudentParent_Parent]
GO
ALTER TABLE [dbo].[StudentParent]  WITH CHECK ADD  CONSTRAINT [FK_StudentParent_Student] FOREIGN KEY([studentID])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[StudentParent] CHECK CONSTRAINT [FK_StudentParent_Student]
GO
ALTER TABLE [dbo].[Academic_Student]  WITH CHECK ADD  CONSTRAINT [chk_Modes] CHECK  (([mode]=N'Không chính quy' OR [mode]=N'Chính Quy'))
GO
ALTER TABLE [dbo].[Academic_Student] CHECK CONSTRAINT [chk_Modes]
GO
USE [master]
GO
ALTER DATABASE [FPT] SET  READ_WRITE 
GO
