CREATE PROCEDURE dbo.pizza_select_all_active
AS
BEGIN
	DECLARE @Var_multiplier_medium decimal(3,2);
	DECLARE @Var_multiplier_large decimal(3,2);
	SET @Var_multiplier_medium = (SELECT multiplier FROM dbo.pizza_size WHERE id_pizza_size = 2);
	SET @Var_multiplier_large = (SELECT multiplier FROM dbo.pizza_size WHERE id_pizza_size = 3);

	SELECT name_pizza AS [Pizza name], CONVERT(DECIMAL(10,2), price_pizza) AS [Small], CONVERT(DECIMAL(10,2), price_pizza * @Var_multiplier_medium) AS [Medmium], CONVERT(DECIMAL(10,2), price_pizza * @Var_multiplier_large)  AS [Large], description_pizza AS [Drscription]
	FROM dbo.pizza
	WHERE (active_pizza = 1)
	ORDER BY price_pizza;
END;
GO

CREATE PROCEDURE dbo.pizza_select_indiegrents
@Par_id_pizza int
AS
BEGIN

	SELECT id_pizza_ingredient, name_ingredient
	FROM dbo.pizza_ingredient
	INNER JOIN dbo.ingredient ON dbo.pizza_ingredient.id_ingredient = dbo.ingredient.id_ingredient
	WHERE id_pizza = @Par_id_pizza;

END;
GO

CREATE PROCEDURE dbo.pizza_select_indiegrents_name
@Par_id_pizza int
AS
BEGIN
	SELECT name_ingredient FROM (dbo.pizza_ingredient
	INNER JOIN dbo.ingredient ON dbo.pizza_ingredient.id_ingredient = dbo.ingredient.id_ingredient)
	WHERE id_pizza = @Par_id_pizza;
END;
GO

CREATE PROCEDURE dbo.deliverer_select_daily_income
@Par_id_deliverer int,
@Par_date date
AS
BEGIN

	IF(@Par_date IS NULL)
		SET @Par_date = GETDATE();
	
	IF(@Par_id_deliverer IS NOT NULL)
	BEGIN
		SELECT name_deliverer, second_name_deliverer, SUM(price_purchase_order) AS [daily_income]
		FROM dbo.deliverer
		LEFT JOIN dbo.purchase_order ON dbo.deliverer.id_deliverer = dbo.purchase_order.id_deliverer
		WHERE dbo.deliverer.id_deliverer = @Par_id_deliverer AND CONVERT(date, date_purchase_order) = @Par_date
		GROUP BY name_deliverer, second_name_deliverer;
	END
	ELSE
	BEGIN
		SELECT name_deliverer, second_name_deliverer, SUM(price_purchase_order) AS [daily_income]
		FROM dbo.deliverer
		LEFT JOIN dbo.purchase_order ON dbo.deliverer.id_deliverer = dbo.purchase_order.id_deliverer
		WHERE CONVERT(date, date_purchase_order) = @Par_date
		GROUP BY name_deliverer, second_name_deliverer;
	END

END;
GO

CREATE PROCEDURE dbo.deliverer_select_active
@Par_id_deliverer int
AS
BEGIN

	IF(@Par_id_deliverer IS NOT NULL)
	BEGIN
		SELECT name_deliverer, second_name_deliverer, phone_deliverer
		FROM dbo.deliverer
		WHERE dbo.deliverer.id_deliverer = @Par_id_deliverer AND active_deliverer = 1
	END
	ELSE
	BEGIN
		SELECT name_deliverer, second_name_deliverer, phone_deliverer
		FROM dbo.deliverer
		WHERE active_deliverer = 1
	END

END;
GO

CREATE PROCEDURE dbo.addition_select_all_active
AS
BEGIN
	DECLARE @Var_multiplier_medium decimal(3,2);
	DECLARE @Var_multiplier_large decimal(3,2);
	SET @Var_multiplier_medium = (SELECT multiplier FROM dbo.pizza_size WHERE id_pizza_size = 2);
	SET @Var_multiplier_large = (SELECT multiplier FROM dbo.pizza_size WHERE id_pizza_size = 3);

	SELECT id_addition, name_addition_category, name_addition, price_addition
	FROM dbo.addition
	INNER JOIN dbo.addition_category ON dbo.addition.id_addition_category = dbo.addition_category.id_addition_category
	WHERE (active_addition = 1);
END;

CREATE PROCEDURE dbo.pizza_sum_income
@Par_minimum_income smallmoney = 0
AS
BEGIN

	SELECT name_pizza, SUM(price_order_pizza) AS [income_pizza]
	FROM dbo.pizza
	INNER JOIN dbo.order_pizza
	ON dbo.order_pizza.id_pizza = dbo.pizza.id_pizza
	GROUP BY name_pizza
	HAVING SUM(price_order_pizza) >= @Par_minimum_income;

END;