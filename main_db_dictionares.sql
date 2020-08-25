----addition category delete, insert, update procedures and values

CREATE PROCEDURE dbo.addition_category_delete
@Par_id_addition_category int
AS
BEGIN
DELETE dbo.addition_category
WHERE id_addition_category = @Par_id_addition_category;
END;
GO

CREATE PROCEDURE dbo.addition_category_insert
@Par_id_addition_category int,
@Par_name_addition_category varchar(50)
AS
BEGIN
INSERT dbo.addition_category
(id_addition_category, name_addition_category)
VALUES
(@Par_id_addition_category, @Par_name_addition_category);
END;
GO

CREATE PROCEDURE dbo.addition_category_update
@Par_id_addition_category int,
@Par_name_addition_category varchar(50)
AS
BEGIN
UPDATE dbo.addition_category
SET
	name_addition_category = @Par_name_addition_category
WHERE id_addition_category = @Par_id_addition_category;
END;
GO

EXECUTE dbo.addition_category_insert
@Par_id_addition_category = 1,
@Par_name_addition_category = "Sauce";
GO

EXECUTE dbo.addition_category_insert
@Par_id_addition_category = 2,
@Par_name_addition_category = "Drink";
GO

EXECUTE dbo.addition_category_insert
@Par_id_addition_category = 3,
@Par_name_addition_category = "Alcohol";
GO

EXECUTE dbo.addition_category_insert
@Par_id_addition_category = 4,
@Par_name_addition_category = "Side dish";
GO

----pizza size, insert, update procedures and values

CREATE PROCEDURE dbo.pizza_size_delete
@Par_id_pizza_size int
AS
BEGIN
DELETE dbo.pizza_size
WHERE id_pizza_size = @Par_id_pizza_size;
END;
GO

CREATE PROCEDURE dbo.pizza_size_insert
@Par_id_pizza_size int,
@Par_name_pizza_size varchar(50),
@Par_multiplier decimal(3,2)
AS
BEGIN
INSERT dbo.pizza_size
(id_pizza_size, name_pizza_size, multiplier)
VALUES
(@Par_id_pizza_size, @Par_name_pizza_size, @Par_multiplier);
END;
GO

CREATE PROCEDURE dbo.pizza_size_update
@Par_id_pizza_size int,
@Par_name_pizza_size varchar(50),
@Par_multiplier decimal(3,2)
AS
BEGIN
UPDATE dbo.pizza_size
SET
	name_pizza_size = @Par_name_pizza_size,
	multiplier = @Par_multiplier
WHERE id_pizza_size = @Par_id_pizza_size;
END;
GO

EXECUTE dbo.pizza_size_insert
@Par_id_pizza_size = 1,
@Par_name_pizza_size = "Small",
@Par_multiplier = 1;
GO

EXECUTE dbo.pizza_size_insert
@Par_id_pizza_size = 2,
@Par_name_pizza_size = "Medium",
@Par_multiplier = 1.5;
GO

EXECUTE dbo.pizza_size_insert
@Par_id_pizza_size = 3,
@Par_name_pizza_size = "Large",
@Par_multiplier = 3;
GO

----order status delete, insert, update procedures and values

CREATE PROCEDURE dbo.order_status_delete
@Par_id_order_status int
AS
BEGIN
DELETE dbo.order_status
WHERE id_order_status = @Par_id_order_status;
END;
GO

CREATE PROCEDURE dbo.order_status_insert
@Par_id_order_status int,
@Par_name_order_status varchar(50)
AS
BEGIN
INSERT dbo.order_status
(id_order_status, name_order_status)
VALUES
(@Par_id_order_status, @Par_name_order_status);
END;
GO

CREATE PROCEDURE dbo.order_status_update
@Par_id_order_status int,
@Par_name_order_status varchar(50)
AS
BEGIN
UPDATE dbo.order_status
SET
	name_order_status = @Par_name_order_status
WHERE id_order_status = @Par_id_order_status;
END;
GO

EXECUTE dbo.order_status_insert
@Par_id_order_status = 1,
@Par_name_order_status = "Pending";
GO

EXECUTE dbo.order_status_insert
@Par_id_order_status = 2,
@Par_name_order_status = "In queue";
GO

EXECUTE dbo.order_status_insert
@Par_id_order_status = 3,
@Par_name_order_status = "In delivery";
GO

EXECUTE dbo.order_status_insert
@Par_id_order_status = 4,
@Par_name_order_status = "Completed";
GO

EXECUTE dbo.order_status_insert
@Par_id_order_status = 5,
@Par_name_order_status = "Canceled";
GO

----order type, insert, update procedures and values

CREATE PROCEDURE dbo.order_type_delete
@Par_id_order_type int
AS
BEGIN
DELETE dbo.order_type
WHERE id_order_type = @Par_id_order_type;
END;
GO

CREATE PROCEDURE dbo.order_type_insert
@Par_id_order_type int,
@Par_name_order_type varchar(50)
AS
BEGIN
INSERT dbo.order_type
(id_order_type, name_order_type)
VALUES
(@Par_id_order_type, @Par_name_order_type);
END;
GO

CREATE PROCEDURE dbo.order_type_update
@Par_id_order_type int,
@Par_name_order_type varchar(50)
AS
BEGIN
UPDATE dbo.order_type
SET
	name_order_type = @Par_name_order_type
WHERE id_order_type = @Par_id_order_type;
END;
GO

EXECUTE dbo.order_type_insert
@Par_id_order_type = 1,
@Par_name_order_type = "Delivery";
GO

EXECUTE dbo.order_type_insert
@Par_id_order_type = 2,
@Par_name_order_type = "In restaurant";
GO

EXECUTE dbo.order_type_insert
@Par_id_order_type = 3,
@Par_name_order_type = "Takeaway";
GO

