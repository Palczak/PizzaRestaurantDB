CREATE ROLE Boss;
CREATE ROLE Manager;
CREATE ROLE Dispacher;
CREATE ROLE Seller;
CREATE ROLE Deliverer;

GRANT SELECT ON dbo.addition TO Boss, Manager, Dispacher, Seller;
DENY SELECT ON dbo.addition TO Deliverer;
DENY INSERT, UPDATE, DELETE ON dbo.addition TO Boss, Manager, Dispacher, Seller, Deliverer;

GRANT SELECT ON dbo.addition_category TO Boss, Manager, Dispacher, Seller;
DENY SELECT ON dbo.addition_category TO Deliverer;
DENY INSERT, UPDATE, DELETE ON dbo.addition_category TO Boss, Manager, Dispacher, Seller, Deliverer;

GRANT SELECT ON dbo.deliverer TO Boss, Manager, Dispacher;
DENY SELECT ON dbo.deliverer TO Seller, Deliverer;
DENY INSERT, UPDATE, DELETE ON dbo.deliverer TO Boss, Manager, Dispacher, Seller, Deliverer;

GRANT SELECT ON dbo.ingredient TO Boss, Manager, Dispacher, Seller;
DENY SELECT ON dbo.ingredient TO Deliverer;
DENY INSERT, UPDATE, DELETE ON dbo.ingredient TO Boss, Manager, Dispacher, Seller, Deliverer;

GRANT SELECT ON dbo.order_addition TO Boss, Manager, Dispacher, Seller;
DENY SELECT ON dbo.order_addition TO Deliverer;
DENY INSERT, UPDATE, DELETE ON dbo.order_addition TO Boss, Manager, Dispacher, Seller, Deliverer;

GRANT SELECT ON dbo.order_pizza TO Boss, Manager, Dispacher, Seller;
DENY SELECT ON dbo.order_pizza TO Deliverer;
DENY INSERT, UPDATE, DELETE ON dbo.order_pizza TO Boss, Manager, Dispacher, Seller, Deliverer;

GRANT SELECT ON dbo.order_status TO Boss, Manager, Dispacher, Seller;
DENY SELECT ON dbo.order_status TO Deliverer;
DENY INSERT, UPDATE, DELETE ON dbo.order_status TO Boss, Manager, Dispacher, Seller, Deliverer;

GRANT SELECT ON dbo.order_type TO Boss, Manager, Dispacher, Seller;
DENY SELECT ON dbo.order_type TO Deliverer;
DENY INSERT, UPDATE, DELETE ON dbo.order_type TO Boss, Manager, Dispacher, Seller, Deliverer;

GRANT SELECT ON dbo.pizza TO Boss, Manager, Dispacher, Seller;
DENY SELECT ON dbo.pizza TO Deliverer;
DENY INSERT, UPDATE, DELETE ON dbo.pizza TO Boss, Manager, Dispacher, Seller, Deliverer;

GRANT SELECT ON dbo.pizza_ingredient TO Boss, Manager, Dispacher, Seller;
DENY SELECT ON dbo.pizza_ingredient TO Deliverer;
DENY INSERT, UPDATE, DELETE ON dbo.pizza_ingredient TO Boss, Manager, Dispacher, Seller, Deliverer;

GRANT SELECT ON dbo.pizza_size TO Boss, Manager, Dispacher, Seller;
DENY SELECT ON dbo.pizza_size TO Deliverer;
DENY INSERT, UPDATE, DELETE ON dbo.pizza_size TO Boss, Manager, Dispacher, Seller, Deliverer;

GRANT SELECT ON dbo.purchase_order TO Boss, Manager, Dispacher, Seller, Deliverer;
DENY INSERT, UPDATE, DELETE ON dbo.purchase_order TO Boss, Manager, Dispacher, Seller, Deliverer;

DENY INSERT, SELECT, UPDATE, DELETE ON dbo.web_user TO Boss, Manager, Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.addition_delete TO Boss;
DENY EXECUTE ON dbo.addition_delete TO Manager, Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.addition_insert TO Boss;
DENY EXECUTE ON dbo.addition_insert TO Manager, Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.addition_select_all_active TO Boss, Manager, Dispacher, Seller;
DENY EXECUTE ON dbo.addition_select_all_active TO Deliverer;

