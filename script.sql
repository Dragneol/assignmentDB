USE [travel.com.vn]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 07/05/2017 15:30:40 ******/
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
/****** Object:  Table [dbo].[Passenger]    Script Date: 07/05/2017 15:30:40 ******/
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
/****** Object:  Table [dbo].[Member]    Script Date: 07/05/2017 15:30:40 ******/
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
/****** Object:  Table [dbo].[Booking]    Script Date: 07/05/2017 15:30:40 ******/
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
/****** Object:  Table [dbo].[TypeOfPassenger]    Script Date: 07/05/2017 15:30:40 ******/
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
/****** Object:  Table [dbo].[TourDay]    Script Date: 07/05/2017 15:30:40 ******/
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
/****** Object:  Table [dbo].[Like]    Script Date: 07/05/2017 15:30:40 ******/
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
/****** Object:  Table [dbo].[Comment]    Script Date: 07/05/2017 15:30:40 ******/
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
/****** Object:  ForeignKey [FK_Comment_Tour]    Script Date: 07/05/2017 15:30:40 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Tour] FOREIGN KEY([TourCode])
REFERENCES [dbo].[Tour] ([TourCode])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Tour]
GO
/****** Object:  ForeignKey [FK_Like_Tour]    Script Date: 07/05/2017 15:30:40 ******/
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_Tour] FOREIGN KEY([TourCode])
REFERENCES [dbo].[Tour] ([TourCode])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_Tour]
GO
/****** Object:  ForeignKey [FK_TourDay_Tour]    Script Date: 07/05/2017 15:30:40 ******/
ALTER TABLE [dbo].[TourDay]  WITH CHECK ADD  CONSTRAINT [FK_TourDay_Tour] FOREIGN KEY([TourCode])
REFERENCES [dbo].[Tour] ([TourCode])
GO
ALTER TABLE [dbo].[TourDay] CHECK CONSTRAINT [FK_TourDay_Tour]
GO
