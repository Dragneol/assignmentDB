USE [master]
GO
/****** Object:  Database [travel.com.vn]    Script Date: 07/05/2017 15:58:56 ******/
CREATE DATABASE [travel.com.vn] ON  PRIMARY 
( NAME = N'travel.com.vn', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.EXP2008\MSSQL\DATA\travel.com.vn.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'travel.com.vn_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.EXP2008\MSSQL\DATA\travel.com.vn_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [travel.com.vn] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [travel.com.vn].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [travel.com.vn] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [travel.com.vn] SET ANSI_NULLS OFF
GO
ALTER DATABASE [travel.com.vn] SET ANSI_PADDING OFF
GO
ALTER DATABASE [travel.com.vn] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [travel.com.vn] SET ARITHABORT OFF
GO
ALTER DATABASE [travel.com.vn] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [travel.com.vn] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [travel.com.vn] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [travel.com.vn] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [travel.com.vn] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [travel.com.vn] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [travel.com.vn] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [travel.com.vn] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [travel.com.vn] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [travel.com.vn] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [travel.com.vn] SET  DISABLE_BROKER
GO
ALTER DATABASE [travel.com.vn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [travel.com.vn] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [travel.com.vn] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [travel.com.vn] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [travel.com.vn] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [travel.com.vn] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [travel.com.vn] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [travel.com.vn] SET  READ_WRITE
GO
ALTER DATABASE [travel.com.vn] SET RECOVERY SIMPLE
GO
ALTER DATABASE [travel.com.vn] SET  MULTI_USER
GO
ALTER DATABASE [travel.com.vn] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [travel.com.vn] SET DB_CHAINING OFF
GO
USE [travel.com.vn]
GO
/****** Object:  Table [dbo].[TypeOfPassenger]    Script Date: 07/05/2017 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfPassenger](
	[Code] [int] NOT NULL,
	[AgeType] [int] NULL,
	[NationType] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeOfPassenger] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Price]    Script Date: 07/05/2017 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price](
	[TourCode] [nchar](10) NOT NULL,
	[passengerCode] [int] NULL,
	[PriceName] [numeric](18, 0) NULL,
	[Amount] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED 
(
	[TourCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 07/05/2017 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[depID] [decimal](18, 0) NOT NULL,
	[depName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[depID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 07/05/2017 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Member](
	[memID] [decimal](10, 0) NOT NULL,
	[Email] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [char](1) NULL,
	[DayOfBirth] [date] NULL,
	[Address] [nvarchar](50) NULL,
	[Phone#] [decimal](11, 0) NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[memID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 07/05/2017 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[empID] [decimal](18, 0) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone#] [decimal](18, 0) NULL,
	[depID] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[empID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 07/05/2017 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tour](
	[TourCode] [nchar](10) NOT NULL,
	[TourName] [nvarchar](50) NULL,
	[Duration] [time](7) NULL,
	[Discount] [float] NULL,
	[Domestic Or International] [char](1) NULL,
	[Detail] [nvarchar](100) NULL,
	[Slot] [int] NULL,
	[ContentAuthorID] [nchar](10) NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[TourCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Passenger]    Script Date: 07/05/2017 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Passenger](
	[passengerID] [decimal](18, 0) NOT NULL,
	[BookingCode] [decimal](18, 0) NULL,
	[Name] [nvarchar](50) NULL,
	[DayOfBirth] [date] NULL,
	[Gender] [char](1) NULL,
	[Type] [int] NULL,
	[Passport#] [decimal](18, 0) NULL,
	[PassportExpireTime] [datetime] NULL,
 CONSTRAINT [PK_Passenger] PRIMARY KEY CLUSTERED 
(
	[passengerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TourDay]    Script Date: 07/05/2017 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourDay](
	[TourDayID] [nchar](10) NOT NULL,
	[TourCode] [nchar](10) NULL,
	[Day#] [int] NULL,
	[Detail] [nvarchar](100) NULL,
	[Destination] [nvarchar](50) NULL,
 CONSTRAINT [PK_TourDay] PRIMARY KEY CLUSTERED 
(
	[TourDayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Like]    Script Date: 07/05/2017 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Like](
	[memID] [nchar](10) NOT NULL,
	[TourCode] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Like] PRIMARY KEY CLUSTERED 
(
	[memID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GuideTour]    Script Date: 07/05/2017 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GuideTour](
	[empID] [decimal](18, 0) NOT NULL,
	[TourCode] [nchar](10) NOT NULL,
 CONSTRAINT [PK_GuideTour] PRIMARY KEY CLUSTERED 
(
	[empID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 07/05/2017 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[cmtID] [decimal](18, 0) NOT NULL,
	[TourCode] [nchar](10) NULL,
	[AuthourEmail] [varchar](50) NULL,
	[cmtContent] [nvarchar](max) NULL,
	[CheckerID] [nchar](10) NULL,
	[CheckStatus] [char](1) NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[cmtID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 07/05/2017 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Booking](
	[Code] [decimal](18, 0) NOT NULL,
	[TourCode] [nchar](10) NOT NULL,
	[CustomerName] [nchar](10) NULL,
	[CustomerMail] [varchar](50) NULL,
	[CustomerPhone#] [decimal](18, 0) NULL,
	[CustomerAddress] [nvarchar](50) NULL,
	[Note] [nvarchar](10) NULL,
	[ConfimedID] [nchar](10) NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Employee_Department]    Script Date: 07/05/2017 15:58:57 ******/
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([depID])
REFERENCES [dbo].[Department] ([depID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
/****** Object:  ForeignKey [FK_Tour_Price]    Script Date: 07/05/2017 15:58:57 ******/
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_Price] FOREIGN KEY([TourCode])
REFERENCES [dbo].[Price] ([TourCode])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_Price]
GO
/****** Object:  ForeignKey [FK_Passenger_TypeOfPassenger]    Script Date: 07/05/2017 15:58:57 ******/
ALTER TABLE [dbo].[Passenger]  WITH CHECK ADD  CONSTRAINT [FK_Passenger_TypeOfPassenger] FOREIGN KEY([Type])
REFERENCES [dbo].[TypeOfPassenger] ([Code])
GO
ALTER TABLE [dbo].[Passenger] CHECK CONSTRAINT [FK_Passenger_TypeOfPassenger]
GO
/****** Object:  ForeignKey [FK_TourDay_Tour]    Script Date: 07/05/2017 15:58:57 ******/
ALTER TABLE [dbo].[TourDay]  WITH CHECK ADD  CONSTRAINT [FK_TourDay_Tour] FOREIGN KEY([TourCode])
REFERENCES [dbo].[Tour] ([TourCode])
GO
ALTER TABLE [dbo].[TourDay] CHECK CONSTRAINT [FK_TourDay_Tour]
GO
/****** Object:  ForeignKey [FK_Like_Tour]    Script Date: 07/05/2017 15:58:57 ******/
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_Tour] FOREIGN KEY([TourCode])
REFERENCES [dbo].[Tour] ([TourCode])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_Tour]
GO
/****** Object:  ForeignKey [FK_GuideTour_Employee]    Script Date: 07/05/2017 15:58:57 ******/
ALTER TABLE [dbo].[GuideTour]  WITH CHECK ADD  CONSTRAINT [FK_GuideTour_Employee] FOREIGN KEY([empID])
REFERENCES [dbo].[Employee] ([empID])
GO
ALTER TABLE [dbo].[GuideTour] CHECK CONSTRAINT [FK_GuideTour_Employee]
GO
/****** Object:  ForeignKey [FK_Comment_Tour]    Script Date: 07/05/2017 15:58:57 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Tour] FOREIGN KEY([TourCode])
REFERENCES [dbo].[Tour] ([TourCode])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Tour]
GO
/****** Object:  ForeignKey [FK_Booking_Tour]    Script Date: 07/05/2017 15:58:57 ******/
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Tour] FOREIGN KEY([TourCode])
REFERENCES [dbo].[Tour] ([TourCode])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Tour]
GO
