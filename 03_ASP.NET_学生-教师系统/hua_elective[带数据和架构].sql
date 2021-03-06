USE [hua_elective]
GO
/****** Object:  Table [dbo].[Announcement]    Script Date: 2018/6/21 18:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Announcement](
	[a_number] [int] IDENTITY(1,1) NOT NULL,
	[a_content] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2018/6/21 18:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[c_number] [int] IDENTITY(1,1) NOT NULL,
	[c_name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Scoure]    Script Date: 2018/6/21 18:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Scoure](
	[s_number] [int] NOT NULL,
	[c_number] [int] NOT NULL,
	[sc_scoure] [int] NULL,
	[sc_check] [varchar](50) NULL,
 CONSTRAINT [PK_SCOURE] PRIMARY KEY CLUSTERED 
(
	[s_number] ASC,
	[c_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2018/6/21 18:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[s_number] [int] IDENTITY(1,1) NOT NULL,
	[s_user_name] [varchar](20) NULL,
	[s_user_password] [varchar](20) NULL,
	[s_name] [varchar](20) NULL,
	[s_age] [char](4) NULL,
	[s_sex] [char](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 2018/6/21 18:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[t_number] [int] IDENTITY(1,1) NOT NULL,
	[t_user_name] [varchar](20) NULL,
	[t_user_password] [varchar](20) NULL,
	[t_name] [varchar](20) NULL,
	[t_age] [char](4) NULL,
	[t_sex] [char](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Announcement] ON 

INSERT [dbo].[Announcement] ([a_number], [a_content]) VALUES (1, N'2018 - 6-21 15：38 明天要放假')
INSERT [dbo].[Announcement] ([a_number], [a_content]) VALUES (2, N'这是另外一个公告')
INSERT [dbo].[Announcement] ([a_number], [a_content]) VALUES (3, N'阿斯顿发所发生的法国金')
INSERT [dbo].[Announcement] ([a_number], [a_content]) VALUES (4, N'nonedcvxc')
SET IDENTITY_INSERT [dbo].[Announcement] OFF
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([c_number], [c_name]) VALUES (1, N'语文')
INSERT [dbo].[Course] ([c_number], [c_name]) VALUES (2, N'英语')
INSERT [dbo].[Course] ([c_number], [c_name]) VALUES (3, N'数学')
INSERT [dbo].[Course] ([c_number], [c_name]) VALUES (4, N'化学')
INSERT [dbo].[Course] ([c_number], [c_name]) VALUES (5, N'化学')
SET IDENTITY_INSERT [dbo].[Course] OFF
INSERT [dbo].[Scoure] ([s_number], [c_number], [sc_scoure], [sc_check]) VALUES (1, 1, 80, NULL)
INSERT [dbo].[Scoure] ([s_number], [c_number], [sc_scoure], [sc_check]) VALUES (1, 2, 90, NULL)
INSERT [dbo].[Scoure] ([s_number], [c_number], [sc_scoure], [sc_check]) VALUES (2, 3, 89, NULL)
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([s_number], [s_user_name], [s_user_password], [s_name], [s_age], [s_sex]) VALUES (1, N'1', NULL, NULL, NULL, NULL)
INSERT [dbo].[Student] ([s_number], [s_user_name], [s_user_password], [s_name], [s_age], [s_sex]) VALUES (2, N'2', N'2', N'潇潇', N'18  ', N'男')
INSERT [dbo].[Student] ([s_number], [s_user_name], [s_user_password], [s_name], [s_age], [s_sex]) VALUES (3, N'3', N'3', N'李白', N'19  ', N'男')
INSERT [dbo].[Student] ([s_number], [s_user_name], [s_user_password], [s_name], [s_age], [s_sex]) VALUES (4, N'4', N'4', N'伊人', N'17  ', N'女')
INSERT [dbo].[Student] ([s_number], [s_user_name], [s_user_password], [s_name], [s_age], [s_sex]) VALUES (5, N'5', N'5', N'么么哒', N'19  ', N'女')
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([t_number], [t_user_name], [t_user_password], [t_name], [t_age], [t_sex]) VALUES (1, N'100', N'100', N'教师100', N'18  ', N'女')
INSERT [dbo].[Teacher] ([t_number], [t_user_name], [t_user_password], [t_name], [t_age], [t_sex]) VALUES (2, N'101', N'101', N'教师101', N'19  ', N'男')
INSERT [dbo].[Teacher] ([t_number], [t_user_name], [t_user_password], [t_name], [t_age], [t_sex]) VALUES (3, N'103', N'103', N'103', N'10  ', N'女')
INSERT [dbo].[Teacher] ([t_number], [t_user_name], [t_user_password], [t_name], [t_age], [t_sex]) VALUES (4, N'104', N'104', N'教师104', N'19  ', N'女')
INSERT [dbo].[Teacher] ([t_number], [t_user_name], [t_user_password], [t_name], [t_age], [t_sex]) VALUES (5, N'', N'', N'', N'    ', N'  ')
INSERT [dbo].[Teacher] ([t_number], [t_user_name], [t_user_password], [t_name], [t_age], [t_sex]) VALUES (6, N'109', N'109', N'教师109', N'109 ', N'女')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
/****** Object:  Index [PK_ANNOUNCEMENT]    Script Date: 2018/6/21 18:15:32 ******/
ALTER TABLE [dbo].[Announcement] ADD  CONSTRAINT [PK_ANNOUNCEMENT] PRIMARY KEY NONCLUSTERED 
(
	[a_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_COURSE]    Script Date: 2018/6/21 18:15:32 ******/
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [PK_COURSE] PRIMARY KEY NONCLUSTERED 
(
	[c_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_STUDENT]    Script Date: 2018/6/21 18:15:32 ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [PK_STUDENT] PRIMARY KEY NONCLUSTERED 
(
	[s_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AK_UQ_S_USER_NAME_STUDENT]    Script Date: 2018/6/21 18:15:32 ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [AK_UQ_S_USER_NAME_STUDENT] UNIQUE NONCLUSTERED 
(
	[s_user_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_TEACHER]    Script Date: 2018/6/21 18:15:32 ******/
ALTER TABLE [dbo].[Teacher] ADD  CONSTRAINT [PK_TEACHER] PRIMARY KEY NONCLUSTERED 
(
	[t_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AK_UQ_T_USER_NAME_TEACHER]    Script Date: 2018/6/21 18:15:32 ******/
ALTER TABLE [dbo].[Teacher] ADD  CONSTRAINT [AK_UQ_T_USER_NAME_TEACHER] UNIQUE NONCLUSTERED 
(
	[t_user_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
