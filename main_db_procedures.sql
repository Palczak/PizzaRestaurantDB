----deliverer delete, insert, update procedures
CREATE PROCEDURE dbo.deliverer_delete
@Par_id_deliverer int
AS
BEGIN
DELETE dbo.deliverer
WHERE id_deliverer = @Par_id_deliverer;
END;
GO
------------------------------

CREATE PROCEDURE dbo.deliverer_insert
@Par_id_deliverer int,
@Par_name_deliverer varchar(50),
@Par_second_name_deliverer varchar(50),
@Par_phone_deliverer varchar(20)
AS
BEGIN
INSERT dbo.deliverer
(id_deliverer, name_deliverer, second_name_deliverer, phone_deliverer)
VALUES
(@Par_id_deliverer, @Par_name_deliverer, @Par_second_name_deliverer, @Par_phone_deliverer);
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

----addition delete, insert, update procedures xxxxxxxxxxxxINCOPLETE NEED ARCHIVExxxxxxxxxxxxxx

CREATE PROCEDURE dbo.addition_delete
@Par_id_addition int
AS
BEGIN
DELETE dbo.addition
WHERE id_addition = @Par_id_addition;
END;
GO

CREATE PROCEDURE dbo.addition_insert
@Par_id_addition int,
@Par_id_addition_category int,
@Par_name_addition varchar(50),
@Par_price_addition smallmoney
AS
BEGIN
INSERT dbo.addition
(id_addition, id_addition_category, name_addition, price_addition)
VALUES
(@Par_id_addition, @Par_id_addition_category, @Par_name_addition, @Par_price_addition);
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

----ingredient delete, insert, update procedures xxxxxxxxxxxxINCOPLETE NEED ARCHIVExxxxxxxxxxxxxx

CREATE PROCEDURE dbo.ingredient_delete
@Par_id_ingredient int
AS
BEGIN
DELETE dbo.ingredient
WHERE id_ingredient = @Par_id_ingredient;
END;
GO

CREATE PROCEDURE dbo.ingredient_insert
@Par_id_ingredient int,
@Par_name_ingredient varchar(50),
@Par_price_ingredient smallmoney
AS
BEGIN
INSERT dbo.ingredient
(id_ingredient, name_ingredient, price_ingredient)
VALUES
(@Par_id_ingredient, @Par_name_ingredient, @Par_price_ingredient);
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

----order addition delete, insert, update procedures xxxxxxxxxxxxINCOPLETExxxxxxxxxxxxxx

CREATE PROCEDURE dbo.order_addition_delete
@Par_id_order_addition int
AS
BEGIN
DELETE dbo.order_addition
WHERE id_order_addition = @Par_id_order_addition;
END;
GO

CREATE PROCEDURE dbo.order_addition_insert
@Par_id_order_addition int, 
@Par_quantity_addition int,
@Par_id_addition int,
@Par_id_purchase_order int
AS
--automatic calculation of price based on quantity and basic price
--declaring variable for insert and tmp variable for calculations
DECLARE @Var_price_order_addition smallmoney;
DECLARE @Var_addition_price smallmoney;
-- getting price from "addition" table
SELECT @Var_addition_price = price_addition FROM dbo.addition WHERE id_addition = @Par_id_addition;
-- calculations
SET @Var_price_order_addition = @Var_addition_price * @Par_quantity_addition;

BEGIN
INSERT dbo.order_addition
(id_order_addition, quantity_addition, price_order_addition, id_addition, id_purchase_order)
VALUES
(@Par_id_order_addition, @Par_quantity_addition, @Var_price_order_addition, @Par_id_addition, @Par_id_purchase_order);
END;
GO

CREATE PROCEDURE dbo.order_addition_update
@Par_id_order_addition int, 
@Par_quantity_addition int,
@Par_id_addition int,
@Par_id_purchase_order int
AS
--automatic calculation of price based on quantity and basic price
--declaring variable for insert and tmp variable for calculations
DECLARE @Var_price_order_addition smallmoney;
DECLARE @Var_addition_price smallmoney;
-- getting price from "addition" table
SELECT @Var_addition_price = price_addition FROM dbo.addition WHERE id_addition = @Par_id_addition;
-- calculations
SET @Var_price_order_addition = @Var_addition_price * @Par_quantity_addition;

BEGIN
UPDATE dbo.order_addition
SET
	quantity_addition = @Par_quantity_addition,
	price_order_addition =  @Var_price_order_addition,
	id_addition =  @Par_id_addition,
	id_purchase_order =  @Par_id_purchase_order
WHERE id_order_addition = @Par_id_order_addition;
END;
GO

----order pizza delete, insert, update procedures xxxxxxxxxxxxINCOPLETExxxxxxxxxxxxxx

CREATE PROCEDURE dbo.order_pizza_delete
@Par_id_order_pizza int
AS
BEGIN
DELETE dbo.order_pizza
WHERE id_order_pizza = @Par_id_order_pizza;
END;
GO

