/* foo */

USE [travel.com.vn]
GO

CREATE TABLE dbo.Booking
(
  Code              DECIMAL(18) NOT NULL
    PRIMARY KEY,
  TourCode          CHAR(30)    NOT NULL,
  CustomerName      NVARCHAR(MAX),
  CustomerMail      CHAR(50),
  [CustomerPhone#]  CHAR(15),
  CustomerAddress   NVARCHAR(MAX),
  Note              NVARCHAR(MAX),
  CheckerEmployeeID DECIMAL(18),
  BookedByMemberID  DECIMAL(10)
)
GO

CREATE TABLE dbo.Comment
(
  ID                DECIMAL(18) NOT NULL
    PRIMARY KEY,
  TourCode          CHAR(30),
  AuthourEmail      CHAR(50),
  Content           NVARCHAR(MAX),
  CheckerEmployeeID DECIMAL(18),
  CheckStatus       CHAR
)
GO

CREATE TABLE dbo.Department
(
  ID   INT NOT NULL
    PRIMARY KEY,
  Name NVARCHAR(MAX)
)
GO

CREATE TABLE dbo.Employee
(
  ID           DECIMAL(18) NOT NULL
    PRIMARY KEY,
  Name         NVARCHAR(MAX),
  Address      NVARCHAR(MAX),
  [Phone#]     CHAR(15),
  DepartmentID INT
    CONSTRAINT FK_Employee_Department
    REFERENCES Department
)
GO

ALTER TABLE Booking
  ADD CONSTRAINT FK_Booking_Employee
FOREIGN KEY (CheckerEmployeeID) REFERENCES Employee
GO

ALTER TABLE Comment
  ADD CONSTRAINT FK_Comment_Employee
FOREIGN KEY (CheckerEmployeeID) REFERENCES Employee
GO

CREATE TABLE dbo.GuideTour
(
  EmployeeID DECIMAL(18) NOT NULL
    CONSTRAINT FK_GuideTour_Employee
    REFERENCES Employee,
  TourCode   CHAR(30)    NOT NULL,
  CONSTRAINT PK_GuideTour
  PRIMARY KEY (EmployeeID, TourCode)
)
GO

CREATE TABLE dbo.[Like]
(
  MemberID DECIMAL(10) NOT NULL,
  TourCode CHAR(30)    NOT NULL,
  CONSTRAINT PK_Like
  PRIMARY KEY (MemberID, TourCode)
)
GO

CREATE TABLE dbo.Member
(
  ID         DECIMAL(10) NOT NULL
    PRIMARY KEY,
  Email      CHAR(50),
  Name       NVARCHAR(MAX),
  Gender     CHAR,
  DayOfBirth DATE,
  Address    NVARCHAR(MAX),
  [Phone#]   CHAR(15)
)
GO

ALTER TABLE Booking
  ADD CONSTRAINT FK_Booking_Member
FOREIGN KEY (BookedByMemberID) REFERENCES Member
GO

ALTER TABLE [Like]
  ADD CONSTRAINT FK_Like_Member
FOREIGN KEY (MemberID) REFERENCES Member
GO

CREATE TABLE dbo.Passenger
(
  ID                 DECIMAL(18) NOT NULL
    PRIMARY KEY,
  BookingCode        DECIMAL(18)
    CONSTRAINT FK_Passenger_Booking
    REFERENCES Booking,
  Name               NVARCHAR(MAX),
  DayOfBirth         DATE,
  Gender             CHAR,
  Type               INT,
  [Passport#]        DECIMAL(18),
  PassportExpireTime DATETIME
)
GO

CREATE TABLE dbo.Price
(
  TourCode            CHAR(30)   NOT NULL,
  TypeOfPassengerCode INT        NOT NULL,
  PriceName           NCHAR(100) NOT NULL,
  Amount              DECIMAL(18),
  CONSTRAINT PK_Price
  PRIMARY KEY (TourCode, TypeOfPassengerCode, PriceName)
)
GO

CREATE TABLE dbo.Tour
(
  Code                    CHAR(30) NOT NULL
    PRIMARY KEY,
  Name                    NVARCHAR(MAX),
  Duration                TIME,
  Discount                FLOAT,
  DomesticOrInternational CHAR,
  Detail                  NVARCHAR(MAX),
  Slot                    INT,
  DeptTime                Date,
  ContentOfEmployeeID     DECIMAL(18)
    CONSTRAINT FK_Tour_Employee
    REFERENCES Employee
)
GO

ALTER TABLE Booking
  ADD CONSTRAINT FK_Booking_Tour
FOREIGN KEY (TourCode) REFERENCES Tour
GO

ALTER TABLE Comment
  ADD CONSTRAINT FK_Comment_Tour
FOREIGN KEY (TourCode) REFERENCES Tour
GO

ALTER TABLE GuideTour
  ADD CONSTRAINT FK_GuideTour_Tour
FOREIGN KEY (TourCode) REFERENCES Tour
GO

ALTER TABLE [Like]
  ADD CONSTRAINT FK_Like_Tour
FOREIGN KEY (TourCode) REFERENCES Tour
GO

ALTER TABLE Price
  ADD CONSTRAINT FK_Price_Tour
FOREIGN KEY (TourCode) REFERENCES Tour
GO

CREATE TABLE dbo.TourDay
(
  ID          NCHAR(10) NOT NULL
    PRIMARY KEY,
  TourCode    CHAR(30)
    CONSTRAINT FK_TourDay_Tour
    REFERENCES Tour,
  [Day#]      INT,
  Detail      NVARCHAR(MAX),
  Destination NVARCHAR(100)
)
GO

CREATE TABLE dbo.TypeOfPassenger
(
  Code       INT NOT NULL
    PRIMARY KEY,
  AgeType    NCHAR(50),
  NationType NCHAR(50)
)
GO

ALTER TABLE Passenger
  ADD CONSTRAINT FK_Passenger_TypeOfPassenger
FOREIGN KEY (Type) REFERENCES TypeOfPassenger
GO

ALTER TABLE Price
  ADD CONSTRAINT FK_Price_TypeOfPassenger
FOREIGN KEY (TypeOfPassengerCode) REFERENCES TypeOfPassenger
GO



