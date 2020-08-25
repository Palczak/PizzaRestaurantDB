----deliverer delete, insert, update procedures -------------------------------------------------

/*
CREATE PROCEDURE dbo.delete_permanent_deliverer
@Par_id_deliverer int
AS
BEGIN
DELETE dbo.deliverer
WHERE id_deliverer = @Par_id_deliverer;
END;
GO
*/

CREATE PROCEDURE dbo.deliverer_delete
@Par_id_deliverer int
AS
BEGIN
	UPDATE dbo.deliverer
	SET
		active_deliverer = 0
	WHERE id_deliverer = @Par_id_deliverer;
END;
GO

CREATE PROCEDURE dbo.deliverer_insert
@Par_name_deliverer varchar(50),
@Par_second_name_deliverer varchar(50),
@Par_phone_deliverer varchar(20)
AS
BEGIN
	INSERT dbo.deliverer
		(name_deliverer, second_name_deliverer, phone_deliverer)
	VALUES
		(@Par_name_deliverer, @Par_second_name_deliverer, @Par_phone_deliverer);
END;
GO

CREATE PROCEDURE dbo.deliverer_update
@Par_id_deliverer int,
@Par_name_deliverer varchar(50),
@Par_second_name_deliverer varchar(50),
@Par_phone_deliverer varchar(20)
AS
BEGIN
	UPDATE dbo.deliverer
	SET
		name_deliverer = @Par_name_deliverer,
		second_name_deliverer = @Par_second_name_deliverer,
		phone_deliverer =  @Par_phone_deliverer
	WHERE id_deliverer = @Par_id_deliverer;
END;
GO

----addition delete, insert, update procedures

/*
CREATE PROCEDURE dbo.addition_delete_permanent
@Par_id_addition int
AS
BEGIN
DELETE dbo.addition
WHERE id_addition = @Par_id_addition;
END;
GO
*/

CREATE PROCEDURE dbo.addition_delete
@Par_id_addition int
AS
BEGIN
	UPDATE dbo.addition
	SET
		active_addition = 0
	WHERE id_addition = @Par_id_addition;
END;
GO

CREATE PROCEDURE dbo.addition_insert
@Par_id_addition_category int,
@Par_name_addition varchar(50),
@Par_price_addition smallmoney
AS
BEGIN
	INSERT dbo.addition
		(id_addition_category, name_addition, price_addition)
	VALUES
		(@Par_id_addition_category, @Par_name_addition, @Par_price_addition);
END;
GO

CREATE PROCEDURE dbo.addition_update
@Par_id_addition int,
@Par_id_addition_category int,
@Par_name_addition varchar(50),
@Par_price_addition smallmoney
AS
BEGIN
	UPDATE dbo.addition
	SET
		id_addition_category = @Par_id_addition_category,
		name_addition = @Par_name_addition,
		price_addition =  @Par_price_addition
	WHERE id_addition = @Par_id_addition;
END;
GO

----ingredient delete, insert, update procedures
/*
CREATE PROCEDURE dbo.ingredient_delete_permanent
@Par_id_ingredient int
AS
BEGIN
DELETE dbo.ingredient
WHERE id_ingredient = @Par_id_ingredient;
END;
GO
*/

CREATE PROCEDURE dbo.ingredient_delete
@Par_id_ingredient int
AS
BEGIN
	UPDATE dbo.ingredient
	SET
		active_ingredient = 0
	WHERE id_ingredient = @Par_id_ingredient;
END;
GO


CREATE PROCEDURE dbo.ingredient_insert
@Par_name_ingredient varchar(50),
@Par_price_ingredient smallmoney
AS
BEGIN
	INSERT dbo.ingredient
		(name_ingredient, price_ingredient)
	VALUES
		(@Par_name_ingredient, @Par_price_ingredient);
END;
GO

CREATE PROCEDURE dbo.ingredient_update
@Par_id_ingredient int,
@Par_name_ingredient varchar(50),
@Par_price_ingredient smallmoney
AS
BEGIN
	UPDATE dbo.ingredient
	SET
		name_ingredient = @Par_name_ingredient,
		price_ingredient =  @Par_price_ingredient
	WHERE id_ingredient = @Par_id_ingredient;
END;
GO

----order addition delete, insert, update procedures
--use only during order
CREATE PROCEDURE dbo.order_addition_delete_permanent
@Par_id_order_addition int
AS
BEGIN
	DELETE dbo.order_addition
	WHERE id_order_addition = @Par_id_order_addition;