CREATE PROCEDURE dbo.order_pizza_insert
@Par_id_order_pizza int,
@Par_quantity_pizza decimal(3,1),
@Par_price_order_pizza smallmoney,
@Par_id_size int,
@Par_id_pizza int,
@Par_id_purchase_order int
AS
BEGIN
INSERT dbo.order_pizza
(id_order_pizza, quantity_pizza, price_order_pizza, id_size, id_pizza, id_purchase_order)
VALUES
(@Par_id_order_pizza, @Par_quantity_pizza, @Par_price_order_pizza, @Par_id_size, @Par_id_pizza, @Par_id_purchase_order);
END;
GO

CREATE PROCEDURE dbo.order_pizza_update
@Par_id_order_pizza int,
@Par_quantity_pizza decimal(3,1),
@Par_price_order_pizza smallmoney,
@Par_id_size int,
@Par_id_pizza int,
@Par_id_purchase_order int
AS
BEGIN
UPDATE dbo.order_pizza
SET
	quantity_pizza = @Par_quantity_pizza,
	price_order_pizza =  @Par_price_order_pizza,
	id_size = @Par_id_size,
	id_pizza =  @Par_id_pizza,
	id_purchase_order = @Par_id_purchase_order
WHERE id_order_pizza = @Par_id_order_pizza;
END;
GO

----pizza delete, insert, update procedures xxxxxxxxxxxxINCOPLETExxxxxxxxxxxxxx

CREATE PROCEDURE dbo.pizza_delete
@Par_id_pizza int
AS
BEGIN
DELETE dbo.pizza
WHERE id_pizza = @Par_id_pizza;
END;
GO

CREATE PROCEDURE dbo.pizza_insert
@Par_id_pizza int,
@Par_name_pizza varchar(50),
@Par_price_pizza smallmoney,
@Par_descrition varchar(50)
AS

BEGIN
INSERT dbo.pizza
(id_pizza, name_pizza, price_pizza, descrition)
VALUES
(@Par_id_pizza, @Par_name_pizza, @Par_price_pizza, @Par_descrition);
END;
GO

CREATE PROCEDURE dbo.pizza_update
@Par_id_pizza int,
@Par_name_pizza varchar(50),
@Par_price_pizza smallmoney,
@Par_descrition varchar(50)
AS
BEGIN
UPDATE dbo.pizza
SET
	name_pizza = @Par_name_pizza,
	price_pizza = @Par_price_pizza,
	descrition = @Par_descrition
WHERE id_pizza = @Par_id_pizza;
END;
GO

----pizza ingredient delete, insert, update procedures xxxxxxxxxxxxINCOPLETExxxxxxxxxxxxxx

CREATE PROCEDURE dbo.pizza_ingredient_delete
@Par_id_pizza_ingredient int
AS
BEGIN
DELETE dbo.pizza_ingredient
WHERE id_pizza_ingredient = @Par_id_pizza_ingredient;
END;
GO

CREATE PROCEDURE dbo.pizza_ingredient_insert
@Par_id_pizza_ingredient int,
@Par_id_pizza int,
@Par_id_ingredient int
AS
BEGIN
INSERT dbo.pizza_ingredient
(id_pizza_ingredient, id_pizza, id_ingredient)
VALUES
(@Par_id_pizza_ingredient, @Par_id_pizza, @Par_id_ingredient);
END;
GO

CREATE PROCEDURE dbo.pizza_ingredient_update
@Par_id_pizza_ingredient int,
@Par_id_pizza int,
@Par_id_ingredient int
AS
BEGIN
UPDATE dbo.pizza_ingredient
SET
	id_pizza = @Par_id_pizza,
	id_ingredient = @Par_id_ingredient
WHERE id_pizza_ingredient = @Par_id_pizza_ingredient;
END;
GO

----purchase order delete, insert, update procedures xxxxxxxxxxxxINCOPLETExxxxxxxxxxxxxx

CREATE PROCEDURE dbo.purchase_order_delete
@Par_id_purchase_order int
AS
BEGIN
DELETE dbo.purchase_order
WHERE id_purchase_order = @Par_id_purchase_order;
END;
GO

CREATE PROCEDURE dbo.purchase_order_insert
@Par_id_purchase_order int,
@Par_id_order_type int,
@Par_id_deliverer int,
@Par_price_order money,
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
(id_purchase_order, id_order_type, id_deliverer, price_order, note, phone_client, id_order_status, town, street, residence, place)
VALUES
(@Par_id_purchase_order, @Par_id_order_type, @Par_id_deliverer, @Par_price_order, @Par_note, @Par_phone_client, @Par_id_order_status, @Par_town, @Par_street, @Par_residence, @Par_place);
END;
GO

CREATE PROCEDURE dbo.purchase_order_update
@Par_id_purchase_order int,
@Par_id_order_type int,
@Par_id_deliverer int,
@Par_price_order money,
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
	id_purchase_order = @Par_id_purchase_order,
	id_order_type = @Par_id_order_type,
	id_deliverer = @Par_id_deliverer,
	price_order = @Par_price_order,
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
