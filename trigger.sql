CREATE TRIGGER 
    DiscountTrigger 
ON 
    Tour
AFTER 
    INSERT, UPDATE
AS
    DECLARE @percent FLOAT
    SELECT @percent = Discount
    FROM inserted

    IF (@percent < 1)
        BEGIN
            RAISERROR('Discount must be <= 100%',16,1)
            ROLLBACK TRANSACTION
        END
GO

CREATE TRIGGER 
    PassengerGenderTrigger 
ON 
    Passenger
AFTER 
    INSERT, UPDATE
AS 
    DECLARE @gender CHAR
    SELECT @gender = Gender
    FROM inserted

    IF (@gender not in ('F','M','B','L','G'))
        BEGIN
            RAISERROR ('Wrong Gender',16,1)
            ROLLBACK TRANSACTION
        END
GO

CREATE TRIGGER MemberGenderTrigger ON Member 
AFTER INSERT, UPDATE
AS 
	DECLARE @gender CHAR
	SELECT @gender = Gender
	FROM inserted

	IF (@gender not in ('F','M','B','L','G'))
	BEGIN
		RAISERROR ('Wrong Gender',16,1)
		ROLLBACK TRANSACTION
	END
GO
/*
CREATE TRIGGER SexTrigger ON Member
AFTER INSERT, UPDATE
AS 
	DECLARE @gender CHAR
	SELECT @gender = Gender
	FROM inserted

	IF (@gender not in ('F','M','B','L','G'))
	BEGIN
		RAISERROR ('Wrong Gender',16,1)
		ROLLBACK TRANSACTION
	END
GO
*/

CREATE TRIGGER 
    CmtStatus 
ON 
    Comment
AFTER 
    INSERT, UPDATE
AS
    DECLARE @stt VARCHAR
    SELECT @stt = CheckStatus
    FROM inserted

    IF (@stt not in ('T', 'F'))
        BEGIN
            RAISERROR ('Wrong Status',16,1)
            ROLLBACK TRANSACTION
        END
GO

CREATE TRIGGER 
    MemberAgeTrigger 
ON 
    Member
AFTER 
    INSERT, UPDATE
AS
    DECLARE @age INT, @birthdate DATE
    SELECT @birthdate = DayOfBirth
    FROM inserted

    SET @age = YEAR(GETDATE()) - YEAR(@birthdate)

    IF (@age < 0 OR @age > 150)
        BEGIN
            RAISERROR ('Wrong Day OF Birth',16,1)
            ROLLBACK TRANSACTION
        END
GO

CREATE TRIGGER 
    PassengerAgeTrigger 
ON 
    Passenger
AFTER 
    INSERT, UPDATE
AS
    DECLARE @age INT, @birthdate DATE
    SELECT @birthdate = DayOfBirth
    FROM inserted

    SET @age = YEAR(GETDATE()) - YEAR(@birthdate)

    IF (@age < 0 OR @age > 150)
        BEGIN
            RAISERROR ('Wrong Day OF Birth',16,1)
            ROLLBACK TRANSACTION
        END
GO

CREATE TRIGGER 
    PassengerAgeTypeTrigger 
ON 
    Passenger
AFTER 
    INSERT, UPDATE
AS
    DECLARE @type INT, @age INT, @birthdate DATE
    SELECT @type = Type, @birthdate = DayOfBirth
    FROM inserted
    
    SET @age = YEAR(GETDATE()) - YEAR(@birthdate)

    IF (@type IN (4,8,12,16,19) AND @age >= 2)
        BEGIN
            RAISERROR ('Type of passenger and age mismatch', 16, 1)    
            ROLLBACK TRANSACTION
        END

    IF (@type = 18 AND (@age < 2 OR @age >= 12))
        BEGIN
            RAISERROR ('Type of passenger and age mismatch', 16, 1)    
            ROLLBACK TRANSACTION
        END

    IF (@type IN (3,7,11,15) AND (@age < 2 OR @age >= 5))
        BEGIN
            RAISERROR ('Type of passenger and age mismatch', 16, 1)    
            ROLLBACK TRANSACTION
        END

    IF (@type IN (2,6,10,14) AND (@age < 5 OR @age >= 12))
        BEGIN
            RAISERROR ('Type of passenger and age mismatch', 16, 1)    
            ROLLBACK TRANSACTION
        END

    IF (@type IN (1,5,9,13,17) AND @age < 12)
        BEGIN
            RAISERROR ('Type of passenger and age mismatch', 16, 1)    
            ROLLBACK TRANSACTION
        END
GO

CREATE TRIGGER 
    PassportTrigger 
ON 
    Passenger
AFTER 
    INSERT, UPDATE
AS
    DECLARE @day INT, @date DATE, @deptTime DATE
    SELECT @date = PassportExpireTime

    FROM inserted

    SELECT @deptTime = Tour.DeptTime
    FROM Passenger
    JOIN Booking
    ON Passenger.BookingCode = Booking.Code
    JOIN Tour
    ON Booking.TourCode = Tour.Code

    SET @day = YEAR(GETDATE()) - YEAR(@date)

    IF (@day < 0)
        BEGIN
            RAISERROR ('Passport Out Of Dated',16,1)
            ROLLBACK TRANSACTION
        END

    IF (@deptTime > @date)
        BEGIN
            RAISERROR ('Passport will expire before department', 16, 1)
            ROLLBACK TRANSACTION
        END
GO
