USE [travel.com.vn]
GO
ALTER TABLE [dbo].[TourDay] DROP CONSTRAINT [FK_TourDay_Tour]
GO
ALTER TABLE [dbo].[Tour] DROP CONSTRAINT [FK_Tour_Price]
GO
ALTER TABLE [dbo].[Tour] DROP CONSTRAINT [FK_Tour_Employee]
GO
ALTER TABLE [dbo].[Price] DROP CONSTRAINT [FK_Price_TypeOfPassenger]
GO
ALTER TABLE [dbo].[Passenger] DROP CONSTRAINT [FK_Passenger_TypeOfPassenger]
GO
ALTER TABLE [dbo].[Like] DROP CONSTRAINT [FK_Like_Tour]
GO
ALTER TABLE [dbo].[Like] DROP CONSTRAINT [FK_Like_Member]
GO
ALTER TABLE [dbo].[GuideTour] DROP CONSTRAINT [FK_GuideTour_Tour1]
GO
ALTER TABLE [dbo].[GuideTour] DROP CONSTRAINT [FK_GuideTour_Tour]
GO
ALTER TABLE [dbo].[GuideTour] DROP CONSTRAINT [FK_GuideTour_Employee]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FK_Comment_Tour]
GO
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FK_Comment_Employee]
GO
ALTER TABLE [dbo].[Booking] DROP CONSTRAINT [FK_Booking_Tour]
GO
ALTER TABLE [dbo].[Booking] DROP CONSTRAINT [FK_Booking_Member]
GO
ALTER TABLE [dbo].[Booking] DROP CONSTRAINT [FK_Booking_Employee]
GO
/****** Object:  Index [IX_Booking]    Script Date: 7/16/2017 7:58:12 PM ******/
DROP INDEX [IX_Booking] ON [dbo].[Booking]
GO
/****** Object:  Table [dbo].[TypeOfPassenger]    Script Date: 7/16/2017 7:58:12 PM ******/
DROP TABLE [dbo].[TypeOfPassenger]
GO
/****** Object:  Table [dbo].[TourDay]    Script Date: 7/16/2017 7:58:12 PM ******/
DROP TABLE [dbo].[TourDay]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 7/16/2017 7:58:12 PM ******/
DROP TABLE [dbo].[Tour]
GO
/****** Object:  Table [dbo].[Price]    Script Date: 7/16/2017 7:58:12 PM ******/
DROP TABLE [dbo].[Price]
GO
/****** Object:  Table [dbo].[Passenger]    Script Date: 7/16/2017 7:58:12 PM ******/
DROP TABLE [dbo].[Passenger]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 7/16/2017 7:58:12 PM ******/
DROP TABLE [dbo].[Member]
GO
/****** Object:  Table [dbo].[Like]    Script Date: 7/16/2017 7:58:12 PM ******/
DROP TABLE [dbo].[Like]
GO
/****** Object:  Table [dbo].[GuideTour]    Script Date: 7/16/2017 7:58:12 PM ******/
DROP TABLE [dbo].[GuideTour]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 7/16/2017 7:58:12 PM ******/
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 7/16/2017 7:58:12 PM ******/
DROP TABLE [dbo].[Department]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 7/16/2017 7:58:12 PM ******/
DROP TABLE [dbo].[Comment]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 7/16/2017 7:58:12 PM ******/
DROP TABLE [dbo].[Booking]
GO
USE [master]
GO
/****** Object:  Database [travel.com.vn]    Script Date: 7/16/2017 7:58:12 PM ******/
DROP DATABASE [travel.com.vn]
GO
/****** Object:  Database [travel.com.vn]    Script Date: 7/16/2017 7:58:12 PM ******/
CREATE DATABASE [travel.com.vn]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'travel.com.vn', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.ENT2016\MSSQL\DATA\travel.com.vn.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'travel.com.vn_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.ENT2016\MSSQL\DATA\travel.com.vn_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [travel.com.vn] SET COMPATIBILITY_LEVEL = 130
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
ALTER DATABASE [travel.com.vn] SET AUTO_CLOSE ON 
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
ALTER DATABASE [travel.com.vn] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [travel.com.vn] SET  MULTI_USER 
GO
ALTER DATABASE [travel.com.vn] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [travel.com.vn] SET DB_CHAINING OFF 
GO
ALTER DATABASE [travel.com.vn] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [travel.com.vn] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [travel.com.vn] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'travel.com.vn', N'ON'
GO
ALTER DATABASE [travel.com.vn] SET QUERY_STORE = OFF
GO
USE [travel.com.vn]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [travel.com.vn]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 7/16/2017 7:58:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Code] [decimal](18, 0) NOT NULL,
	[TourCode] [nchar](10) NOT NULL,
	[CustomerName] [nchar](10) NULL,
	[CustomerMail] [varchar](50) NULL,
	[CustomerPhone#] [decimal](18, 0) NULL,
	[CustomerAddress] [nvarchar](50) NULL,
	[Note] [nvarchar](10) NULL,
	[ConfimedID] [decimal](18, 0) NULL,
	[BookedBy] [decimal](10, 0) NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 7/16/2017 7:58:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[cmtID] [decimal](18, 0) NOT NULL,
	[TourCode] [nchar](10) NULL,
	[AuthourEmail] [varchar](50) NULL,
	[cmtContent] [nvarchar](max) NULL,
	[CheckerID] [decimal](18, 0) NULL,
	[CheckStatus] [char](1) NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[cmtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 7/16/2017 7:58:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 7/16/2017 7:58:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GuideTour]    Script Date: 7/16/2017 7:58:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GuideTour](
	[empID] [decimal](18, 0) NOT NULL,
	[Tour_Code] [nchar](10) NOT NULL,
 CONSTRAINT [PK_GuideTour] PRIMARY KEY CLUSTERED 
(
	[empID] ASC,
	[Tour_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Like]    Script Date: 7/16/2017 7:58:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Like](
	[memID] [decimal](10, 0) NOT NULL,
	[TourCode] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Like] PRIMARY KEY CLUSTERED 
(
	[memID] ASC,
	[TourCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 7/16/2017 7:58:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passenger]    Script Date: 7/16/2017 7:58:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Price]    Script Date: 7/16/2017 7:58:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 7/16/2017 7:58:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[TourCode] [nchar](10) NOT NULL,
	[TourName] [nvarchar](50) NULL,
	[Duration] [time](7) NULL,
	[Discount] [float] NULL,
	[Domestic Or International] [char](1) NULL,
	[Detail] [nvarchar](100) NULL,
	[Slot] [int] NULL,
	[ContentAuthorID] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[TourCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourDay]    Script Date: 7/16/2017 7:58:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfPassenger]    Script Date: 7/16/2017 7:58:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Booking]    Script Date: 7/16/2017 7:58:12 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Booking] ON [dbo].[Booking]
