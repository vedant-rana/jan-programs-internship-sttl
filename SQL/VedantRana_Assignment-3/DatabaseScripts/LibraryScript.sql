USE [LibraryDB]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 24-01-2024 16:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[BirthDate] [date] NULL,
	[Nationality] [nvarchar](50) NULL,
	[BestSeller] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 24-01-2024 16:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Author] [nvarchar](100) NULL,
	[PublicationYear] [int] NULL,
	[ISBN] [varchar](20) NULL,
	[AvailableCopies] [int] NULL,
	[CategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 24-01-2024 16:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 24-01-2024 16:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[MemberID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Email] [nvarchar](255) NULL,
	[TotalBorrowedBook] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 24-01-2024 16:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransactionID] [int] NOT NULL,
	[BookID] [int] NULL,
	[MemberID] [int] NULL,
	[CheckoutDate] [datetime] NULL,
	[ReturnDate] [datetime] NULL,
	[IsApproved] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (1, N'John', N'Doe', CAST(N'1980-05-15' AS Date), N'American', N'The Best Book Ever')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (2, N'Alice', N'Smith', CAST(N'1975-08-22' AS Date), N'British', N'Memoirs of a Scientist')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (3, N'Bob', N'Johnson', CAST(N'1990-03-10' AS Date), N'Canadian', N'From Rags to Riches')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (4, N'Eva', N'Williams', CAST(N'1985-11-28' AS Date), N'Australian', N'Inspirational Journey')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (5, N'Sarah', N'Jones', CAST(N'1982-09-18' AS Date), N'American', N'The Mindful Life')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (6, N'David', N'Miller', CAST(N'1978-06-25' AS Date), N'Canadian', N'The Startup Journey')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (7, N'Emily', N'Brown', CAST(N'1993-03-12' AS Date), N'British', N'Sculpting Dreams')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (8, N'Daniel', N'Anderson', CAST(N'1987-12-05' AS Date), N'Australian', N'Beyond the Horizon')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (9, N'Linda', N'Lee', CAST(N'1970-11-08' AS Date), N'American', N'Infinite Possibilities')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (10, N'Robert', N'Wang', CAST(N'1985-04-30' AS Date), N'Chinese', N'The Tech Revolution')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (11, N'Ava', N'Garcia', CAST(N'1990-07-15' AS Date), N'Spanish', N'The Art of Cooking')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (12, N'Michael', N'Chen', CAST(N'1983-02-20' AS Date), N'Japanese', N'Rhythms of Nature')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (13, N'Grace', N'Taylor', CAST(N'1975-10-03' AS Date), N'Canadian', N'Mastering the Markets')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (14, N'Jonathan', N'Johnson', CAST(N'1988-08-16' AS Date), N'American', N'The Creative Mind')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [BirthDate], [Nationality], [BestSeller]) VALUES (15, N'Sophie', N'Martin', CAST(N'1995-05-28' AS Date), N'French', N'Musical Harmony')