END;
GO

CREATE PROCEDURE dbo.order_addition_insert
@Par_quantity_addition int,
@Par_id_addition int,
@Par_id_purchase_order int
AS
BEGIN

	DECLARE @Var_price_order_addition smallmoney;
	DECLARE @Var_addition_price smallmoney;

	SET @Var_addition_price = (SELECT price_addition FROM dbo.addition WHERE id_addition = @Par_id_addition);
	SET @Var_price_order_addition = @Var_addition_price * @Par_quantity_addition;

	INSERT dbo.order_addition
		(quantity_addition, price_order_addition, id_addition, id_purchase_order)
	VALUES
		(@Par_quantity_addition, @Var_price_order_addition, @Par_id_addition, @Par_id_purchase_order);

END;
GO

CREATE PROCEDURE dbo.order_addition_update
@Par_id_order_addition int, 
@Par_quantity_addition int,
@Par_id_addition int,
@Par_id_purchase_order int
AS
BEGIN
	DECLARE @Var_price_order_addition smallmoney;
	DECLARE @Var_addition_price smallmoney;

	SET @Var_addition_price = (SELECT price_addition FROM dbo.addition WHERE id_addition = @Par_id_addition);
	SET @Var_price_order_addition = @Var_addition_price * @Par_quantity_addition;
	
	UPDATE dbo.order_addition
	SET
		quantity_addition = @Par_quantity_addition,
		price_order_addition =  @Var_price_order_addition,
		id_addition =  @Par_id_addition,
		id_purchase_order =  @Par_id_purchase_order
	WHERE id_order_addition = @Par_id_order_addition;
END;
GO
----order pizza delete, insert, update procedures

CREATE PROCEDURE dbo.order_pizza_delete_permanent
@Par_id_order_pizza int
AS
BEGIN
	DELETE dbo.order_pizza
	WHERE id_order_pizza = @Par_id_order_pizza;
END;
GO

CREATE PROCEDURE dbo.order_pizza_insert
@Par_quantity_pizza int,
@Par_id_pizza_size int,
@Par_id_pizza int,
@Par_id_pizza_second_half int,
@Par_id_purchase_order int
AS
BEGIN

	DECLARE @Var_price_order_pizza smallmoney;

	IF(@Par_id_pizza_second_half IS NULL)
		SET @Var_price_order_pizza = (SELECT price_pizza FROM dbo.pizza WHERE id_pizza = @Par_id_pizza);
	ELSE
	BEGIN
		SET @Var_price_order_pizza = (SELECT price_pizza FROM dbo.pizza WHERE id_pizza = @Par_id_pizza);
		SET @Var_price_order_pizza += (SELECT price_pizza FROM dbo.pizza WHERE id_pizza = @Par_id_pizza_second_half);
		SET @Var_price_order_pizza /= 2;
	END 

	SET @Var_price_order_pizza *= (SELECT multiplier FROM dbo.pizza_size WHERE id_pizza_size = @Par_id_pizza_size);
	SET @Var_price_order_pizza *= @Par_quantity_pizza;
	
	INSERT dbo.order_pizza
		(quantity_pizza, price_order_pizza, id_pizza_size, id_pizza, id_pizza_second_half, id_purchase_order)
	VALUES
		(@Par_quantity_pizza, @Var_price_order_pizza, @Par_id_pizza_size, @Par_id_pizza, @Par_id_pizza_second_half, @Par_id_purchase_order);
END;
GO

CREATE PROCEDURE dbo.order_pizza_update
@Par_id_order_pizza int,
@Par_quantity_pizza int,
@Par_id_pizza_size int,
@Par_id_pizza int,
@Par_id_pizza_second_half int,
@Par_id_purchase_order int
AS
BEGIN

	DECLARE @Var_price_order_pizza smallmoney;

	IF(@Par_id_pizza_second_half IS NULL)
		SET @Var_price_order_pizza = (SELECT price_pizza FROM dbo.pizza WHERE id_pizza = @Par_id_pizza);
	ELSE
		BEGIN
		SET @Var_price_order_pizza = (SELECT price_pizza FROM dbo.pizza WHERE id_pizza = @Par_id_pizza);
		SET @Var_price_order_pizza += (SELECT price_pizza FROM dbo.pizza WHERE id_pizza = @Par_id_pizza_second_half);
		SET @Var_price_order_pizza /= 2;
	END 

	SET @Var_price_order_pizza *= (SELECT multiplier FROM dbo.pizza_size WHERE id_pizza_size = @Par_id_pizza_size);
	SET @Var_price_order_pizza *= @Par_quantity_pizza;
	
	UPDATE dbo.order_pizza
	SET
		quantity_pizza = @Par_quantity_pizza,
		price_order_pizza = @Var_price_order_pizza,
		id_pizza_size = @Par_id_pizza_size,
		id_pizza = @Par_id_pizza,
		id_pizza_second_half = @Par_id_pizza_second_half,
		id_purchase_order = @Par_id_purchase_order
	WHERE
		id_order_pizza = @Par_id_order_pizza;

