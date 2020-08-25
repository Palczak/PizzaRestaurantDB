--addition-------------------------------------------------------------------------------------
EXECUTE dbo.addition_insert
@Par_id_addition = 1,
@Par_id_addition_category = 1,
@Par_name_addition = "Garlic sauce",
@Par_price_addition = 3;
GO

EXECUTE dbo.addition_insert
@Par_id_addition = 2,
@Par_id_addition_category = 1,
@Par_name_addition = "Tomato sauce",
@Par_price_addition = 3;
GO

EXECUTE dbo.addition_insert
@Par_id_addition = 3,
@Par_id_addition_category = 1,
@Par_name_addition = "Spicy sauce",
@Par_price_addition = 3;
GO

EXECUTE dbo.addition_insert
@Par_id_addition = 4,
@Par_id_addition_category = 2,
@Par_name_addition = "Pepsi 1l",
@Par_price_addition = 5;
GO

EXECUTE dbo.addition_insert
@Par_id_addition = 5,
@Par_id_addition_category = 2,
@Par_name_addition = "Coca cola 1l",
@Par_price_addition = 5;
GO

EXECUTE dbo.addition_insert
@Par_id_addition = 6,
@Par_id_addition_category = 3,
@Par_name_addition = "Tyskie 0.5l",
@Par_price_addition = 5;
GO

EXECUTE dbo.addition_insert
@Par_id_addition = 7,
@Par_id_addition_category = 3,
@Par_name_addition = "Warka 0.5l",
@Par_price_addition = 5;
GO

EXECUTE dbo.addition_insert
@Par_id_addition = 8,
@Par_id_addition_category = 4,
@Par_name_addition = "Garlic bread 150g",
@Par_price_addition = 2;
GO

EXECUTE dbo.addition_insert
@Par_id_addition = 9,
@Par_id_addition_category = 4,
@Par_name_addition = "Cheese rols 250g",
@Par_price_addition = 5;
GO

EXECUTE dbo.addition_insert
@Par_id_addition = 10,
@Par_id_addition_category = 2,
@Par_name_addition = "Coffe 0.75l",
@Par_price_addition = 3;
GO

--deliverer----------------------------------------------------------------------------------

EXECUTE dbo.deliverer_insert
@Par_id_deliverer = 1,
@Par_name_deliverer = "Kamil",
@Par_second_name_deliverer = "Baranowski",
@Par_phone_deliverer = "881415832";
GO

EXECUTE dbo.deliverer_insert
@Par_id_deliverer = 2,
@Par_name_deliverer = "Wiktoria",
@Par_second_name_deliverer = "Marciniak",
@Par_phone_deliverer = "695813604";
GO

EXECUTE dbo.deliverer_insert
@Par_id_deliverer = 3,
@Par_name_deliverer = "Arkadiusz",
@Par_second_name_deliverer = "Kaczmarek",
@Par_phone_deliverer = "561846234";
GO

EXECUTE dbo.deliverer_insert
@Par_id_deliverer = 4,
@Par_name_deliverer = "Szymon",
@Par_second_name_deliverer = "Kot",
@Par_phone_deliverer = "423846248";
GO

EXECUTE dbo.deliverer_insert
@Par_id_deliverer = 5,
@Par_name_deliverer = "Micha³",
@Par_second_name_deliverer = "Majchrzak",
@Par_phone_deliverer = "931562186";
GO

EXECUTE dbo.deliverer_insert
@Par_id_deliverer = 6,
@Par_name_deliverer = "Maciej",
@Par_second_name_deliverer = "Kowalczyk",
@Par_phone_deliverer = "134549756";
GO

EXECUTE dbo.deliverer_insert
@Par_id_deliverer = 7,
@Par_name_deliverer = "Micha³",
@Par_second_name_deliverer = "Szymañski",
@Par_phone_deliverer = "459135489";
GO

EXECUTE dbo.deliverer_insert
@Par_id_deliverer = 8,
@Par_name_deliverer = "Natalia",
@Par_second_name_deliverer = "Kasprzak",
@Par_phone_deliverer = "154796485";
GO

EXECUTE dbo.deliverer_insert
@Par_id_deliverer = 9,
@Par_name_deliverer = "Nikodem",
@Par_second_name_deliverer = "Wiœniewski",
@Par_phone_deliverer = "781354698";
GO

EXECUTE dbo.deliverer_insert
@Par_id_deliverer = 10,
@Par_name_deliverer = "Jeremi",
@Par_second_name_deliverer = "Gajewski",
@Par_phone_deliverer = "781354698";
GO

