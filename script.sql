USE [game_store]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [FK_users_userType]
GO
ALTER TABLE [dbo].[games] DROP CONSTRAINT [FK_games_gameType]
GO
/****** Object:  Table [dbo].[userType]    Script Date: 2020-10-07 2:04:24 PM ******/
DROP TABLE [dbo].[userType]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2020-10-07 2:04:24 PM ******/
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 2020-10-07 2:04:24 PM ******/
DROP TABLE [dbo].[reviews]
GO
/****** Object:  Table [dbo].[gameType]    Script Date: 2020-10-07 2:04:24 PM ******/
DROP TABLE [dbo].[gameType]
GO
/****** Object:  Table [dbo].[games]    Script Date: 2020-10-07 2:04:24 PM ******/
DROP TABLE [dbo].[games]
GO
/****** Object:  Table [dbo].[games]    Script Date: 2020-10-07 2:04:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[games](
	[gameId] [int] IDENTITY(1,1) NOT NULL,
	[gameTypeId] [int] NOT NULL,
	[gameName] [varchar](45) NOT NULL,
	[developer] [varchar](45) NOT NULL,
	[rating] [int] NOT NULL,
 CONSTRAINT [PK_games] PRIMARY KEY CLUSTERED 
(
	[gameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gameType]    Script Date: 2020-10-07 2:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gameType](
	[gameTypeId] [int] IDENTITY(1,1) NOT NULL,
	[gameType] [varchar](25) NOT NULL,
 CONSTRAINT [PK_gameType] PRIMARY KEY CLUSTERED 
(
	[gameTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 2020-10-07 2:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[userId] [int] NOT NULL,
	[gameId] [int] NOT NULL,
	[reviewContent] [varchar](max) NOT NULL,
 CONSTRAINT [PK_reviews_1] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[gameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2020-10-07 2:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[userTypeId] [int] NOT NULL,
	[username] [varchar](25) NOT NULL,
	[accountNum] [int] NOT NULL,
	[fName] [varchar](25) NOT NULL,
	[address] [varchar](30) NOT NULL,
	[lName] [varchar](25) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[phoneNum] [varchar](14) NOT NULL,
	[birthDate] [date] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userType]    Script Date: 2020-10-07 2:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userType](
	[userTypeId] [int] IDENTITY(1,1) NOT NULL,
	[userType] [varchar](25) NOT NULL,
 CONSTRAINT [PK_userType] PRIMARY KEY CLUSTERED 
(
	[userTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[games] ON 

INSERT [dbo].[games] ([gameId], [gameTypeId], [gameName], [developer], [rating]) VALUES (1, 1, N'Dark Souls', N'Bandai Namco', 7)
INSERT [dbo].[games] ([gameId], [gameTypeId], [gameName], [developer], [rating]) VALUES (2, 2, N'Destiny 2', N'Bungie', 6)
INSERT [dbo].[games] ([gameId], [gameTypeId], [gameName], [developer], [rating]) VALUES (3, 3, N'Civilization', N'Fluffy Games', 9)
SET IDENTITY_INSERT [dbo].[games] OFF
SET IDENTITY_INSERT [dbo].[gameType] ON 

INSERT [dbo].[gameType] ([gameTypeId], [gameType]) VALUES (1, N'RPG')
INSERT [dbo].[gameType] ([gameTypeId], [gameType]) VALUES (2, N'Action')
INSERT [dbo].[gameType] ([gameTypeId], [gameType]) VALUES (3, N'Strategy')
SET IDENTITY_INSERT [dbo].[gameType] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([userId], [userTypeId], [username], [accountNum], [fName], [address], [lName], [email], [phoneNum], [birthDate]) VALUES (1, 1, N'ryguy324', 567198, N'Ryan', N'124 Fake Lane', N'Bewausoleil', N'rbeausoliel@gmail.com', N'9054457896', CAST(N'1987-01-02' AS Date))
INSERT [dbo].[users] ([userId], [userTypeId], [username], [accountNum], [fName], [address], [lName], [email], [phoneNum], [birthDate]) VALUES (2, 2, N'davedude69', 432198, N'Dave', N'1 Pumpernickle', N'Watson', N'dwatson@gmail.com', N'9055647896', CAST(N'1989-01-01' AS Date))
INSERT [dbo].[users] ([userId], [userTypeId], [username], [accountNum], [fName], [address], [lName], [email], [phoneNum], [birthDate]) VALUES (3, 3, N'sambro567', 234678, N'Sam', N'14 Bippity Dr', N'Boyard', N'sboyard@gmail.com', N'9055641234', CAST(N'1989-04-07' AS Date))
INSERT [dbo].[users] ([userId], [userTypeId], [username], [accountNum], [fName], [address], [lName], [email], [phoneNum], [birthDate]) VALUES (4, 3, N'conman444', 123456, N'Conor', N'19 Boppity Rd', N'Shea', N'cshea@gmail.com', N'905534567', CAST(N'1992-01-14' AS Date))
SET IDENTITY_INSERT [dbo].[users] OFF
SET IDENTITY_INSERT [dbo].[userType] ON 

INSERT [dbo].[userType] ([userTypeId], [userType]) VALUES (1, N'admin')
INSERT [dbo].[userType] ([userTypeId], [userType]) VALUES (2, N'member')
INSERT [dbo].[userType] ([userTypeId], [userType]) VALUES (3, N'guest')
SET IDENTITY_INSERT [dbo].[userType] OFF
ALTER TABLE [dbo].[games]  WITH CHECK ADD  CONSTRAINT [FK_games_gameType] FOREIGN KEY([gameTypeId])
REFERENCES [dbo].[gameType] ([gameTypeId])
GO
ALTER TABLE [dbo].[games] CHECK CONSTRAINT [FK_games_gameType]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_userType] FOREIGN KEY([userTypeId])
REFERENCES [dbo].[userType] ([userTypeId])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_userType]
GO
