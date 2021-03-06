USE [Pluto_Queries]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 12/17/2018 12:03:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Authors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 12/17/2018 12:03:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[Level] [int] NOT NULL,
	[FullPrice] [real] NOT NULL,
	[AuthorId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseTags]    Script Date: 12/17/2018 12:03:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseTags](
	[CourseId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.CourseTags] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Covers]    Script Date: 12/17/2018 12:03:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Covers](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Covers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 12/17/2018 12:03:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([Id], [Name]) VALUES (1, N'Mosh Hamedani')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (2, N'Anthony Alicea')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (3, N'Eric Wise')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (4, N'Tom Owsiak')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (5, N'John Smith')
SET IDENTITY_INSERT [dbo].[Authors] OFF
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([Id], [Name], [Description], [Level], [FullPrice], [AuthorId]) VALUES (1, N'C# Basics', N'Description for C# Basics', 1, 49, 1)
INSERT [dbo].[Courses] ([Id], [Name], [Description], [Level], [FullPrice], [AuthorId]) VALUES (2, N'C# Intermediate', N'Description for C# Intermediate', 2, 49, 1)
INSERT [dbo].[Courses] ([Id], [Name], [Description], [Level], [FullPrice], [AuthorId]) VALUES (3, N'C# Advanced', N'Description for C# Advanced', 3, 69, 1)
INSERT [dbo].[Courses] ([Id], [Name], [Description], [Level], [FullPrice], [AuthorId]) VALUES (4, N'Javascript: Understanding the Weird Parts', N'Description for Javascript', 2, 149, 2)
INSERT [dbo].[Courses] ([Id], [Name], [Description], [Level], [FullPrice], [AuthorId]) VALUES (5, N'Learn and Understand AngularJS', N'Description for AngularJS', 2, 99, 2)
INSERT [dbo].[Courses] ([Id], [Name], [Description], [Level], [FullPrice], [AuthorId]) VALUES (6, N'Learn and Understand NodeJS', N'Description for NodeJS', 2, 149, 2)
INSERT [dbo].[Courses] ([Id], [Name], [Description], [Level], [FullPrice], [AuthorId]) VALUES (7, N'Programming for Complete Beginners', N'Description for Programming for Beginners', 1, 45, 3)
INSERT [dbo].[Courses] ([Id], [Name], [Description], [Level], [FullPrice], [AuthorId]) VALUES (8, N'A 16 Hour C# Course with Visual Studio 2013', N'Description 16 Hour Course', 1, 150, 4)
INSERT [dbo].[Courses] ([Id], [Name], [Description], [Level], [FullPrice], [AuthorId]) VALUES (9, N'Learn JavaScript Through Visual Studio 2013', N'Description Learn Javascript', 1, 20, 4)
SET IDENTITY_INSERT [dbo].[Courses] OFF
INSERT [dbo].[CourseTags] ([CourseId], [TagId]) VALUES (1, 1)
INSERT [dbo].[CourseTags] ([CourseId], [TagId]) VALUES (2, 1)
INSERT [dbo].[CourseTags] ([CourseId], [TagId]) VALUES (3, 1)
INSERT [dbo].[CourseTags] ([CourseId], [TagId]) VALUES (7, 1)
INSERT [dbo].[CourseTags] ([CourseId], [TagId]) VALUES (8, 1)
INSERT [dbo].[CourseTags] ([CourseId], [TagId]) VALUES (5, 2)
INSERT [dbo].[CourseTags] ([CourseId], [TagId]) VALUES (4, 3)
INSERT [dbo].[CourseTags] ([CourseId], [TagId]) VALUES (9, 3)
INSERT [dbo].[CourseTags] ([CourseId], [TagId]) VALUES (6, 4)
INSERT [dbo].[CourseTags] ([CourseId], [TagId]) VALUES (2, 5)
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [Name]) VALUES (1, N'c#')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (2, N'angularjs')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (3, N'javascript')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (4, N'nodejs')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (5, N'oop')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (6, N'linq')
SET IDENTITY_INSERT [dbo].[Tags] OFF
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Courses_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_dbo.Courses_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[CourseTags]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CourseTags_dbo.Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseTags] CHECK CONSTRAINT [FK_dbo.CourseTags_dbo.Courses_CourseId]
GO
ALTER TABLE [dbo].[CourseTags]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CourseTags_dbo.Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseTags] CHECK CONSTRAINT [FK_dbo.CourseTags_dbo.Tags_TagId]
GO
ALTER TABLE [dbo].[Covers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Covers_dbo.Courses_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[Covers] CHECK CONSTRAINT [FK_dbo.Covers_dbo.Courses_Id]
GO
