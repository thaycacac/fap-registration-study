USE [PROJECT PRJ321]
GO
/****** Object:  Table [dbo].[Academic]    Script Date: 8/23/2018 11:26:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Academic](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Academic] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Academic_Student]    Script Date: 8/23/2018 11:26:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Academic_Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rollNumber] [varchar](10) NOT NULL,
	[oldRollnumber] [varchar](10) NULL,
	[memberCode] [nvarchar](20) NOT NULL,
	[enrollDate] [date] NOT NULL,
	[mode] [nvarchar](20) NOT NULL,
	[studentId] [int] NOT NULL,
 CONSTRAINT [PK_Academic_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Campus]    Script Date: 8/23/2018 11:26:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Campus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Campus_Academic]    Script Date: 8/23/2018 11:26:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campus_Academic](
	[campusId] [int] NOT NULL,
	[academicId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parent]    Script Date: 8/23/2018 11:26:02 AM ******/
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
/****** Object:  Table [dbo].[Specialized]    Script Date: 8/23/2018 11:26:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialized](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nameSpecialized] [nvarchar](50) NOT NULL,
	[code] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Specialized] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 8/23/2018 11:26:02 AM ******/
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
	[cardNo] [int] NULL,
	[cardDate] [date] NULL,
	[cardPlace] [nvarchar](255) NULL,
	[address] [nvarchar](255) NOT NULL,
	[telephone] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Campus]    Script Date: 8/23/2018 11:26:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Campus](
	[studentId] [int] IDENTITY(1,1) NOT NULL,
	[campusId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Parent]    Script Date: 8/23/2018 11:26:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Parent](
	[studentId] [int] NOT NULL,
	[parentId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Specialized]    Script Date: 8/23/2018 11:26:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Specialized](
	[specializedId] [int] NOT NULL,
	[studentId] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Academic_Student]  WITH CHECK ADD  CONSTRAINT [FK_Academic_Student_Student] FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Academic_Student] CHECK CONSTRAINT [FK_Academic_Student_Student]
GO
ALTER TABLE [dbo].[Academic_Student]  WITH CHECK ADD  CONSTRAINT [FK_Academic_Student_Student1] FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Academic_Student] CHECK CONSTRAINT [FK_Academic_Student_Student1]
GO
ALTER TABLE [dbo].[Campus_Academic]  WITH CHECK ADD  CONSTRAINT [FK_Campus_Academic_Academic] FOREIGN KEY([academicId])
REFERENCES [dbo].[Academic] ([id])
GO
ALTER TABLE [dbo].[Campus_Academic] CHECK CONSTRAINT [FK_Campus_Academic_Academic]
GO
ALTER TABLE [dbo].[Campus_Academic]  WITH CHECK ADD  CONSTRAINT [FK_Campus_Academic_Campus] FOREIGN KEY([campusId])
REFERENCES [dbo].[Campus] ([id])
GO
ALTER TABLE [dbo].[Campus_Academic] CHECK CONSTRAINT [FK_Campus_Academic_Campus]
GO
ALTER TABLE [dbo].[Student_Campus]  WITH CHECK ADD  CONSTRAINT [FK_Student_Campus_Campus] FOREIGN KEY([campusId])
REFERENCES [dbo].[Campus] ([id])
GO
ALTER TABLE [dbo].[Student_Campus] CHECK CONSTRAINT [FK_Student_Campus_Campus]
GO
ALTER TABLE [dbo].[Student_Campus]  WITH CHECK ADD  CONSTRAINT [FK_Student_Campus_Student] FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Student_Campus] CHECK CONSTRAINT [FK_Student_Campus_Student]
GO
ALTER TABLE [dbo].[Student_Parent]  WITH CHECK ADD  CONSTRAINT [FK_Student_Parent_Parent] FOREIGN KEY([parentId])
REFERENCES [dbo].[Parent] ([id])
GO
ALTER TABLE [dbo].[Student_Parent] CHECK CONSTRAINT [FK_Student_Parent_Parent]
GO
ALTER TABLE [dbo].[Student_Parent]  WITH CHECK ADD  CONSTRAINT [FK_Student_Parent_Student] FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Student_Parent] CHECK CONSTRAINT [FK_Student_Parent_Student]
GO
ALTER TABLE [dbo].[Student_Specialized]  WITH CHECK ADD  CONSTRAINT [FK_Student_Specialized_Specialized] FOREIGN KEY([specializedId])
REFERENCES [dbo].[Specialized] ([id])
GO
ALTER TABLE [dbo].[Student_Specialized] CHECK CONSTRAINT [FK_Student_Specialized_Specialized]
GO
ALTER TABLE [dbo].[Student_Specialized]  WITH CHECK ADD  CONSTRAINT [FK_Student_Specialized_Student] FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Student_Specialized] CHECK CONSTRAINT [FK_Student_Specialized_Student]
GO
