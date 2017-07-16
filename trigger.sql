CREATE TRIGGER DiscountTrigger ON Tour
AFTER INSERT, UPDATE
AS
	DECLARE @percent FLOAT
	SELECT @percent = Discount
	FROM inserted

	IF (@percent < 1)
	BEGIN
		RAISERROR('Discount must be <= 100%',16,1)
		ROLLBACK TRANSACTION
	END
go

CREATE TRIGGER GenderTrigger ON Passenger
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
go

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
go
*/

CREATE TRIGGER CmtStatus ON Comment
AFTER INSERT, UPDATE
AS
	DECLARE @stt VARCHAR
	SELECT @stt = CheckStatus
	FROM inserted

	IF (@stt not in ('T', 'F'))
	BEGIN
		RAISERROR ('Wrong Status',16,1)
		ROLLBACK TRANSACTION
	END
go

CREATE TRIGGER AgeTrigger ON Member
AFTER INSERT, UPDATE
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
go

CREATE TRIGGER PassportTrigger ON Passenger
AFTER INSERT, UPDATE
AS
	DECLARE @day INT, @date DATE
	SELECT @date = PassportExpireTime
	FROM inserted

	SET @day = YEAR(GETDATE()) - YEAR(@date)

	IF (@day < 0)
	BEGIN
		RAISERROR ('Passport Out Of Dated',16,1)
		ROLLBACK TRANSACTION
	END
go