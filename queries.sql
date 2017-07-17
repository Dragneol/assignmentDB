USE [travel.com.vn]

/* Calc booking price */
DECLARE @bookingCode DECIMAL(18)
SET @bookingCode = CAST(170712249611 AS DECIMAL(18))
SELECT SUM(Price.Amount)
FROM Booking
  JOIN Passenger
    ON Booking.Code = Passenger.BookingCode
  JOIN Price
    ON Booking.TourCode = Price.TourCode AND Passenger.Type = Price.TypeOfPassengerCode
WHERE Code = @bookingCode

/* Book tour */
DECLARE @code DECIMAL(18)
DECLARE @tourCode CHAR(30) /* Which tour to book */
DECLARE @customerName NVARCHAR(MAX)
DECLARE @customerMail CHAR(50)
DECLARE @customerPhone# CHAR(15)
DECLARE @customerAddess NVARCHAR(MAX)
DECLARE @note NVARCHAR(MAX)
DECLARE @checker DECIMAL(18)
DECLARE @bookBy DECIMAL(18)
INSERT INTO Booking (Code, TourCode, CustomerName, CustomerMail, CustomerPhone#, CustomerAddress, Note, CheckerEmployeeID, BookedByMemberID)
VALUES (@code, @tourCode, @customerName, @customerMail, @customerPhone#, @customerAddess, @note, @checker, @bookBy)

/* Lookup booking */
DECLARE @bookingCode DECIMAL(18)
SELECT *
FROM Booking
WHERE Code = @bookingCode

/* Find tour */
DECLARE @tourNamePattern NVARCHAR(MAX)
SELECT *
FROM Tour
WHERE Name LIKE @tourNamePattern

/* View tour */
SELECT TOP 10 *
FROM Tour

/* Write comment */
DECLARE @commentID DECIMAL(18) /* Unique id created by backend */
DECLARE @tourCode CHAR(30)
DECLARE @authorEmail CHAR(50)
DECLARE @content NVARCHAR(MAX)
DECLARE @checker DECIMAL(18)
INSERT INTO Comment (ID, TourCode, AuthourEmail, Content, CheckerEmployeeID, CheckStatus)
VALUES (@commentID, @tourCode, @authorEmail, @content, @checker, 'T')

/* View favorite tour */
DECLARE @memberID DECIMAL(18)
SELECT Tour.*
FROM [Like]
  JOIN Tour ON [Like].TourCode = Tour.Code
WHERE MemberID = @memberID

/* Update member's infomation */
DECLARE @memberID DECIMAL(10)
DECLARE @newEmail CHAR(50)
DECLARE @newName NVARCHAR(MAX)
DECLARE @newGender CHAR
DECLARE @newDob DATE
DECLARE @newAddress NVARCHAR(MAX)
DECLARE @newPhone# CHAR(15)
UPDATE Member
SET Email = @newEmail, Name = @newNAme, Gender = @newGender, DayOfBirth = @newDob, Address = @newAddress,
  Phone#  = @newPhone#
WHERE ID = @memberID

/* Post tour */
DECLARE @tourCode CHAR(30)
DECLARE @tourName NVARCHAR(MAX)
DECLARE @tourDuration NVARCHAR(50)
DECLARE @tourDiscount FLOAT
DECLARE @tourDomesticOrInternational CHAR
DECLARE @tourDetails NVARCHAR(MAX)
DECLARE @tourSlot INT
DECLARE @tourDeptTime DATE
DECLARE @tourAuthor DECIMAL(18)
INSERT INTO Tour (Code, Name, Duration, Discount, DomesticOrInternational, Detail, Slot, ContentOfEmployeeID, DeptTime)
VALUES (@tourCode, @tourName, @tourDuration, @tourDiscount, @tourDomesticOrInternational, @tourDetails, @tourSlot,
        @tourAuthor, @tourDeptTime)

/* Check comment */
DECLARE @status CHAR
DECLARE @commentID DECIMAL(18)
UPDATE Comment
SET CheckStatus = @status
WHERE ID = @commentID