GO
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (101, N'The Adventure', N'John Doe', 2010, N'1234567890', 10, 1)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (102, N'Quantum Physics', N'Alice Smith', 2018, N'9876543210', 5, 2)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (103, N'Ancient Civilizations', N'Bob Johnson', 2005, N'111122223333', 8, 3)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (104, N'Success Story', N'Eva Williams', 2015, N'444455556666', 15, 4)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (105, N'The Enigma', N'Sarah Jones', 2012, N'555566667777', 12, 5)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (106, N'Mindfulness in Business', N'David Miller', 2019, N'123412341234', 8, 6)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (107, N'Journey to the Unknown', N'Emily Brown', 2008, N'987698769876', 6, 7)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (108, N'Culinary Delights', N'Daniel Anderson', 2016, N'111122223333', 10, 8)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (109, N'Poetic Whispers', N'Linda Lee', 2010, N'444455556666', 15, 9)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (110, N'Tech Innovations', N'Robert Wang', 2021, N'876587658765', 7, 10)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (111, N'Wellness Revolution', N'Ava Garcia', 2014, N'999988887777', 9, 11)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (112, N'Financial Mastery', N'Michael Chen', 2017, N'333344445555', 11, 12)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (113, N'Artistic Expressions', N'Grace Taylor', 2005, N'222233334444', 5, 13)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (114, N'Harmonious Notes', N'Jonathan Johnson', 2013, N'678967896789', 14, 14)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [PublicationYear], [ISBN], [AvailableCopies], [CategoryId]) VALUES (115, N'Sports Legends', N'Sophie Martin', 2011, N'876543210987', 8, 15)
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (1, N'Fiction', N'Novels and stories', 1, CAST(N'2024-01-19T10:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (2, N'Science', N'Books on science and technology', 1, CAST(N'2024-01-19T10:15:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (3, N'History', N'Books on historical events', 1, CAST(N'2024-01-19T10:30:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (4, N'Biography', N'Biographical books', 1, CAST(N'2024-01-19T10:45:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (5, N'Mystery', N'Mystery novels', 1, CAST(N'2024-01-22T10:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (6, N'Self-Help', N'Books for personal development', 1, CAST(N'2024-01-22T10:15:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (7, N'Travel', N'Books about travel and exploration', 1, CAST(N'2024-01-22T10:30:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (8, N'Cooking', N'Cookbooks and culinary literature', 1, CAST(N'2024-01-22T10:45:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (9, N'Poetry', N'Poetry collections', 1, CAST(N'2024-01-22T11:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (10, N'Technology', N'Books on latest technologies', 1, CAST(N'2024-01-22T11:15:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (11, N'Health', N'Health and wellness books', 1, CAST(N'2024-01-22T11:30:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (12, N'Business', N'Books on business and finance', 1, CAST(N'2024-01-22T11:45:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (13, N'Art', N'Books on art and creativity', 1, CAST(N'2024-01-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (14, N'Music', N'Books about music and musicians', 1, CAST(N'2024-01-22T12:15:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (15, N'Sports', N'Books on sports and athletes', 1, CAST(N'2024-01-22T12:30:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [CreatedDate]) VALUES (20, N'sci-fi', N'new sci-fi', 0, CAST(N'2024-01-23T10:00:00.000' AS DateTime))
GO
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (1, N'Michael', N'Clark', CAST(N'1992-07-03' AS Date), N'michael.clark@email.com', 2)
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (2, N'Sophia', N'Martin', CAST(N'1988-01-15' AS Date), N'sophia.martin@email.com', 3)
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (3, N'Oliver', N'Harris', CAST(N'1995-09-22' AS Date), N'oliver.harris@email.com', 1)
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (4, N'Emma', N'Taylor', CAST(N'1982-04-07' AS Date), N'emma.taylor@email.com', 4)
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (5, N'Benjamin', N'Hill', CAST(N'1989-04-14' AS Date), N'benjamin.hill@email.com', 3)
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (6, N'Isabella', N'Turner', CAST(N'1991-12-28' AS Date), N'isabella.turner@email.com', 2)
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (7, N'Henry', N'Ward', CAST(N'1978-08-07' AS Date), N'henry.ward@email.com', 1)
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (8, N'Sophia', N'Jones', CAST(N'1997-06-19' AS Date), N'sophia.jones@email.com', 4)
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (9, N'Jack', N'Cooper', CAST(N'1985-01-03' AS Date), N'jack.cooper@email.com', 2)
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (10, N'Madison', N'Reed', CAST(N'1994-09-25' AS Date), N'madison.reed@email.com', 3)
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (11, N'Leo', N'Perez', CAST(N'1980-03-16' AS Date), N'leo.perez@email.com', 1)
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (12, N'Hannah', N'Baker', CAST(N'1998-11-10' AS Date), N'hannah.baker@email.com', 2)
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (13, N'Daniel', N'Bell', CAST(N'1983-05-22' AS Date), N'daniel.bell@email.com', 4)
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (14, N'Ella', N'Ross', CAST(N'1990-02-08' AS Date), N'ella.ross@email.com', 1)
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [DateOfBirth], [Email], [TotalBorrowedBook]) VALUES (15, N'Owen', N'Fisher', CAST(N'1987-07-31' AS Date), N'owen.fisher@email.com', 3)
GO
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (1, 101, 1, CAST(N'2024-01-19T11:00:00.000' AS DateTime), CAST(N'2024-01-25T14:00:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (2, 102, 2, CAST(N'2024-01-20T09:30:00.000' AS DateTime), CAST(N'2024-02-02T11:45:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (3, 103, 3, CAST(N'2024-01-21T13:15:00.000' AS DateTime), CAST(N'2024-01-30T10:30:00.000' AS DateTime), 0)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (4, 104, 4, CAST(N'2024-01-22T14:45:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (5, 105, 5, CAST(N'2024-01-22T11:00:00.000' AS DateTime), CAST(N'2024-01-28T14:30:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (6, 106, 6, CAST(N'2024-01-23T10:30:00.000' AS DateTime), CAST(N'2024-02-04T09:15:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (7, 107, 7, CAST(N'2024-01-24T12:45:00.000' AS DateTime), CAST(N'2024-02-01T08:45:00.000' AS DateTime), 0)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (8, 108, 8, CAST(N'2024-01-25T14:15:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (9, 109, 9, CAST(N'2024-01-26T15:30:00.000' AS DateTime), CAST(N'2024-02-05T10:00:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (10, 110, 10, CAST(N'2024-01-27T09:00:00.000' AS DateTime), CAST(N'2024-02-03T11:30:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (11, 111, 11, CAST(N'2024-01-28T13:45:00.000' AS DateTime), CAST(N'2024-02-02T13:00:00.000' AS DateTime), 0)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (12, 112, 12, CAST(N'2024-01-29T14:30:00.000' AS DateTime), CAST(N'2024-02-06T12:15:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (13, 113, 13, CAST(N'2024-01-30T11:15:00.000' AS DateTime), CAST(N'2024-02-04T14:30:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (14, 114, 14, CAST(N'2024-01-31T09:45:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (15, 115, 15, CAST(N'2024-02-01T10:30:00.000' AS DateTime), CAST(N'2024-02-07T09:00:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (16, 105, 5, CAST(N'2024-02-05T09:00:00.000' AS DateTime), CAST(N'2024-02-10T12:30:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (17, 106, 6, CAST(N'2024-02-06T11:30:00.000' AS DateTime), CAST(N'2024-02-12T10:15:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (18, 107, 7, CAST(N'2024-02-07T10:45:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (19, 108, 8, CAST(N'2024-02-08T13:15:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (20, 109, 9, CAST(N'2024-02-09T14:30:00.000' AS DateTime), CAST(N'2024-02-15T11:00:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (21, 110, 10, CAST(N'2024-02-10T09:30:00.000' AS DateTime), CAST(N'2024-02-18T11:45:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (22, 111, 11, CAST(N'2024-02-11T13:45:00.000' AS DateTime), CAST(N'2024-02-17T13:00:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (23, 112, 12, CAST(N'2024-02-12T14:30:00.000' AS DateTime), CAST(N'2024-02-20T12:15:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (24, 113, 13, CAST(N'2024-02-13T11:15:00.000' AS DateTime), CAST(N'2024-02-18T14:30:00.000' AS DateTime), 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (25, 114, 14, CAST(N'2024-02-14T09:45:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Transactions] ([TransactionID], [BookID], [MemberID], [CheckoutDate], [ReturnDate], [IsApproved]) VALUES (26, 115, 15, CAST(N'2024-02-15T10:30:00.000' AS DateTime), CAST(N'2024-02-21T09:00:00.000' AS DateTime), 1)
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
/****** Object:  Trigger [dbo].[AfterDeleteBook]    Script Date: 24-01-2024 16:02:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- AFTER DELETE Trigger
CREATE TRIGGER [dbo].[AfterDeleteBook]
ON [dbo].[Book]
AFTER DELETE
AS
BEGIN
    PRINT 'After Delete Trigger on Book';
END;
GO
ALTER TABLE [dbo].[Book] ENABLE TRIGGER [AfterDeleteBook]
GO
/****** Object:  Trigger [dbo].[AfterInsertBook]    Script Date: 24-01-2024 16:02:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- AFTER INSERT Trigger
CREATE TRIGGER [dbo].[AfterInsertBook]
ON [dbo].[Book]
AFTER INSERT
AS
BEGIN
    PRINT 'After Insert Trigger on Book';
END;
GO
ALTER TABLE [dbo].[Book] ENABLE TRIGGER [AfterInsertBook]
GO
/****** Object:  Trigger [dbo].[AfterUpdateBook]    Script Date: 24-01-2024 16:02:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- AFTER UPDATE Trigger
CREATE TRIGGER [dbo].[AfterUpdateBook]
ON [dbo].[Book]
AFTER UPDATE
AS
BEGIN
    PRINT 'After Update Trigger on Book';
END;
GO
ALTER TABLE [dbo].[Book] ENABLE TRIGGER [AfterUpdateBook]
GO
/****** Object:  Trigger [dbo].[BeforeDeleteBook]    Script Date: 24-01-2024 16:02:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- BEFORE DELETE Trigger
CREATE TRIGGER [dbo].[BeforeDeleteBook]
ON [dbo].[Book]
FOR DELETE
AS
BEGIN
    PRINT 'Before Delete Trigger on Book';
END;
GO
ALTER TABLE [dbo].[Book] ENABLE TRIGGER [BeforeDeleteBook]
GO
/****** Object:  Trigger [dbo].[BeforeInsertBook]    Script Date: 24-01-2024 16:02:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[BeforeInsertBook]
ON [dbo].[Book]
FOR INSERT
AS
BEGIN
    PRINT 'Before Insert Trigger on Book';
END;
GO
ALTER TABLE [dbo].[Book] ENABLE TRIGGER [BeforeInsertBook]
GO
/****** Object:  Trigger [dbo].[BeforeUpdateBook]    Script Date: 24-01-2024 16:02:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[BeforeUpdateBook]
ON [dbo].[Book]
FOR UPDATE
AS
BEGIN
    PRINT 'Before Update Trigger on Book';
END;
GO
ALTER TABLE [dbo].[Book] ENABLE TRIGGER [BeforeUpdateBook]
GO
