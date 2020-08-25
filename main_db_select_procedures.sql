CREATE PROCEDURE dbo.select_all_active_pizza
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

CREATE PROCEDURE dbo.select_ingredients_id_name_from_pizza
@Par_id_pizza int
AS
BEGIN

	SELECT id_pizza_ingredient, name_ingredient
	FROM dbo.pizza_ingredient
	INNER JOIN dbo.ingredient ON dbo.pizza_ingredient.id_ingredient = dbo.ingredient.id_ingredient
	WHERE id_pizza = @Par_id_pizza;

END;
GO

CREATE PROCEDURE dbo.select_pizza_igredient_name_by_id
@Par_id_pizza int
AS
BEGIN
	SELECT name_ingredient FROM (dbo.pizza_ingredient
	INNER JOIN dbo.ingredient ON dbo.pizza_ingredient.id_ingredient = dbo.ingredient.id_ingredient)
	WHERE id_pizza = @Par_id_pizza;
END;
GO

CREATE PROCEDURE dbo.select_deliverer_daily_income
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