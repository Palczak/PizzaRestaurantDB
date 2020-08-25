CREATE PROCEDURE dbo.purchase_order_insert_delivery
@Par_note varchar(500) = NULL,
@Par_phone_client varchar(20),
@Par_town varchar(50) = NULL,
@Par_street varchar(50) = NULL,
@Par_residence varchar(10) = NULL,
@Par_place varchar(10) = NULL
AS
BEGIN

	INSERT dbo.purchase_order
		(id_order_type, id_deliverer, note, phone_client, id_order_status, town, street, residence, place)
	VALUES
		(1, NULL, @Par_note, @Par_phone_client, 1, @Par_town, @Par_street, @Par_residence, @Par_place);
END;
GO

CREATE PROCEDURE dbo.purchase_order_insert_takeaway
@Par_note varchar(500) = NULL,
@Par_phone_client varchar(20)
AS
BEGIN

	INSERT dbo.purchase_order
		(id_order_type, id_deliverer, note, phone_client, id_order_status, town, street, residence, place)
	VALUES
		(3, NULL, @Par_note, @Par_phone_client, 1, NULL, NULL, NULL, NULL);
END;
GO

CREATE PROCEDURE dbo.purchase_order_insert_restaurant
@Par_note varchar(500) = NULL
AS
BEGIN

	INSERT dbo.purchase_order
		(id_order_type, id_deliverer, note, phone_client, id_order_status, town, street, residence, place)
	VALUES
		(2, NULL, @Par_note, NULL, 1, NULL, NULL, NULL, NULL);
END;
GO