(
	[BookedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Employee] FOREIGN KEY([ConfimedID])
REFERENCES [dbo].[Employee] ([empID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Employee]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Member] FOREIGN KEY([BookedBy])
REFERENCES [dbo].[Member] ([memID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Member]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Tour] FOREIGN KEY([TourCode])
REFERENCES [dbo].[Tour] ([TourCode])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Tour]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Employee] FOREIGN KEY([CheckerID])
REFERENCES [dbo].[Employee] ([empID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Employee]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Tour] FOREIGN KEY([TourCode])
REFERENCES [dbo].[Tour] ([TourCode])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Tour]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([depID])
REFERENCES [dbo].[Department] ([depID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[GuideTour]  WITH CHECK ADD  CONSTRAINT [FK_GuideTour_Employee] FOREIGN KEY([empID])
REFERENCES [dbo].[Employee] ([empID])
GO
ALTER TABLE [dbo].[GuideTour] CHECK CONSTRAINT [FK_GuideTour_Employee]
GO
ALTER TABLE [dbo].[GuideTour]  WITH CHECK ADD  CONSTRAINT [FK_GuideTour_Tour] FOREIGN KEY([Tour_Code])
REFERENCES [dbo].[Tour] ([TourCode])
GO
ALTER TABLE [dbo].[GuideTour] CHECK CONSTRAINT [FK_GuideTour_Tour]
GO
ALTER TABLE [dbo].[GuideTour]  WITH CHECK ADD  CONSTRAINT [FK_GuideTour_Tour1] FOREIGN KEY([Tour_Code])
REFERENCES [dbo].[Tour] ([TourCode])
GO
ALTER TABLE [dbo].[GuideTour] CHECK CONSTRAINT [FK_GuideTour_Tour1]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_Member] FOREIGN KEY([memID])
REFERENCES [dbo].[Member] ([memID])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_Member]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_Tour] FOREIGN KEY([TourCode])
REFERENCES [dbo].[Tour] ([TourCode])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_Tour]
GO
ALTER TABLE [dbo].[Passenger]  WITH CHECK ADD  CONSTRAINT [FK_Passenger_TypeOfPassenger] FOREIGN KEY([Type])
REFERENCES [dbo].[TypeOfPassenger] ([Code])
GO
ALTER TABLE [dbo].[Passenger] CHECK CONSTRAINT [FK_Passenger_TypeOfPassenger]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [FK_Price_TypeOfPassenger] FOREIGN KEY([passengerCode])
REFERENCES [dbo].[TypeOfPassenger] ([Code])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [FK_Price_TypeOfPassenger]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_Employee] FOREIGN KEY([ContentAuthorID])
REFERENCES [dbo].[Employee] ([empID])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_Employee]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_Price] FOREIGN KEY([TourCode])
REFERENCES [dbo].[Price] ([TourCode])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_Price]
GO
ALTER TABLE [dbo].[TourDay]  WITH CHECK ADD  CONSTRAINT [FK_TourDay_Tour] FOREIGN KEY([TourCode])
REFERENCES [dbo].[Tour] ([TourCode])
GO
ALTER TABLE [dbo].[TourDay] CHECK CONSTRAINT [FK_TourDay_Tour]
GO
USE [master]
GO
ALTER DATABASE [travel.com.vn] SET  READ_WRITE 
GO