END;
GO


----pizza ingredient delete, insert, update procedures

CREATE PROCEDURE dbo.pizza_ingredient_delete_permanent
@Par_id_pizza_ingredient int
AS
BEGIN
-----------------------------------------------------TRANSACTION------------------------------------------
SET XACT_ABORT ON;
BEGIN TRANSACTION

	DECLARE @Var_price_pizza smallmoney;
	DECLARE @Var_id_pizza int;
	DECLARE @Var_id_ingredient int;

	SET @Var_id_pizza = (SELECT id_pizza FROM dbo.pizza_ingredient WHERE id_pizza_ingredient = @Par_id_pizza_ingredient);
	SET @Var_id_ingredient = (SELECT id_ingredient FROM dbo.pizza_ingredient WHERE id_pizza_ingredient = @Par_id_pizza_ingredient);

	SET @Var_price_pizza = (SELECT price_pizza FROM dbo.pizza WHERE id_pizza = @Var_id_pizza);
	SET @Var_price_pizza -= (SELECT price_ingredient FROM dbo.ingredient WHERE id_ingredient = @Var_id_ingredient);

	UPDATE dbo.pizza
	SET
		price_pizza = @Var_price_pizza
	WHERE id_pizza = @Var_id_pizza;

	DELETE dbo.pizza_ingredient
	WHERE id_pizza_ingredient = @Par_id_pizza_ingredient;

IF(@@ERROR <> 0)
	ROLLBACK TRANSACTION
ELSE
	COMMIT TRANSACTION

END;
GO

CREATE PROCEDURE dbo.pizza_ingredient_insert
@Par_id_pizza int,
@Par_id_ingredient int
AS
BEGIN
-----------------------------------------------------TRANSACTION------------------------------------------
SET XACT_ABORT ON;
BEGIN TRANSACTION

	DECLARE @Var_price_pizza smallmoney;

	INSERT dbo.pizza_ingredient
		(id_pizza, id_ingredient)
	VALUES
		(@Par_id_pizza, @Par_id_ingredient);

	SET @Var_price_pizza = (SELECT price_pizza FROM dbo.pizza WHERE id_pizza = @Par_id_pizza);

	SET @Var_price_pizza += (SELECT price_ingredient FROM dbo.ingredient WHERE id_ingredient = @Par_id_ingredient);

	UPDATE dbo.pizza
	SET
		price_pizza = @Var_price_pizza
	WHERE id_pizza = @Par_id_pizza;
	
IF(@@ERROR <> 0)
	ROLLBACK TRANSACTION
ELSE
	COMMIT TRANSACTION

END;
GO

----pizza delete, insert, update procedures
/*
CREATE PROCEDURE dbo.pizza_delete_permanent
@Par_id_pizza int
AS
BEGIN
DELETE dbo.pizza
WHERE id_pizza = @Par_id_pizza;
END;
GO
*/
CREATE PROCEDURE dbo.pizza_delete
@Par_id_pizza int
AS
BEGIN
-----------------------------------------------------TRANSACTION------------------------------------------
SET XACT_ABORT ON;
BEGIN TRANSACTION

	UPDATE dbo.pizza_ingredient
	SET	active_pizza_ingredient = 0
	WHERE id_pizza = @Par_id_pizza;

	UPDATE dbo.pizza
	SET	active_pizza = 0
	WHERE id_pizza = @Par_id_pizza;

IF(@@ERROR <> 0)
	ROLLBACK TRANSACTION
ELSE
	COMMIT TRANSACTION

END;
GO

