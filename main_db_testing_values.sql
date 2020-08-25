--addition-------------------------------------------------------------------------------------
EXECUTE dbo.addition_insert
@Par_id_addition_category = 1,
@Par_name_addition = "Garlic sauce",
@Par_price_addition = 3;
GO

EXECUTE dbo.addition_insert
@Par_id_addition_category = 1,
@Par_name_addition = "Tomato sauce",
@Par_price_addition = 3;
GO

EXECUTE dbo.addition_insert
@Par_id_addition_category = 1,
@Par_name_addition = "Spicy sauce",
@Par_price_addition = 3;
GO

EXECUTE dbo.addition_insert
@Par_id_addition_category = 2,
@Par_name_addition = "Pepsi 1l",
@Par_price_addition = 5;
GO

EXECUTE dbo.addition_insert
@Par_id_addition_category = 2,
@Par_name_addition = "Coca cola 1l",
@Par_price_addition = 5;
GO

EXECUTE dbo.addition_insert
@Par_id_addition_category = 3,
@Par_name_addition = "Tyskie 0.5l",
@Par_price_addition = 5;
GO

EXECUTE dbo.addition_insert
@Par_id_addition_category = 3,
@Par_name_addition = "Warka 0.5l",
@Par_price_addition = 5;
GO

EXECUTE dbo.addition_insert
@Par_id_addition_category = 4,
@Par_name_addition = "Garlic bread 150g",
@Par_price_addition = 2;
GO

EXECUTE dbo.addition_insert
@Par_id_addition_category = 4,
@Par_name_addition = "Cheese rols 250g",
@Par_price_addition = 5;
GO

EXECUTE dbo.addition_insert
@Par_id_addition_category = 2,
@Par_name_addition = "Coffe 0.75l",
@Par_price_addition = 3;
GO

EXECUTE dbo.addition_insert
@Par_id_addition_category = 2,
@Par_name_addition = "Delete test",
@Par_price_addition = 3;
GO

EXECUTE dbo.addition_insert
@Par_id_addition_category = 2,
@Par_name_addition = "Update test pending",
@Par_price_addition = 3;
GO

EXECUTE dbo.addition_delete
@Par_id_addition = 11;
GO

EXECUTE dbo.addition_update
@Par_id_addition = 12,
@Par_id_addition_category = 2,
@Par_name_addition = "Update test success",
@Par_price_addition = 1;
GO

--deliverer----------------------------------------------------------------------------------

EXECUTE dbo.deliverer_insert
@Par_name_deliverer = "Kamil",
@Par_second_name_deliverer = "Baranowski",
@Par_phone_deliverer = "881415832";
GO

EXECUTE dbo.deliverer_insert
@Par_name_deliverer = "Wiktoria",
@Par_second_name_deliverer = "Marciniak",
@Par_phone_deliverer = "695813604";
GO

EXECUTE dbo.deliverer_insert
@Par_name_deliverer = "Arkadiusz",
@Par_second_name_deliverer = "Kaczmarek",
@Par_phone_deliverer = "561846234";
GO

EXECUTE dbo.deliverer_insert
@Par_name_deliverer = "Szymon",
@Par_second_name_deliverer = "Kot",
@Par_phone_deliverer = "423846248";
GO

EXECUTE dbo.deliverer_insert
@Par_name_deliverer = "Micha³",
@Par_second_name_deliverer = "Majchrzak",
@Par_phone_deliverer = "931562186";
GO

EXECUTE dbo.deliverer_insert
@Par_name_deliverer = "Maciej",
@Par_second_name_deliverer = "Kowalczyk",
@Par_phone_deliverer = "134549756";
GO

EXECUTE dbo.deliverer_insert
@Par_name_deliverer = "Micha³",
@Par_second_name_deliverer = "Szymañski",
@Par_phone_deliverer = "459135489";
GO

EXECUTE dbo.deliverer_insert
@Par_name_deliverer = "Natalia",
@Par_second_name_deliverer = "Kasprzak",
@Par_phone_deliverer = "154796485";
GO

EXECUTE dbo.deliverer_insert
@Par_name_deliverer = "Nikodem",
@Par_second_name_deliverer = "Wiœniewski",
@Par_phone_deliverer = "781354698";
GO

EXECUTE dbo.deliverer_insert
@Par_name_deliverer = "Jeremi",
@Par_second_name_deliverer = "Gajewski",
@Par_phone_deliverer = "781354698";
GO

