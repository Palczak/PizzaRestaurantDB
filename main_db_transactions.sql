--archive

SELECT *
INTO dbo.deliverer_archive
FROM dbo.deliverer;
GO

ALTER TABLE dbo.deliverer_archive
ADD CONSTRAINT PK_deliverer_archive
PRIMARY KEY (id_deliverer);
GO

--DELETE dbo.deliverer_archive;


--archive

CREATE PROCEDURE dbo.deliverer_archive_make
@Par_id_deliverer int
AS
BEGIN

SET XACT_ABORT ON;
BEGIN TRANSACTION

INSERT dbo.deliverer_archive
(id_deliverer, name_deliverer, second_name_deliverer, phone_deliverer)
SELECT id_deliverer, name_deliverer, second_name_deliverer, phone_deliverer
FROM dbo.deliverer
WHERE id_deliverer = @Par_id_deliverer;

DELETE dbo.deliverer
WHERE id_deliverer = @Par_id_deliverer;

IF(@@ERROR <> 0)
	ROLLBACK TRANSACTION
ELSE
	COMMIT TRANSACTION

END;
GO

--archive finish

EXECUTE dbo.deliverer_archive_make
@Par_id_deliverer = 5;
GO

SELECT *
FROM dbo.deliverer;

SELECT *
FROM dbo.deliverer_archive;

--price history
CREATE TABLE dbo.drink_price_history
(
	id_drink_history int NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_drink INT NOT NULL REFERENCES dbo.drink(id_drink),
	price_prev smallmoney NULL,
	price_new smallmoney NOT NULL,
	date_change datetime NOT NULL
);


--price history
CREATE PROCEDURE dbo.drink_price_change
@Par_id_drink int,
@Par_new_price smallmoney
AS
BEGIN

SET XACT_ABORT ON;
BEGIN TRANSACTION

DECLARE @Var_prev_price smallmoney;

SELECT @Var_prev_price = price_drink
FROM dbo.drink
WHERE id_drink = @Par_id_drink;

IF(@Var_prev_price <> @Par_new_price)
BEGIN

	UPDATE dbo.drink
	SET price_drink = @Par_new_price
	WHERE id_drink = @Par_id_drink;

	INSERT dbo.drink_price_history
	(id_drink, price_prev, price_new, date_change)
	VALUES
	(@Par_id_drink, @Var_prev_price, @Par_new_price, GETDATE());

END

IF(@@ERROR <> 0)
	ROLLBACK TRANSACTION
ELSE
	COMMIT TRANSACTION

END;
GO

EXECUTE dbo.drink_price_change
@Par_id_drink = 1,
@Par_new_price = 5;
GO

SELECT * FROM dbo.drink_price_history;