CREATE PROCEDURE dbo.pizza_insert
@Par_name_pizza varchar(50),
@Par_description_pizza varchar(200)
AS
-----------------------------------------------------TRANSACTION------------------------------------------
BEGIN
BEGIN TRANSACTION

	INSERT dbo.pizza
		(name_pizza, description_pizza)
	VALUES
		(@Par_name_pizza, @Par_description_pizza);

	DECLARE @Var_pizza_id int;
	SET @Var_pizza_id = IDENT_CURRENT('dbo.pizza');
	SET XACT_ABORT ON;

	EXECUTE dbo.pizza_ingredient_insert
		@Par_id_pizza = @Var_pizza_id,
		@Par_id_ingredient = 1;

	EXECUTE dbo.pizza_ingredient_insert
		@Par_id_pizza = @Var_pizza_id,
		@Par_id_ingredient = 2;

	EXECUTE dbo.pizza_ingredient_insert
		@Par_id_pizza = @Var_pizza_id,
		@Par_id_ingredient = 3;
	--add pizza base, cheese, tomato sauce

IF(@@ERROR <> 0)
	ROLLBACK TRANSACTION
ELSE
	COMMIT TRANSACTION

END;
GO

CREATE PROCEDURE dbo.pizza_update
@Par_id_pizza int,
@Par_name_pizza varchar(50),
@Par_description_pizza varchar(200)
AS
BEGIN
	UPDATE dbo.pizza
	SET
		name_pizza = @Par_name_pizza,
		description_pizza = @Par_description_pizza
	WHERE id_pizza = @Par_id_pizza;
END;
GO

----purchase order delete, insert, update procedures

CREATE PROCEDURE dbo.purchase_order_delete_permanent
@Par_id_purchase_order int
AS
BEGIN
	DELETE dbo.purchase_order
	WHERE id_purchase_order = @Par_id_purchase_order;
END;
GO

CREATE PROCEDURE dbo.purchase_order_insert
@Par_id_order_type int,
@Par_id_deliverer int,
@Par_note varchar(500),
@Par_phone_client varchar(20),
@Par_id_order_status int,
@Par_town varchar(50),
@Par_street varchar(50),
@Par_residence varchar(10),
@Par_place varchar(10)
AS
BEGIN

	INSERT dbo.purchase_order
		(id_order_type, id_deliverer, note, phone_client, id_order_status, town, street, residence, place)
	VALUES
		(@Par_id_order_type, @Par_id_deliverer, @Par_note, @Par_phone_client, @Par_id_order_status, @Par_town, @Par_street, @Par_residence, @Par_place);
END;
GO

CREATE PROCEDURE dbo.purchase_order_update
@Par_id_purchase_order int,
@Par_id_order_type int,
@Par_id_deliverer int,
@Par_note varchar(500),
@Par_phone_client varchar(20),
@Par_id_order_status int,
@Par_town varchar(50),
@Par_street varchar(50),
@Par_residence varchar(10),
@Par_place varchar(10)
AS
BEGIN
	UPDATE dbo.purchase_order
	SET
		id_order_type = @Par_id_order_type,
		id_deliverer = @Par_id_deliverer,
		note = @Par_note,
		phone_client = @Par_phone_client,
		id_order_status = @Par_id_order_status,
		town = @Par_town,
		street = @Par_street,
		residence = @Par_residence,
		place = @Par_place
	WHERE id_purchase_order = @Par_id_purchase_order;
END;
GO

CREATE PROCEDURE dbo.purchase_order_calculate
@Par_id_purchase_order int
AS
BEGIN
	DECLARE @Var_price_purchase_order smallmoney;
	DECLARE @Var_tmp_sum smallmoney;
	SET @Var_price_purchase_order = 0;


	SET @Var_tmp_sum = (SELECT SUM(price_order_pizza) FROM dbo.order_pizza WHERE id_purchase_order = @Par_id_purchase_order);
	IF(@Var_tmp_sum IS NULL)
		SET @Var_tmp_sum = 0;
	SET @Var_price_purchase_order += @Var_tmp_sum;

	SET @Var_tmp_sum = (SELECT SUM(price_order_addition) FROM dbo.order_addition WHERE id_purchase_order = @Par_id_purchase_order);
	IF(@Var_tmp_sum IS NULL)
		SET @Var_tmp_sum = 0;
	SET @Var_price_purchase_order += @Var_tmp_sum;

	UPDATE dbo.purchase_order
	SET price_purchase_order = @Var_price_purchase_order
	WHERE id_purchase_order = @Par_id_purchase_order;
END;
GO
