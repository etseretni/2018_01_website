USE [huahua]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 2018/5/24 22:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[s_id] [nvarchar](300) NOT NULL,
	[s_passed] [nvarchar](50) NULL,
	[s_name] [nvarchar](50) NULL,
	[s_time] [nvarchar](50) NULL,
	[s_email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_Image]    Script Date: 2018/5/24 22:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Image](
	[i_num] [int] IDENTITY(1,1) NOT NULL,
	[i_userId] [nvarchar](300) NULL,
	[i_path] [nvarchar](300) NULL,
	[i_imageInfo] [nvarchar](300) NULL,
 CONSTRAINT [PK_Table_Image] PRIMARY KEY CLUSTERED 
(
	[i_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Table_1] ([s_id], [s_passed], [s_name], [s_time], [s_email]) VALUES (N'11', N'11', N'张三', N'2018.4.16', N'张三@qq.com')
INSERT [dbo].[Table_1] ([s_id], [s_passed], [s_name], [s_time], [s_email]) VALUES (N'12', N'12', N'李师师', N'2018.4.16', N'李师师@qq.com')
INSERT [dbo].[Table_1] ([s_id], [s_passed], [s_name], [s_time], [s_email]) VALUES (N'13', N'13', N'李广', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Table_Image] ON 

INSERT [dbo].[Table_Image] ([i_num], [i_userId], [i_path], [i_imageInfo]) VALUES (1, N'11', N'/img/2018-4-16/2dc26d15-508f-400c-b60e-5077c7e753fe.jpg', N'awdaw')
INSERT [dbo].[Table_Image] ([i_num], [i_userId], [i_path], [i_imageInfo]) VALUES (2, N'11', N'/img/2018-4-17/ab4e7d0a-5540-4cf2-b802-a505376fe909.jpg', N'123')
INSERT [dbo].[Table_Image] ([i_num], [i_userId], [i_path], [i_imageInfo]) VALUES (3, N'12', N'/img/2018-4-17/3a1288c9-389f-491e-8a5f-16afca9b117a.png', N'706365.png')
INSERT [dbo].[Table_Image] ([i_num], [i_userId], [i_path], [i_imageInfo]) VALUES (4, N'12', N'/img/2018-4-17/4ec2e8d1-861f-4c37-bb15-51efd3dd444d.jpg', N'星空')
INSERT [dbo].[Table_Image] ([i_num], [i_userId], [i_path], [i_imageInfo]) VALUES (5, N'12', N'/img/2018-4-17/b175c944-b771-4e2b-91d5-093fbf64f7a9.jpg', N'喵~')
INSERT [dbo].[Table_Image] ([i_num], [i_userId], [i_path], [i_imageInfo]) VALUES (6, N'11', N'/img/2018-5-24/9b3e8141-64b8-48ba-a8d8-2871324a8f59.png', N'2018-5-24演示上传')
INSERT [dbo].[Table_Image] ([i_num], [i_userId], [i_path], [i_imageInfo]) VALUES (7, N'11', N'/img/2018-5-24/3a7aec29-a067-4379-a271-25964ffc9cee.png', N'阿斯顿发生1')
INSERT [dbo].[Table_Image] ([i_num], [i_userId], [i_path], [i_imageInfo]) VALUES (8, N'11', N'/img/2018-5-24/d000e89c-76dc-4fef-adee-27dbb0b43153.png', N'苏苏')
INSERT [dbo].[Table_Image] ([i_num], [i_userId], [i_path], [i_imageInfo]) VALUES (9, N'11', N'/img/2018-5-24/f72f5571-c986-4cc7-a6b9-f8b27c1f4172.jpg', N'小兵')
INSERT [dbo].[Table_Image] ([i_num], [i_userId], [i_path], [i_imageInfo]) VALUES (10, N'11', N'/img/2018-5-24/aec57bd5-8f9f-4811-8ea4-a9f66fa5a16c.png', N'亚UN以阿比阿尼来')
SET IDENTITY_INSERT [dbo].[Table_Image] OFF
ALTER TABLE [dbo].[Table_Image]  WITH CHECK ADD  CONSTRAINT [FK_Table_Image_Table_1] FOREIGN KEY([i_userId])
REFERENCES [dbo].[Table_1] ([s_id])
GO
ALTER TABLE [dbo].[Table_Image] CHECK CONSTRAINT [FK_Table_Image_Table_1]
GO
