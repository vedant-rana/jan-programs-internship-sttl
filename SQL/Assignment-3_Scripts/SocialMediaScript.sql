USE [SocialMediaDB]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 24-01-2024 16:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] NOT NULL,
	[PostID] [int] NULL,
	[UserID] [int] NULL,
	[CommentText] [text] NULL,
	[CommentDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Friends]    Script Date: 24-01-2024 16:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friends](
	[FriendshipID] [int] NOT NULL,
	[UserID1] [int] NULL,
	[UserID2] [int] NULL,
	[FriendshipDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FriendshipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Likes]    Script Date: 24-01-2024 16:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Likes](
	[LikeID] [int] NOT NULL,
	[UserID] [int] NULL,
	[PostID] [int] NULL,
	[LikeDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LikeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 24-01-2024 16:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[PostID] [int] NOT NULL,
	[UserID] [int] NULL,
	[Content] [text] NULL,
	[PostDate] [datetime] NULL,
	[Likes] [int] NULL,
	[Comments] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 24-01-2024 16:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[RegistrationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Comments] ([CommentID], [PostID], [UserID], [CommentText], [CommentDate]) VALUES (1, 1, 2, N'Nice post!', CAST(N'2022-01-01T12:10:00.000' AS DateTime))
INSERT [dbo].[Comments] ([CommentID], [PostID], [UserID], [CommentText], [CommentDate]) VALUES (2, 2, 3, N'Welcome to the platform!', CAST(N'2022-01-02T14:10:00.000' AS DateTime))
INSERT [dbo].[Comments] ([CommentID], [PostID], [UserID], [CommentText], [CommentDate]) VALUES (3, 3, 4, N'Beautiful picture!', CAST(N'2022-01-03T16:40:00.000' AS DateTime))
INSERT [dbo].[Comments] ([CommentID], [PostID], [UserID], [CommentText], [CommentDate]) VALUES (4, 4, 5, N'Wish I could travel too.', CAST(N'2022-01-04T10:45:00.000' AS DateTime))
INSERT [dbo].[Comments] ([CommentID], [PostID], [UserID], [CommentText], [CommentDate]) VALUES (5, 5, 6, N'Coding is life!', CAST(N'2022-01-05T09:15:00.000' AS DateTime))
INSERT [dbo].[Comments] ([CommentID], [PostID], [UserID], [CommentText], [CommentDate]) VALUES (6, 6, 7, N'Family time is precious indeed.', CAST(N'2022-01-06T16:00:00.000' AS DateTime))
INSERT [dbo].[Comments] ([CommentID], [PostID], [UserID], [CommentText], [CommentDate]) VALUES (7, 7, 8, N'What hobbies are you exploring?', CAST(N'2022-01-07T18:45:00.000' AS DateTime))
INSERT [dbo].[Comments] ([CommentID], [PostID], [UserID], [CommentText], [CommentDate]) VALUES (8, 8, 9, N'Keep chasing!', CAST(N'2022-01-08T13:00:00.000' AS DateTime))
INSERT [dbo].[Comments] ([CommentID], [PostID], [UserID], [CommentText], [CommentDate]) VALUES (9, 9, 10, N'Sunday vibes!', CAST(N'2022-01-09T10:30:00.000' AS DateTime))
INSERT [dbo].[Comments] ([CommentID], [PostID], [UserID], [CommentText], [CommentDate]) VALUES (10, 10, 1, N'Better luck next time!', CAST(N'2022-01-10T17:45:00.000' AS DateTime))
GO
INSERT [dbo].[Friends] ([FriendshipID], [UserID1], [UserID2], [FriendshipDate]) VALUES (1, 1, 2, CAST(N'2022-01-01T12:20:00.000' AS DateTime))
INSERT [dbo].[Friends] ([FriendshipID], [UserID1], [UserID2], [FriendshipDate]) VALUES (2, 3, 4, CAST(N'2022-01-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Friends] ([FriendshipID], [UserID1], [UserID2], [FriendshipDate]) VALUES (3, 5, 6, CAST(N'2022-01-03T17:15:00.000' AS DateTime))
INSERT [dbo].[Friends] ([FriendshipID], [UserID1], [UserID2], [FriendshipDate]) VALUES (4, 7, 8, CAST(N'2022-01-04T11:00:00.000' AS DateTime))
INSERT [dbo].[Friends] ([FriendshipID], [UserID1], [UserID2], [FriendshipDate]) VALUES (5, 9, 10, CAST(N'2022-01-05T09:45:00.000' AS DateTime))
INSERT [dbo].[Friends] ([FriendshipID], [UserID1], [UserID2], [FriendshipDate]) VALUES (6, 1, 3, CAST(N'2022-01-06T16:30:00.000' AS DateTime))
INSERT [dbo].[Friends] ([FriendshipID], [UserID1], [UserID2], [FriendshipDate]) VALUES (7, 4, 6, CAST(N'2022-01-07T19:00:00.000' AS DateTime))
INSERT [dbo].[Friends] ([FriendshipID], [UserID1], [UserID2], [FriendshipDate]) VALUES (8, 8, 10, CAST(N'2022-01-08T13:30:00.000' AS DateTime))
INSERT [dbo].[Friends] ([FriendshipID], [UserID1], [UserID2], [FriendshipDate]) VALUES (9, 2, 5, CAST(N'2022-01-09T11:00:00.000' AS DateTime))
INSERT [dbo].[Friends] ([FriendshipID], [UserID1], [UserID2], [FriendshipDate]) VALUES (10, 7, 9, CAST(N'2022-01-10T18:00:00.000' AS DateTime))
GO
INSERT [dbo].[Likes] ([LikeID], [UserID], [PostID], [LikeDate]) VALUES (1, 2, 1, CAST(N'2022-01-01T12:15:00.000' AS DateTime))
INSERT [dbo].[Likes] ([LikeID], [UserID], [PostID], [LikeDate]) VALUES (2, 3, 2, CAST(N'2022-01-02T14:30:00.000' AS DateTime))
INSERT [dbo].[Likes] ([LikeID], [UserID], [PostID], [LikeDate]) VALUES (3, 4, 3, CAST(N'2022-01-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Likes] ([LikeID], [UserID], [PostID], [LikeDate]) VALUES (4, 5, 4, CAST(N'2022-01-04T11:15:00.000' AS DateTime))
INSERT [dbo].[Likes] ([LikeID], [UserID], [PostID], [LikeDate]) VALUES (5, 6, 5, CAST(N'2022-01-05T09:30:00.000' AS DateTime))
INSERT [dbo].[Likes] ([LikeID], [UserID], [PostID], [LikeDate]) VALUES (6, 7, 6, CAST(N'2022-01-06T17:00:00.000' AS DateTime))
INSERT [dbo].[Likes] ([LikeID], [UserID], [PostID], [LikeDate]) VALUES (7, 8, 7, CAST(N'2022-01-07T19:15:00.000' AS DateTime))
INSERT [dbo].[Likes] ([LikeID], [UserID], [PostID], [LikeDate]) VALUES (8, 9, 8, CAST(N'2022-01-08T13:45:00.000' AS DateTime))
INSERT [dbo].[Likes] ([LikeID], [UserID], [PostID], [LikeDate]) VALUES (9, 10, 9, CAST(N'2022-01-09T11:15:00.000' AS DateTime))
INSERT [dbo].[Likes] ([LikeID], [UserID], [PostID], [LikeDate]) VALUES (10, 1, 10, CAST(N'2022-01-10T18:15:00.000' AS DateTime))
GO
INSERT [dbo].[Posts] ([PostID], [UserID], [Content], [PostDate], [Likes], [Comments]) VALUES (1, 1, N'Hello World!', CAST(N'2022-01-01T12:05:00.000' AS DateTime), 15, 5)
INSERT [dbo].[Posts] ([PostID], [UserID], [Content], [PostDate], [Likes], [Comments]) VALUES (2, 2, N'This is my first post.', CAST(N'2022-01-02T14:00:00.000' AS DateTime), 20, 8)
INSERT [dbo].[Posts] ([PostID], [UserID], [Content], [PostDate], [Likes], [Comments]) VALUES (3, 3, N'Enjoying the weekend!', CAST(N'2022-01-03T16:30:00.000' AS DateTime), 30, 12)
INSERT [dbo].[Posts] ([PostID], [UserID], [Content], [PostDate], [Likes], [Comments]) VALUES (4, 4, N'Traveling to new places.', CAST(N'2022-01-04T10:30:00.000' AS DateTime), 25, 10)
INSERT [dbo].[Posts] ([PostID], [UserID], [Content], [PostDate], [Likes], [Comments]) VALUES (5, 5, N'Coding all night!', CAST(N'2022-01-05T09:00:00.000' AS DateTime), 18, 6)
INSERT [dbo].[Posts] ([PostID], [UserID], [Content], [PostDate], [Likes], [Comments]) VALUES (6, 6, N'Family time is the best.', CAST(N'2022-01-06T15:45:00.000' AS DateTime), 22, 7)
INSERT [dbo].[Posts] ([PostID], [UserID], [Content], [PostDate], [Likes], [Comments]) VALUES (7, 7, N'Exploring new hobbies.', CAST(N'2022-01-07T18:20:00.000' AS DateTime), 28, 9)
INSERT [dbo].[Posts] ([PostID], [UserID], [Content], [PostDate], [Likes], [Comments]) VALUES (8, 8, N'Chasing dreams.', CAST(N'2022-01-08T12:40:00.000' AS DateTime), 35, 15)
INSERT [dbo].[Posts] ([PostID], [UserID], [Content], [PostDate], [Likes], [Comments]) VALUES (9, 9, N'Sunday relaxation.', CAST(N'2022-01-09T10:15:00.000' AS DateTime), 17, 4)
INSERT [dbo].[Posts] ([PostID], [UserID], [Content], [PostDate], [Likes], [Comments]) VALUES (10, 10, N'Cooking experiment gone wrong!', CAST(N'2022-01-10T17:30:00.000' AS DateTime), 12, 3)
INSERT [dbo].[Posts] ([PostID], [UserID], [Content], [PostDate], [Likes], [Comments]) VALUES (15, 5, N'new comment', CAST(N'2022-01-10T17:30:00.000' AS DateTime), 20, 10)
GO
INSERT [dbo].[Users] ([UserID], [FirstName], [LastName], [Username], [Email], [RegistrationDate]) VALUES (1, N'John', N'Doe', N'john_doe', N'john.doe@example.com', CAST(N'2022-01-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Users] ([UserID], [FirstName], [LastName], [Username], [Email], [RegistrationDate]) VALUES (2, N'Jane', N'Smith', N'jane_smith', N'jane.smith@example.com', CAST(N'2022-01-02T13:30:00.000' AS DateTime))
INSERT [dbo].[Users] ([UserID], [FirstName], [LastName], [Username], [Email], [RegistrationDate]) VALUES (3, N'Bob', N'Johnson', N'bob_j', N'bob.j@example.com', CAST(N'2022-01-03T15:45:00.000' AS DateTime))
INSERT [dbo].[Users] ([UserID], [FirstName], [LastName], [Username], [Email], [RegistrationDate]) VALUES (4, N'Alice', N'Williams', N'alice_w', N'alice.w@example.com', CAST(N'2022-01-04T10:20:00.000' AS DateTime))
INSERT [dbo].[Users] ([UserID], [FirstName], [LastName], [Username], [Email], [RegistrationDate]) VALUES (5, N'Charlie', N'Brown', N'charlie_b', N'charlie.b@example.com', CAST(N'2022-01-05T08:15:00.000' AS DateTime))
INSERT [dbo].[Users] ([UserID], [FirstName], [LastName], [Username], [Email], [RegistrationDate]) VALUES (6, N'Eva', N'Miller', N'eva_m', N'eva.m@example.com', CAST(N'2022-01-06T14:10:00.000' AS DateTime))
INSERT [dbo].[Users] ([UserID], [FirstName], [LastName], [Username], [Email], [RegistrationDate]) VALUES (7, N'David', N'Anderson', N'david_a', N'david.a@example.com', CAST(N'2022-01-07T17:00:00.000' AS DateTime))
INSERT [dbo].[Users] ([UserID], [FirstName], [LastName], [Username], [Email], [RegistrationDate]) VALUES (8, N'Grace', N'Turner', N'grace_t', N'grace.t@example.com', CAST(N'2022-01-08T11:30:00.000' AS DateTime))
INSERT [dbo].[Users] ([UserID], [FirstName], [LastName], [Username], [Email], [RegistrationDate]) VALUES (9, N'Frank', N'Wilson', N'frank_w', N'frank.w@example.com', CAST(N'2022-01-09T09:25:00.000' AS DateTime))
INSERT [dbo].[Users] ([UserID], [FirstName], [LastName], [Username], [Email], [RegistrationDate]) VALUES (10, N'Sara', N'Baker', N'sara_b', N'sara.b@example.com', CAST(N'2022-01-10T16:40:00.000' AS DateTime))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__536C85E43ED19754]    Script Date: 24-01-2024 16:08:33 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D10534CC90F0FA]    Script Date: 24-01-2024 16:08:33 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([PostID])
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Friends]  WITH CHECK ADD FOREIGN KEY([UserID1])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Friends]  WITH CHECK ADD FOREIGN KEY([UserID2])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([PostID])
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
/****** Object:  Trigger [dbo].[AfterDeletePosts]    Script Date: 24-01-2024 16:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- AFTER DELETE Trigger
CREATE TRIGGER [dbo].[AfterDeletePosts]
ON [dbo].[Posts]
AFTER DELETE
AS
BEGIN
    PRINT 'After Delete Trigger on Posts';
END;
GO
ALTER TABLE [dbo].[Posts] ENABLE TRIGGER [AfterDeletePosts]
GO
/****** Object:  Trigger [dbo].[AfterInsertPosts]    Script Date: 24-01-2024 16:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- AFTER INSERT Trigger
CREATE TRIGGER [dbo].[AfterInsertPosts]
ON [dbo].[Posts]
AFTER INSERT
AS
BEGIN
    PRINT 'After Insert Trigger on Posts';
END;
GO
ALTER TABLE [dbo].[Posts] ENABLE TRIGGER [AfterInsertPosts]
GO
/****** Object:  Trigger [dbo].[AfterUpdatePosts]    Script Date: 24-01-2024 16:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AfterUpdatePosts]
ON [dbo].[Posts]
AFTER UPDATE
AS
BEGIN
    PRINT 'After Update Trigger on Posts';
END;
GO
ALTER TABLE [dbo].[Posts] ENABLE TRIGGER [AfterUpdatePosts]
GO
/****** Object:  Trigger [dbo].[BeforeDeletePosts]    Script Date: 24-01-2024 16:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[BeforeDeletePosts]
ON [dbo].[Posts]
FOR DELETE
AS
BEGIN
    PRINT 'Before Delete Trigger on Posts';
END;
GO
ALTER TABLE [dbo].[Posts] ENABLE TRIGGER [BeforeDeletePosts]
GO
/****** Object:  Trigger [dbo].[BeforeInsertPosts]    Script Date: 24-01-2024 16:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- BEFORE INSERT Trigger
CREATE TRIGGER [dbo].[BeforeInsertPosts]
ON [dbo].[Posts]
FOR INSERT
AS
BEGIN
    PRINT 'Before Insert Trigger on Posts';
END;
GO
ALTER TABLE [dbo].[Posts] ENABLE TRIGGER [BeforeInsertPosts]
GO
/****** Object:  Trigger [dbo].[BeforeUpdatePosts]    Script Date: 24-01-2024 16:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[BeforeUpdatePosts]
ON [dbo].[Posts]
FOR UPDATE
AS
BEGIN
    PRINT 'Before Update Trigger on Posts';
END;
GO
ALTER TABLE [dbo].[Posts] ENABLE TRIGGER [BeforeUpdatePosts]
GO