GRANT EXECUTE ON dbo.addition_update TO Boss;
DENY EXECUTE ON dbo.addition_update TO Manager, Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.deliverer_delete TO Boss;
DENY EXECUTE ON dbo.deliverer_delete TO Manager, Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.deliverer_insert TO Boss;
DENY EXECUTE ON dbo.deliverer_insert TO Manager, Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.deliverer_select_active TO Boss, Manager, Dispacher;
DENY EXECUTE ON dbo.deliverer_select_active TO Seller, Deliverer;

GRANT EXECUTE ON dbo.deliverer_select_daily_income TO Boss, Manager;
DENY EXECUTE ON dbo.deliverer_select_daily_income TO Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.deliverer_update TO Boss, Manager;
DENY EXECUTE ON dbo.deliverer_update TO Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.ingredient_delete TO Boss;
DENY EXECUTE ON dbo.ingredient_delete TO Manager, Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.ingredient_insert TO Boss;
DENY EXECUTE ON dbo.ingredient_insert TO Manager, Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.ingredient_update TO Boss;
DENY EXECUTE ON dbo.ingredient_update TO Manager, Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.order_addition_delete_permanent TO Boss, Manager;
DENY EXECUTE ON dbo.order_addition_delete_permanent TO Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.order_addition_insert TO Boss, Manager, Dispacher, Seller;
DENY EXECUTE ON dbo.order_addition_insert TO Deliverer;

GRANT EXECUTE ON dbo.order_addition_update TO Boss, Manager;
DENY EXECUTE ON dbo.order_addition_update TO Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.order_pizza_delete_permanent TO Boss, Manager;
DENY EXECUTE ON dbo.order_pizza_delete_permanent TO Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.order_pizza_insert TO Boss, Manager, Dispacher, Seller;
DENY EXECUTE ON dbo.order_pizza_insert TO Deliverer;

GRANT EXECUTE ON dbo.order_pizza_update TO Boss, Manager;
DENY EXECUTE ON dbo.order_pizza_update TO Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.pizza_delete TO Boss;
DENY EXECUTE ON dbo.pizza_delete TO Manager, Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.pizza_ingredient_delete_permanent TO Boss;
DENY EXECUTE ON dbo.pizza_ingredient_delete_permanent TO Manager, Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.pizza_ingredient_insert TO Boss;
DENY EXECUTE ON dbo.pizza_ingredient_insert TO Manager, Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.pizza_insert TO Boss;
DENY EXECUTE ON dbo.pizza_insert TO Manager, Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.pizza_select_all_active TO Boss, Manager, Dispacher, Seller;
DENY EXECUTE ON dbo.pizza_select_all_active TO Deliverer;

GRANT EXECUTE ON dbo.pizza_select_indiegrents TO Boss, Manager, Dispacher, Seller;
DENY EXECUTE ON dbo.pizza_select_indiegrents TO Deliverer;

GRANT EXECUTE ON dbo.pizza_select_indiegrents_name TO Boss, Manager, Dispacher, Seller;
DENY EXECUTE ON dbo.pizza_select_indiegrents_name TO Deliverer;

GRANT EXECUTE ON dbo.pizza_sum_income TO Boss, Manager;
DENY EXECUTE ON dbo.pizza_sum_income TO Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.pizza_update TO Boss;
DENY EXECUTE ON dbo.pizza_update TO Manager, Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.purchase_order_calculate TO Boss, Manager, Dispacher, Seller;
DENY EXECUTE ON dbo.purchase_order_calculate TO Deliverer;

GRANT EXECUTE ON dbo.purchase_order_delete_permanent TO Boss, Manager;
DENY EXECUTE ON dbo.purchase_order_delete_permanent TO Dispacher, Seller, Deliverer;

GRANT EXECUTE ON dbo.purchase_order_insert TO Boss, Manager, Dispacher, Seller;
DENY EXECUTE ON dbo.purchase_order_insert TO Deliverer;

GRANT EXECUTE ON dbo.purchase_order_insert_delivery TO Boss, Manager, Dispacher, Seller;
DENY EXECUTE ON dbo.purchase_order_insert_delivery TO Deliverer;

GRANT EXECUTE ON dbo.purchase_order_insert_restaurant TO Boss, Manager, Dispacher, Seller;
DENY EXECUTE ON dbo.purchase_order_insert_restaurant TO Deliverer;

GRANT EXECUTE ON dbo.purchase_order_insert_takeaway TO Boss, Manager, Dispacher, Seller;
DENY EXECUTE ON dbo.purchase_order_insert_takeaway TO Deliverer;
