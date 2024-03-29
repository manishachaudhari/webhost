USE [master]
GO
/****** Object:  Database [Voating_Sys]    Script Date: 02-Dec-17 3:19:59 PM ******/
CREATE DATABASE [Voating_Sys]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Voating_Sys', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Voating_Sys.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Voating_Sys_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Voating_Sys_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Voating_Sys] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Voating_Sys].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Voating_Sys] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Voating_Sys] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Voating_Sys] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Voating_Sys] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Voating_Sys] SET ARITHABORT OFF 
GO
ALTER DATABASE [Voating_Sys] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Voating_Sys] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Voating_Sys] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Voating_Sys] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Voating_Sys] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Voating_Sys] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Voating_Sys] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Voating_Sys] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Voating_Sys] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Voating_Sys] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Voating_Sys] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Voating_Sys] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Voating_Sys] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Voating_Sys] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Voating_Sys] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Voating_Sys] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Voating_Sys] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Voating_Sys] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Voating_Sys] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Voating_Sys] SET  MULTI_USER 
GO
ALTER DATABASE [Voating_Sys] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Voating_Sys] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Voating_Sys] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Voating_Sys] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Voating_Sys]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 02-Dec-17 3:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 02-Dec-17 3:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MobileNo] [bigint] NULL,
	[Email] [varchar](50) NULL,
	[Message] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Party]    Script Date: 02-Dec-17 3:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Party](
	[PartyID] [int] IDENTITY(1,1) NOT NULL,
	[PartyName] [varchar](50) NULL,
	[PartyLogo] [varchar](50) NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[PartyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Party_Candidate]    Script Date: 02-Dec-17 3:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Party_Candidate](
	[CandidateID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateName] [varchar](50) NULL,
	[Education] [nchar](10) NULL,
	[Age] [int] NULL,
	[ContactNo] [bigint] NULL,
	[City] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[PartyID] [int] NULL,
 CONSTRAINT [PK_Party_Candidate] PRIMARY KEY CLUSTERED 
(
	[CandidateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Result]    Script Date: 02-Dec-17 3:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Result](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[CandidateID] [int] NULL,
 CONSTRAINT [PK_Result] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserTypeMaster]    Script Date: 02-Dec-17 3:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserTypeMaster](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[ContactNo] [bigint] NULL,
	[City] [varchar](50) NULL,
	[AdharCard] [varchar](50) NULL,
	[PanCard] [varchar](50) NULL,
	[VoterID] [varchar](50) NULL,
	[Active ] [char](10) NULL,
 CONSTRAINT [PK_UserTypeMaster] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([ID], [Username], [Password], [Name], [Email]) VALUES (1, N'Shubham4556', N'85160shu', N'Shubham Agrawal', N'agrawalshubham4556@gmail.com')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([Id], [FirstName], [LastName], [MobileNo], [Email], [Message]) VALUES (1, N'Shubham', N'agrawal', 8319058205, N'agrawalshubham4556@gmail.com', N'its good')
INSERT [dbo].[Feedback] ([Id], [FirstName], [LastName], [MobileNo], [Email], [Message]) VALUES (2, N'Shubhaam', N'Agrawal', 8319058205, N'agrawalshubham4556@gmail.com', N'iuuugghfghffg')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
SET IDENTITY_INSERT [dbo].[Party] ON 

INSERT [dbo].[Party] ([PartyID], [PartyName], [PartyLogo]) VALUES (1, N'BJP', N'~/Upload/bjp-logo.jpg')
INSERT [dbo].[Party] ([PartyID], [PartyName], [PartyLogo]) VALUES (2, N'Congress', N'~/Upload/1397736373.jpg')
SET IDENTITY_INSERT [dbo].[Party] OFF
SET IDENTITY_INSERT [dbo].[Party_Candidate] ON 

INSERT [dbo].[Party_Candidate] ([CandidateID], [CandidateName], [Education], [Age], [ContactNo], [City], [Email], [PartyID]) VALUES (1, N'shubham agrawal', N'Be        ', 22, 8319058205, N'mumbai', N'agrawalshubham4556@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[Party_Candidate] OFF
SET IDENTITY_INSERT [dbo].[Result] ON 

INSERT [dbo].[Result] ([ID], [UserName], [CandidateID]) VALUES (1, N'shubham agrawal', 1)
INSERT [dbo].[Result] ([ID], [UserName], [CandidateID]) VALUES (2, N'pankaj', 1)
INSERT [dbo].[Result] ([ID], [UserName], [CandidateID]) VALUES (1002, N'Manish Agrawal', 1)
SET IDENTITY_INSERT [dbo].[Result] OFF
SET IDENTITY_INSERT [dbo].[UserTypeMaster] ON 

INSERT [dbo].[UserTypeMaster] ([UserID], [Name], [Password], [Email], [ContactNo], [City], [AdharCard], [PanCard], [VoterID], [Active ]) VALUES (1, N'shubham agrawal', N'qqsafOM', N'agrawalshubham4556@gmail.com', 8319058205, N'mumbai', N'~/Upload/th0BJOV7AS.jpg', N'~/Upload/th6W26R7V6.jpg', N'~/Upload/thT5ODHVWI.jpg', N'True      ')
INSERT [dbo].[UserTypeMaster] ([UserID], [Name], [Password], [Email], [ContactNo], [City], [AdharCard], [PanCard], [VoterID], [Active ]) VALUES (2, N'shubham agrawal', N'5IgDPjR', N'shubham1979@hotmail.com', 8319058209, N'mumbai', N'~/Upload/th0BJOV7AS.jpg', N'~/Upload/th6W26R7V6.jpg', N'~/Upload/thT5ODHVWI.jpg', N'True      ')
INSERT [dbo].[UserTypeMaster] ([UserID], [Name], [Password], [Email], [ContactNo], [City], [AdharCard], [PanCard], [VoterID], [Active ]) VALUES (3, N'sumit', N'4', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTypeMaster] ([UserID], [Name], [Password], [Email], [ContactNo], [City], [AdharCard], [PanCard], [VoterID], [Active ]) VALUES (7, N'pankaj', N'5', N'aa', 5, NULL, NULL, NULL, NULL, N'True      ')
INSERT [dbo].[UserTypeMaster] ([UserID], [Name], [Password], [Email], [ContactNo], [City], [AdharCard], [PanCard], [VoterID], [Active ]) VALUES (1002, N'Manish Agrawal', N'YnxXXQ11', N'manish.agarawal14@gmail.com', 9039039144, N'Mumbai', N'~/Upload/th0BJOV7AS.jpg', N'~/Upload/th6W26R7V6.jpg', N'~/Upload/thT5ODHVWI.jpg', N'True      ')
SET IDENTITY_INSERT [dbo].[UserTypeMaster] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Party]    Script Date: 02-Dec-17 3:20:00 PM ******/
ALTER TABLE [dbo].[Party] ADD  CONSTRAINT [IX_Party] UNIQUE NONCLUSTERED 
(
	[PartyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Party_Candidate]    Script Date: 02-Dec-17 3:20:00 PM ******/
ALTER TABLE [dbo].[Party_Candidate] ADD  CONSTRAINT [IX_Party_Candidate] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Party_Candidate_1]    Script Date: 02-Dec-17 3:20:00 PM ******/
ALTER TABLE [dbo].[Party_Candidate] ADD  CONSTRAINT [IX_Party_Candidate_1] UNIQUE NONCLUSTERED 
(
	[ContactNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserTypeMaster]    Script Date: 02-Dec-17 3:20:00 PM ******/
ALTER TABLE [dbo].[UserTypeMaster] ADD  CONSTRAINT [IX_UserTypeMaster] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserTypeMaster_1]    Script Date: 02-Dec-17 3:20:00 PM ******/
ALTER TABLE [dbo].[UserTypeMaster] ADD  CONSTRAINT [IX_UserTypeMaster_1] UNIQUE NONCLUSTERED 
(
	[ContactNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Voating_Sys] SET  READ_WRITE 
GO