--purchase order-------------------------------------------------------------------------------
EXECUTE dbo.purchase_order_insert
@Par_id_purchase_order = 1,
@Par_id_order_type = 1,
@Par_id_deliverer = 1,
@Par_price_order = 22,
@Par_note = NULL,
@Par_phone_client = "123546954",
@Par_id_order_status = 1,
@Par_town = "Kalisz",
@Par_street = "Poznañska",
@Par_residence = "110",
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_purchase_order = 2,
@Par_id_order_type = 1,
@Par_id_deliverer = 1,
@Par_price_order = 25,
@Par_note = NULL,
@Par_phone_client = "213546984",
@Par_id_order_status = 1,
@Par_town = "Ostrów Wielkopolski",
@Par_street = "Poznañska",
@Par_residence = "110",
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_purchase_order = 3,
@Par_id_order_type = 3,
@Par_id_deliverer = NULL,
@Par_price_order = 22,
@Par_note = NULL,
@Par_phone_client = NULL,
@Par_id_order_status = 1,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_purchase_order = 4,
@Par_id_order_type = 1,
@Par_id_deliverer = 5,
@Par_price_order = 22,
@Par_note = "Proszê o szybk¹ dostawê",
@Par_phone_client = "123546954",
@Par_id_order_status = 1,
@Par_town = "Kalisz",
@Par_street = "Ostrowska",
@Par_residence = "110",
@Par_place = "5"
GO

EXECUTE dbo.purchase_order_insert
@Par_id_purchase_order = 5,
@Par_id_order_type = 1,
@Par_id_deliverer = 1,
@Par_price_order = 22,
@Par_note = NULL,
@Par_phone_client = "546856954",
@Par_id_order_status = 1,
@Par_town = "Koœcielna wieœ",
@Par_street = "Poznañska",
@Par_residence = "10",
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_purchase_order = 6,
@Par_id_order_type = 2,
@Par_id_deliverer = NULL,
@Par_price_order = 55,
@Par_note = NULL,
@Par_phone_client = "777546954",
@Par_id_order_status = 5,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_purchase_order = 7,
@Par_id_order_type = 2,
@Par_id_deliverer = NULL,
@Par_price_order = 44,
@Par_note = NULL,
@Par_phone_client = "777531454",
@Par_id_order_status = 5,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_purchase_order = 8,
@Par_id_order_type = 2,
@Par_id_deliverer = NULL,
@Par_price_order = 87,
@Par_note = NULL,
@Par_phone_client = "777543544",
@Par_id_order_status = 4,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_purchase_order = 9,
@Par_id_order_type = 2,
@Par_id_deliverer = NULL,
@Par_price_order = 55,
@Par_note = NULL,
@Par_phone_client = "776546954",
@Par_id_order_status = 2,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL
GO

EXECUTE dbo.purchase_order_insert
@Par_id_purchase_order = 10,
@Par_id_order_type = 3,
@Par_id_deliverer = NULL,
@Par_price_order = 55,
@Par_note = NULL,
@Par_phone_client = NULL,
@Par_id_order_status = 5,
@Par_town = NULL,
@Par_street = NULL,
@Par_residence = NULL,
@Par_place = NULL
GO

-- ingredient -----------------------------------------------------------------------------------------
EXECUTE dbo.ingredient_insert
@Par_id_ingredient = 1,
@Par_name_ingredient = "Pizza base",
@Par_price_ingredient = 10;
GO

EXECUTE dbo.ingredient_insert
@Par_id_ingredient = 2,
@Par_name_ingredient = "Mozzarella",
@Par_price_ingredient = 2;
GO

EXECUTE dbo.ingredient_insert
@Par_id_ingredient = 3,
@Par_name_ingredient = "Tomato sauce",
@Par_price_ingredient = 2;
GO

EXECUTE dbo.ingredient_insert
@Par_id_ingredient = 4,
@Par_name_ingredient = "Salami",
@Par_price_ingredient = 4;
GO

EXECUTE dbo.ingredient_insert
@Par_id_ingredient = 5,
@Par_name_ingredient = "Black olives",
@Par_price_ingredient = 2;
GO

EXECUTE dbo.ingredient_insert
@Par_id_ingredient = 6,
@Par_name_ingredient = "Green olives",
@Par_price_ingredient = 2;
GO

EXECUTE dbo.ingredient_insert
@Par_id_ingredient = 7,
@Par_name_ingredient = "Bacon",
@Par_price_ingredient = 5;
GO