EXECUTE dbo.deliverer_insert
@Par_name_deliverer = "Delete",
@Par_second_name_deliverer = "test",
@Par_phone_deliverer = "111111111";
GO

EXECUTE dbo.deliverer_insert
@Par_name_deliverer = "Update_test",
@Par_second_name_deliverer = "Pending",
@Par_phone_deliverer = "222222222";
GO

EXECUTE dbo.deliverer_delete
@Par_id_deliverer = 11;
GO

EXECUTE dbo.deliverer_update
@Par_id_deliverer = 12,
@Par_name_deliverer = "Update_test",
@Par_second_name_deliverer = "Success",
@Par_phone_deliverer = "111111111";
GO

--purchase order-------------------------------------------------------------------------------
EXECUTE dbo.purchase_order_insert
@Par_id_order_type = 1,
@Par_id_deliverer = 1,
@Par_note = NULL,
@Par_phone_client = "123546954",
@Par_id_order_status = 1,
@Par_town = "Kalisz",
@Par_street = "Poznañska",
@Par_residence = "110",
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_order_type = 1,
@Par_id_deliverer = 1,
@Par_note = NULL,
@Par_phone_client = "213546984",
@Par_id_order_status = 1,
@Par_town = "Ostrów Wielkopolski",
@Par_street = "Poznañska",
@Par_residence = "110",
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_order_type = 3,
@Par_id_deliverer = NULL,
@Par_note = NULL,
@Par_phone_client = NULL,
@Par_id_order_status = 1,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_order_type = 1,
@Par_id_deliverer = 5,
@Par_note = "Proszê o szybk¹ dostawê",
@Par_phone_client = "123546954",
@Par_id_order_status = 1,
@Par_town = "Kalisz",
@Par_street = "Ostrowska",
@Par_residence = "110",
@Par_place = "5"
GO

EXECUTE dbo.purchase_order_insert
@Par_id_order_type = 1,
@Par_id_deliverer = 1,
@Par_note = NULL,
@Par_phone_client = "546856954",
@Par_id_order_status = 1,
@Par_town = "Koœcielna wieœ",
@Par_street = "Poznañska",
@Par_residence = "10",
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_order_type = 2,
@Par_id_deliverer = NULL,
@Par_note = NULL,
@Par_phone_client = "777546954",
@Par_id_order_status = 5,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_order_type = 2,
@Par_id_deliverer = NULL,
@Par_note = NULL,
@Par_phone_client = "777531454",
@Par_id_order_status = 5,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_order_type = 2,
@Par_id_deliverer = NULL,
@Par_note = NULL,
@Par_phone_client = "777543544",
@Par_id_order_status = 4,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_order_type = 2,
@Par_id_deliverer = NULL,
@Par_note = NULL,
@Par_phone_client = "776546954",
@Par_id_order_status = 2,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_order_type = 3,
@Par_id_deliverer = NULL,
@Par_note = NULL,
@Par_phone_client = NULL,
@Par_id_order_status = 5,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_order_type = 3,
@Par_id_deliverer = NULL,
@Par_note = "Delete test",
@Par_phone_client = NULL,
@Par_id_order_status = 5,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_order_type = 3,
@Par_id_deliverer = NULL,
@Par_note = "Update test pending",
@Par_phone_client = NULL,
@Par_id_order_status = 5,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_delete_permanent
@Par_id_purchase_order = 11;
GO

EXECUTE dbo.purchase_order_update
@Par_id_purchase_order = 12,
@Par_id_order_type = 1,
@Par_id_deliverer = 1,
@Par_note = "Update test success",
@Par_phone_client = NULL,
@Par_id_order_status = 1,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL;
GO

-- ingredient -----------------------------------------------------------------------------------------
EXECUTE dbo.ingredient_insert
@Par_name_ingredient = "Pizza base",
@Par_price_ingredient = 10;
GO

EXECUTE dbo.ingredient_insert
@Par_name_ingredient = "Mozzarella",
@Par_price_ingredient = 2;
GO

EXECUTE dbo.ingredient_insert
@Par_name_ingredient = "Tomato sauce",
@Par_price_ingredient = 2;
GO

EXECUTE dbo.ingredient_insert
@Par_name_ingredient = "Salami",
@Par_price_ingredient = 4;
GO

