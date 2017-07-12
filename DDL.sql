CREATE TABLE Booking
(
    Code DECIMAL(18) PRIMARY KEY NOT NULL,
    TourCode CHAR(30) NOT NULL,
    CustomerName NVARCHAR(MAX),
    CustomerMail CHAR(50),
    CustomerPhone# CHAR(15),
    CustomerAddress NVARCHAR(MAX),
    Note NVARCHAR(MAX),
    CheckerEmployeeID DECIMAL(18),
    BookedByMemberID DECIMAL(10)
);
CREATE TABLE Comment
(
    ID DECIMAL(18) PRIMARY KEY NOT NULL,
    TourCode CHAR(30),
    AuthourEmail CHAR(50),
    Content NVARCHAR(MAX),
    CheckerEmployeeID DECIMAL(18),
    CheckStatus CHAR
);
CREATE TABLE Department
(
    ID INT PRIMARY KEY NOT NULL,
    Name NVARCHAR(MAX)
);
CREATE TABLE Employee
(
    ID DECIMAL(18) PRIMARY KEY NOT NULL,
    Name NVARCHAR(MAX),
    Address NVARCHAR(MAX),
    Phone# CHAR(15),
    DepartmentID INT
);
CREATE TABLE GuideTour
(
    EmployeeID DECIMAL(18) NOT NULL,
    TourCode CHAR(30) NOT NULL,
    CONSTRAINT PK_GuideTour PRIMARY KEY (EmployeeID, TourCode)
);
CREATE TABLE [Like]
(
    MemberID DECIMAL(10) NOT NULL,
    TourCode CHAR(30) NOT NULL,
    CONSTRAINT PK_Like PRIMARY KEY (MemberID, TourCode)
);
CREATE TABLE Member
(
    ID DECIMAL(10) PRIMARY KEY NOT NULL,
    Email CHAR(50),
    Name NVARCHAR(MAX),
    Gender CHAR,
    DayOfBirth DATE,
    Address NVARCHAR(MAX),
    Phone# CHAR(15)
);
CREATE TABLE Passenger
(
    ID DECIMAL(18) PRIMARY KEY NOT NULL,
    BookingCode DECIMAL(18),
    Name NVARCHAR(MAX),
    DayOfBirth DATE,
    Gender CHAR,
    Type INT,
    Passport# DECIMAL(18),
    PassportExpireTime DATETIME
);
CREATE TABLE Price
(
    TourCode CHAR(30) NOT NULL,
    TypeOfPassengerCode INT NOT NULL,
    PriceName NVARCHAR(MAX),
    Amount DECIMAL(18),
    CONSTRAINT PK_TourCode_TypeOfPassenger PRIMARY KEY (TourCode, TypeOfPassengerCode)
);
CREATE TABLE Tour
(
    Code CHAR(30) PRIMARY KEY NOT NULL,
    Name NVARCHAR(MAX),
    Duration TIME,
    Discount FLOAT,
    DomesticOrInternational CHAR,
    Detail NVARCHAR(MAX),
    Slot INT,
    ContentOfEmployeeID DECIMAL(18)
);
CREATE TABLE TourDay
(
    ID NCHAR(10) PRIMARY KEY NOT NULL,
    TourCode CHAR(30),
    Day# INT,
    Detail NVARCHAR(MAX),
    Destination NVARCHAR(100)
);
create table TypeOfPassenger
(
	Code INT PRIMARY KEY NOT NULL,
	AgeType NCHAR(50),
	NationType NCHAR(50)
);

ALTER TABLE Booking ADD CONSTRAINT FK_Booking_Tour FOREIGN KEY (TourCode) REFERENCES Tour (Code);
ALTER TABLE Booking ADD CONSTRAINT FK_Booking_Employee FOREIGN KEY (CheckerEmployeeID) REFERENCES Employee (ID);
ALTER TABLE Booking ADD CONSTRAINT FK_Booking_Member FOREIGN KEY (BookedByMemberID) REFERENCES Member (MemberID);

ALTER TABLE Comment ADD CONSTRAINT FK_Comment_Tour FOREIGN KEY (TourCode) REFERENCES Tour (Code);
ALTER TABLE Comment ADD CONSTRAINT FK_Comment_Employee FOREIGN KEY (CheckerEmployeeID) REFERENCES Employee (ID);

ALTER TABLE Employee ADD CONSTRAINT FK_Employee_Department FOREIGN KEY (DepartmentID) REFERENCES Department (ID);

ALTER TABLE GuideTour ADD CONSTRAINT FK_GuideTour_Employee FOREIGN KEY (EmployeeID) REFERENCES Employee (ID);
ALTER TABLE GuideTour ADD CONSTRAINT FK_GuideTour_Tour FOREIGN KEY (TourCode) REFERENCES Tour (Code);

ALTER TABLE [Like] ADD CONSTRAINT FK_Like_Member FOREIGN KEY (MemberID) REFERENCES Member (ID);
ALTER TABLE [Like] ADD CONSTRAINT FK_Like_Tour FOREIGN KEY (TourCode) REFERENCES Tour (Code);

ALTER TABLE Passenger ADD CONSTRAINT FK_Passenger_Booking FOREIGN KEY (BookingCode) REFERENCES Booking (Code);
ALTER TABLE Passenger ADD CONSTRAINT FK_Passenger_TypeOfPassenger FOREIGN KEY (Type) REFERENCES TypeOfPassenger (Code);

ALTER TABLE Price ADD CONSTRAINT FK_Price_Tour FOREIGN KEY (TourCode) REFERENCES Tour (Code);
ALTER TABLE Price ADD CONSTRAINT FK_Price_TypeOfPassenger FOREIGN KEY (TypeOfPassengerCode) REFERENCES TypeOfPassenger (Code);

ALTER TABLE Tour ADD CONSTRAINT FK_Tour_Employee FOREIGN KEY (ContentOfEmployeeID) REFERENCES Employee (ID);

ALTER TABLE TourDay ADD CONSTRAINT FK_TourDay_Tour FOREIGN KEY (TourCode) REFERENCES Tour (Code);
