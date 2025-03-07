USE [ColabPro]
GO
/****** Object:  Table [dbo].[activity_log]    Script Date: 6/10/2024 20:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activity_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[action] [nvarchar](100) NOT NULL,
	[timestamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[calendar_events]    Script Date: 6/10/2024 20:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calendar_events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_id] [int] NULL,
	[title] [nvarchar](100) NOT NULL,
	[start_time] [datetime] NOT NULL,
	[end_time] [datetime] NOT NULL,
	[description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chat_messages]    Script Date: 6/10/2024 20:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chat_messages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_id] [int] NULL,
	[user_id] [int] NULL,
	[message] [nvarchar](max) NOT NULL,
	[timestamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 6/10/2024 20:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_id] [int] NULL,
	[task_id] [int] NULL,
	[user_id] [int] NULL,
	[comment] [nvarchar](max) NOT NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 6/10/2024 20:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_id] [int] NULL,
	[user_id] [int] NULL,
	[rating] [int] NULL,
	[comments] [nvarchar](max) NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[files]    Script Date: 6/10/2024 20:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[files](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_id] [int] NULL,
	[user_id] [int] NULL,
	[file_name] [nvarchar](255) NOT NULL,
	[file_path] [nvarchar](255) NOT NULL,
	[uploaded_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notifications]    Script Date: 6/10/2024 20:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notifications](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[message] [nvarchar](max) NOT NULL,
	[is_read] [bit] NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[projects]    Script Date: 6/10/2024 20:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[description] [nvarchar](max) NULL,
	[owner_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[status] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tasks]    Script Date: 6/10/2024 20:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_id] [int] NULL,
	[title] [nvarchar](100) NOT NULL,
	[description] [nvarchar](max) NULL,
	[assigned_to] [int] NULL,
	[status] [nvarchar](20) NULL,
	[due_date] [datetime] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[team_members]    Script Date: 6/10/2024 20:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[team_members](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_id] [int] NULL,
	[user_id] [int] NULL,
	[role] [nvarchar](50) NULL,
	[joined_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 6/10/2024 20:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[profile_picture] [nvarchar](255) NULL,
	[role] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[activity_log] ADD  DEFAULT (getdate()) FOR [timestamp]
GO
ALTER TABLE [dbo].[chat_messages] ADD  DEFAULT (getdate()) FOR [timestamp]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[feedback] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[files] ADD  DEFAULT (getdate()) FOR [uploaded_at]
GO
ALTER TABLE [dbo].[notifications] ADD  DEFAULT ((0)) FOR [is_read]
GO
ALTER TABLE [dbo].[notifications] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT ('pending') FOR [status]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[team_members] ADD  DEFAULT (getdate()) FOR [joined_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[activity_log]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[calendar_events]  WITH CHECK ADD FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id])
GO
ALTER TABLE [dbo].[chat_messages]  WITH CHECK ADD FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id])
GO
ALTER TABLE [dbo].[chat_messages]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id])
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD FOREIGN KEY([task_id])
REFERENCES [dbo].[tasks] ([id])
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id])
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[files]  WITH CHECK ADD FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id])
GO
ALTER TABLE [dbo].[files]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[notifications]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[projects]  WITH CHECK ADD FOREIGN KEY([owner_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[tasks]  WITH CHECK ADD FOREIGN KEY([assigned_to])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[tasks]  WITH CHECK ADD FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id])
GO
ALTER TABLE [dbo].[team_members]  WITH CHECK ADD FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id])
GO
ALTER TABLE [dbo].[team_members]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD CHECK  (([rating]>=(1) AND [rating]<=(5)))
GO
ALTER TABLE [dbo].[projects]  WITH CHECK ADD CHECK  (([status]='archived' OR [status]='completed' OR [status]='active'))
GO
ALTER TABLE [dbo].[tasks]  WITH CHECK ADD CHECK  (([status]='completed' OR [status]='in_progress' OR [status]='pending'))
GO