EXECUTE dbo.ingredient_insert
@Par_name_ingredient = "Black olives",
@Par_price_ingredient = 2;
GO

EXECUTE dbo.ingredient_insert
@Par_name_ingredient = "Green olives",
@Par_price_ingredient = 2;
GO

EXECUTE dbo.ingredient_insert
@Par_name_ingredient = "Bacon",
@Par_price_ingredient = 5;
GO

EXECUTE dbo.ingredient_insert
@Par_name_ingredient = "Chicken",
@Par_price_ingredient = 5;
GO

EXECUTE dbo.ingredient_insert
@Par_name_ingredient = "Onion",
@Par_price_ingredient = 2;
GO

EXECUTE dbo.ingredient_insert
@Par_name_ingredient = "Pepper",
@Par_price_ingredient = 2;
GO

EXECUTE dbo.ingredient_insert
@Par_name_ingredient = "Delete_test",
@Par_price_ingredient = 2;
GO

EXECUTE dbo.ingredient_insert
@Par_name_ingredient = "Update_test_pending",
@Par_price_ingredient = 2;
GO

EXECUTE dbo.ingredient_delete
@Par_id_ingredient = 11;
GO

EXECUTE dbo.ingredient_update
@Par_id_ingredient = 12,
@Par_name_ingredient = "Update_test_success",
@Par_price_ingredient = 2;
GO

--pizza---------------------------------------------------------------------------------

EXECUTE dbo.pizza_insert
@Par_name_pizza = "Margarita",
@Par_description_pizza = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_name_pizza = "Salamiosa",
@Par_description_pizza = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_name_pizza = "Chickeno",
@Par_description_pizza = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_name_pizza = "Classic",
@Par_description_pizza = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_name_pizza = "Paprica",
@Par_description_pizza = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_name_pizza = "Kebab",
@Par_description_pizza = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_name_pizza = "BBQ",
@Par_description_pizza = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_name_pizza = "Vegetarian",
@Par_description_pizza = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_name_pizza = "Beconosa",
@Par_description_pizza = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_name_pizza = "Meat only",
@Par_description_pizza = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_name_pizza = "Test_update_pending",
@Par_description_pizza = NULL;
GO

EXECUTE dbo.pizza_update
@Par_id_pizza = 11,
@Par_name_pizza = "Test_update_success",
@Par_description_pizza = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_name_pizza = "Test_delete",
@Par_description_pizza = NULL;
GO

EXECUTE dbo.pizza_delete
@Par_id_pizza = 12;
GO

--test with incorrect value-------------------------------------------
EXECUTE dbo.pizza_delete
@Par_id_pizza = 99;
GO

-- pizza-igredient-------------------------------------------------------------------------

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 2,
@Par_id_ingredient = 4;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 3,
@Par_id_ingredient = 8;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 4,
@Par_id_ingredient = 4;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 4,
@Par_id_ingredient = 5;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 4,
@Par_id_ingredient = 10;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 5,
@Par_id_ingredient = 10;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 6,
@Par_id_ingredient = 8;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 6,
@Par_id_ingredient = 9;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 7,
@Par_id_ingredient = 8;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 7,
@Par_id_ingredient = 9;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 7,
@Par_id_ingredient = 10;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 8,
@Par_id_ingredient = 5;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 8,
@Par_id_ingredient = 6;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 8,
@Par_id_ingredient = 9;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 8,
@Par_id_ingredient = 10;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 9,
@Par_id_ingredient = 6;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 10,
@Par_id_ingredient = 4;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 10,
@Par_id_ingredient = 6;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 10,
@Par_id_ingredient = 7;
GO


--test with incorect values--------------
EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza = 99,
@Par_id_ingredient = 99;
GO

--order_addition -----------------------------------------------------------------------

EXECUTE dbo.order_addition_insert
@Par_quantity_addition = 2,
@Par_id_addition = 1,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_quantity_addition = 1,
@Par_id_addition = 2,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_quantity_addition = 7,
@Par_id_addition = 3,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_quantity_addition = 8,
@Par_id_addition = 4,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_quantity_addition = 2,
@Par_id_addition = 5,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_quantity_addition = 1,
@Par_id_addition = 6,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_quantity_addition = 3,
@Par_id_addition = 7,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_quantity_addition = 5,
@Par_id_addition = 8,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_quantity_addition = 2,
@Par_id_addition = 9,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_quantity_addition = 1,
@Par_id_addition = 10,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_quantity_addition = 99,
@Par_id_addition = 10,
@Par_id_purchase_order = 10;
GO