EXECUTE dbo.ingredient_insert
@Par_id_ingredient = 8,
@Par_name_ingredient = "Chicken",
@Par_price_ingredient = 5;
GO

EXECUTE dbo.ingredient_insert
@Par_id_ingredient = 9,
@Par_name_ingredient = "Onion",
@Par_price_ingredient = 2;
GO

EXECUTE dbo.ingredient_insert
@Par_id_ingredient = 10,
@Par_name_ingredient = "Pepper",
@Par_price_ingredient = 2;
GO

--pizza---------------------------------------------------------------------------------

EXECUTE dbo.pizza_insert
@Par_id_pizza = 1,
@Par_name_pizza = "Margarita",
@Par_price_pizza = 15,
@Par_descrition = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_id_pizza = 2,
@Par_name_pizza = "Salamiosa",
@Par_price_pizza = 19,
@Par_descrition = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_id_pizza = 3,
@Par_name_pizza = "Chickeno",
@Par_price_pizza = 19,
@Par_descrition = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_id_pizza = 4,
@Par_name_pizza = "Classic",
@Par_price_pizza = 21,
@Par_descrition = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_id_pizza = 5,
@Par_name_pizza = "Havai",
@Par_price_pizza = 19,
@Par_descrition = "Worst pizza ever";
GO

EXECUTE dbo.pizza_insert
@Par_id_pizza = 6,
@Par_name_pizza = "Kebab",
@Par_price_pizza = 23,
@Par_descrition = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_id_pizza = 7,
@Par_name_pizza = "BBQ",
@Par_price_pizza = 25,
@Par_descrition = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_id_pizza = 8,
@Par_name_pizza = "Vegetarian",
@Par_price_pizza = 17,
@Par_descrition = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_id_pizza = 9,
@Par_name_pizza = "Capricosa",
@Par_price_pizza = 20,
@Par_descrition = NULL;
GO

EXECUTE dbo.pizza_insert
@Par_id_pizza = 10,
@Par_name_pizza = "Meat only",
@Par_price_pizza = 27,
@Par_descrition = NULL;
GO

-- pizza-igredient-------------------------------------------------------------------------

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza_ingredient = 1,
@Par_id_pizza = 1,
@Par_id_ingredient = 1;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza_ingredient = 2,
@Par_id_pizza = 1,
@Par_id_ingredient = 2;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza_ingredient = 3,
@Par_id_pizza = 1,
@Par_id_ingredient = 3;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza_ingredient = 4,
@Par_id_pizza = 2,
@Par_id_ingredient = 1;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza_ingredient = 5,
@Par_id_pizza = 2,
@Par_id_ingredient = 2;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza_ingredient = 6,
@Par_id_pizza = 2,
@Par_id_ingredient = 3;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza_ingredient = 7,
@Par_id_pizza = 2,
@Par_id_ingredient = 4;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza_ingredient = 8,
@Par_id_pizza = 3,
@Par_id_ingredient = 1;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza_ingredient = 9,
@Par_id_pizza = 3,
@Par_id_ingredient = 2;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza_ingredient = 10,
@Par_id_pizza = 3,
@Par_id_ingredient = 3;
GO

EXECUTE dbo.pizza_ingredient_insert
@Par_id_pizza_ingredient = 11,
@Par_id_pizza = 3,
@Par_id_ingredient = 8;
GO

--order_addition -----------------------------------------------------------------------

EXECUTE dbo.order_addition_insert
@Par_id_order_addition = 1,
@Par_quantity_addition = 1,
@Par_id_addition = 1,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_id_order_addition = 2,
@Par_quantity_addition = 1,
@Par_id_addition = 2,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_id_order_addition = 3,
@Par_quantity_addition = 1,
@Par_id_addition = 3,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_id_order_addition = 4,
@Par_quantity_addition = 1,
@Par_id_addition = 4,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_id_order_addition = 5,
@Par_quantity_addition = 1,
@Par_id_addition = 5,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_id_order_addition = 6,
@Par_quantity_addition = 1,
@Par_id_addition = 6,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_id_order_addition = 7,
@Par_quantity_addition = 1,
@Par_id_addition = 7,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_id_order_addition = 8,
@Par_quantity_addition = 1,
@Par_id_addition = 8,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_id_order_addition = 9,
@Par_quantity_addition = 2,
@Par_id_addition = 9,
@Par_id_purchase_order = 1;
GO

EXECUTE dbo.order_addition_insert
@Par_id_order_addition = 10,
@Par_quantity_addition = 1,
@Par_id_addition = 10,
@Par_id_purchase_order = 1;
GO
--