EXECUTE dbo.order_addition_insert
@Par_quantity_addition = 99,
@Par_id_addition = 10,
@Par_id_purchase_order = 10;
GO

EXECUTE dbo.order_addition_delete_permanent
@Par_id_order_addition = 11;
GO

EXECUTE dbo.order_addition_update
@Par_id_order_addition = 12,
@Par_quantity_addition = 98,
@Par_id_addition = 10,
@Par_id_purchase_order = 10;
GO


--order_pizza-------------------------------------------------------------------------  

EXECUTE dbo.order_pizza_insert
@Par_quantity_pizza = 2,
@Par_id_pizza_size = 1,
@Par_id_pizza = 3,
@Par_id_pizza_second_half = 5,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_pizza_insert
@Par_quantity_pizza = 1,
@Par_id_pizza_size = 2,
@Par_id_pizza = 2,
@Par_id_pizza_second_half = NULL,
@Par_id_purchase_order = 2;
GO

EXECUTE dbo.order_pizza_insert
@Par_quantity_pizza = 2,
@Par_id_pizza_size = 1,
@Par_id_pizza = 5,
@Par_id_pizza_second_half = NULL,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_pizza_insert
@Par_quantity_pizza = 2,
@Par_id_pizza_size = 1,
@Par_id_pizza = 4,
@Par_id_pizza_second_half = NULL,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_pizza_insert
@Par_quantity_pizza = 5,
@Par_id_pizza_size = 2,
@Par_id_pizza = 8,
@Par_id_pizza_second_half = NULL,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_pizza_insert
@Par_quantity_pizza = 2,
@Par_id_pizza_size = 3,
@Par_id_pizza = 4,
@Par_id_pizza_second_half = 2,
@Par_id_purchase_order = 3;
GO

EXECUTE dbo.order_pizza_insert
@Par_quantity_pizza = 2,
@Par_id_pizza_size = 2,
@Par_id_pizza = 6,
@Par_id_pizza_second_half = NULL,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_pizza_insert
@Par_quantity_pizza = 9,
@Par_id_pizza_size = 1,
@Par_id_pizza = 4,
@Par_id_pizza_second_half = 5,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_pizza_insert
@Par_quantity_pizza = 1,
@Par_id_pizza_size = 1,
@Par_id_pizza = 2,
@Par_id_pizza_second_half = 3,
@Par_id_purchase_order = 5;
GO

EXECUTE dbo.order_pizza_insert
@Par_quantity_pizza = 99,
@Par_id_pizza_size = 1,
@Par_id_pizza = 2,
@Par_id_pizza_second_half = 3,
@Par_id_purchase_order = 10;
GO

EXECUTE dbo.order_pizza_insert
@Par_quantity_pizza = 99,
@Par_id_pizza_size = 1,
@Par_id_pizza = 2,
@Par_id_pizza_second_half = 3,
@Par_id_purchase_order = 10;
GO

EXECUTE dbo.order_pizza_delete_permanent
@Par_id_order_pizza = 11;
GO

EXECUTE dbo.order_pizza_update
@Par_id_order_pizza = 12,
@Par_quantity_pizza = 98,
@Par_id_pizza_size = 1,
@Par_id_pizza = 2,
@Par_id_pizza_second_half = 3,
@Par_id_purchase_order = 10;
GO

EXECUTE dbo.purchase_order_calculate
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.purchase_order_calculate
@Par_id_purchase_order = 2;
GO

EXECUTE dbo.purchase_order_calculate
@Par_id_purchase_order = 3;
GO

EXECUTE dbo.purchase_order_calculate
@Par_id_purchase_order = 4;
GO

EXECUTE dbo.purchase_order_calculate
@Par_id_purchase_order = 5;
GO

EXECUTE dbo.purchase_order_calculate
@Par_id_purchase_order = 6;
GO

EXECUTE dbo.purchase_order_calculate
@Par_id_purchase_order = 7;
GO

EXECUTE dbo.purchase_order_calculate
@Par_id_purchase_order = 8;
GO

EXECUTE dbo.purchase_order_calculate
@Par_id_purchase_order = 9;
GO

EXECUTE dbo.purchase_order_calculate
@Par_id_purchase_order = 10;
GO



