--B34_P2

--tables

CREATE TABLE dbo.addition
(
	id_addition int NOT NULL,
	id_addition_category int NOT NULL,
	name_addition varchar(50) NOT NULL,
	price_addition smallmoney NOT NULL,
);
GO

CREATE TABLE dbo.addition_category
(
	id_addition_category int NOT NULL,
	name_addition_category varchar(50) NOT NULL,
);
GO

CREATE TABLE dbo.deliverer
(
	id_deliverer int NOT NULL,
	name_deliverer varchar(50) NOT NULL,
	second_name_deliverer varchar(50) NOT NULL,
	phone_deliverer varchar(20) NOT NULL,
);
GO

CREATE TABLE dbo.ingredient
(
	id_ingredient int NOT NULL,
	name_ingredient varchar(50) NOT NULL,
	price_ingredient smallmoney NOT NULL,
);
GO

CREATE TABLE dbo.order_addition
(
	id_order_addition int NOT NULL,
	quantity_addition int NOT NULL,
	price_order_addition smallmoney NOT NULL,
	id_addition int NOT NULL,
	id_purchase_order int NOT NULL,
);
GO

CREATE TABLE dbo.order_pizza
(
	id_order_pizza int NOT NULL,
	quantity_pizza decimal(3,1) NOT NULL,
	price_order_pizza smallmoney NOT NULL,
	id_size int NOT NULL,
	id_pizza int NOT NULL,
	id_purchase_order int NOT NULL,
);
GO

CREATE TABLE dbo.order_status
(
	id_order_status int NOT NULL,
	name_order_status varchar(50) NOT NULL,
);
GO

CREATE TABLE dbo.order_type
(
	id_order_type int NOT NULL,
	name_order_type varchar(50) NOT NULL,
);
GO

CREATE TABLE dbo.pizza
(
	id_pizza int NOT NULL,
	name_pizza varchar(50) NOT NULL,
	price_pizza smallmoney NOT NULL,
	descrition varchar(50) NULL,
);
GO

CREATE TABLE dbo.pizza_ingredient
(
	id_pizza_ingredient int NOT NULL,
	id_pizza int NOT NULL,
	id_ingredient int NOT NULL,
);
GO

CREATE TABLE dbo.pizza_size
(
	id_pizza_size int NOT NULL,
	name_pizza_size varchar(50) NOT NULL,
	multiplier decimal(3,2) NOT NULL,
);
GO

CREATE TABLE dbo.purchase_order
(
	id_purchase_order int NOT NULL,
	id_order_type int NOT NULL,
	id_deliverer int NULL,
	price_order smallmoney NOT NULL,
	note varchar(500) NULL,
	phone_client varchar(20) NULL,
	id_order_status int NOT NULL,
	date_purchase_order date NOT NULL,
	town varchar(50) NULL,
	street varchar(50) NULL,
	residence varchar(10) NULL,
	place varchar(10) NULL,
);
GO

--primary keys

ALTER TABLE dbo.addition
ADD CONSTRAINT PK_addition
PRIMARY KEY (id_addition);
GO

ALTER TABLE dbo.addition_category
ADD CONSTRAINT PK_addition_category
PRIMARY KEY (id_addition_category);
GO

ALTER TABLE dbo.deliverer
ADD CONSTRAINT PK_deliverer
PRIMARY KEY (id_deliverer);
GO

ALTER TABLE dbo.ingredient
ADD CONSTRAINT PK_ingredient
PRIMARY KEY (id_ingredient);
GO

ALTER TABLE dbo.order_addition
ADD CONSTRAINT PK_order_addition
PRIMARY KEY (id_order_addition);
GO

ALTER TABLE dbo.order_pizza
ADD CONSTRAINT PK_order_pizza
PRIMARY KEY (id_order_pizza);
GO

ALTER TABLE dbo.order_status
ADD CONSTRAINT PK_order_status
PRIMARY KEY (id_order_status);
GO

ALTER TABLE dbo.order_type
ADD CONSTRAINT PK_order_type
PRIMARY KEY (id_order_type);
GO

ALTER TABLE dbo.pizza
ADD CONSTRAINT PK_pizza
PRIMARY KEY (id_pizza);
GO

ALTER TABLE dbo.pizza_ingredient
ADD CONSTRAINT PK_pizza_ingredient
PRIMARY KEY (id_pizza_ingredient);
GO

ALTER TABLE dbo.pizza_size
ADD CONSTRAINT PK_pizza_size
PRIMARY KEY (id_pizza_size);
GO

ALTER TABLE dbo.purchase_order
ADD CONSTRAINT PK_purchase_order
PRIMARY KEY (id_purchase_order);
GO

--foreign keys

ALTER TABLE dbo.addition
ADD CONSTRAINT FK_addition_addition_category
FOREIGN KEY (id_addition_category)
REFERENCES dbo.addition_category(id_addition_category);
GO

ALTER TABLE dbo.order_addition
ADD CONSTRAINT FK_order_addition_addition
FOREIGN KEY (id_addition)
REFERENCES dbo.addition(id_addition);
GO

ALTER TABLE dbo.order_addition
ADD CONSTRAINT FK_order_addition_purchase_order
FOREIGN KEY (id_purchase_order)
REFERENCES dbo.purchase_order(id_purchase_order);
GO

ALTER TABLE dbo.order_pizza
ADD CONSTRAINT FK_order_pizza_pizza
FOREIGN KEY (id_pizza)
REFERENCES dbo.pizza(id_pizza);
GO

ALTER TABLE dbo.order_pizza
ADD CONSTRAINT FK_order_pizza_size
FOREIGN KEY (id_size)
REFERENCES dbo.pizza_size(id_pizza_size);
GO

ALTER TABLE dbo.order_pizza
ADD CONSTRAINT FK_order_pizza_purchase_order
FOREIGN KEY (id_purchase_order)
REFERENCES dbo.purchase_order(id_purchase_order);
GO

ALTER TABLE dbo.pizza_ingredient
ADD CONSTRAINT FK_pizza_ingredient_pizza
FOREIGN KEY (id_pizza)
REFERENCES dbo.pizza(id_pizza);
GO

ALTER TABLE dbo.pizza_ingredient
ADD CONSTRAINT FK_pizza_ingredient_ingredient
FOREIGN KEY (id_ingredient)
REFERENCES dbo.ingredient(id_ingredient);
GO

ALTER TABLE dbo.purchase_order
ADD CONSTRAINT FK_purchase_order_order_status
FOREIGN KEY (id_order_status)
REFERENCES dbo.order_status(id_order_status);
GO

ALTER TABLE dbo.purchase_order
ADD CONSTRAINT FK_purchase_order_order_type
FOREIGN KEY (id_order_type)
REFERENCES dbo.order_type(id_order_type);
GO

ALTER TABLE dbo.purchase_order
ADD CONSTRAINT FK_purchase_order_deliverer
FOREIGN KEY (id_deliverer)
REFERENCES dbo.deliverer(id_deliverer);
GO


--unique restriction

ALTER TABLE dbo.addition
ADD CONSTRAINT UN_addition
UNIQUE (name_addition);
GO

ALTER TABLE dbo.ingredient
ADD CONSTRAINT UN_ingredient
UNIQUE (name_ingredient);
GO

ALTER TABLE dbo.order_status
ADD CONSTRAINT UN_order_status
UNIQUE (name_order_status);
GO

ALTER TABLE dbo.order_type
ADD CONSTRAINT UN_order_type
UNIQUE (name_order_type);
GO

ALTER TABLE dbo.pizza_size
ADD CONSTRAINT UN_pizza_size
UNIQUE (name_pizza_size);
GO

--check restriction

ALTER TABLE dbo.addition
ADD CONSTRAINT CK_addition_price
CHECK (price_addition > 0);
GO

ALTER TABLE dbo.deliverer
ADD CONSTRAINT CK_deliverer_phone
CHECK ((phone_deliverer LIKE '+[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]') OR (phone_deliverer LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'));
GO

ALTER TABLE dbo.ingredient
ADD CONSTRAINT CK_ingredient_price
CHECK (price_ingredient > 0);
GO

ALTER TABLE dbo.order_addition
ADD CONSTRAINT CK_order_addition_price
CHECK (price_order_addition >= 0);
GO

ALTER TABLE dbo.order_addition
ADD CONSTRAINT CK_order_addition_quantity
CHECK (quantity_addition > 0);
GO

ALTER TABLE dbo.order_pizza
ADD CONSTRAINT CK_order_pizza_price
CHECK (price_order_pizza >= 0);
GO

ALTER TABLE dbo.order_pizza
ADD CONSTRAINT CK_order_pizza_quantity
CHECK (quantity_pizza = 1 AND (CONVERT(int,(quantity_pizza*10)) % 5 = 0));
GO

ALTER TABLE dbo.pizza
ADD CONSTRAINT CK_pizza_price
CHECK (price_pizza >= 0);
GO

ALTER TABLE dbo.pizza_size
ADD CONSTRAINT CK_multipler
CHECK (multiplier >= 1);
GO

ALTER TABLE dbo.purchase_order
ADD CONSTRAINT CK_purchase_order_price
CHECK (price_order >= 0);
GO

ALTER TABLE dbo.purchase_order
ADD CONSTRAINT CK_purchase_order_client_phone
CHECK ((phone_client like '+[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]') or (phone_client like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'));
GO

--default values

ALTER TABLE dbo.purchase_order
ADD CONSTRAINT DE_purchase_order_date
DEFAULT (GETDATE()) FOR date_purchase_order;
GO

ALTER TABLE dbo.purchase_order
ADD CONSTRAINT DE_purchase_order_price
DEFAULT (0) FOR price_order;
GO

ALTER TABLE dbo.pizza
ADD CONSTRAINT DE_pizza_price
DEFAULT (0) FOR price_pizza;
GO

ALTER TABLE dbo.order_pizza
ADD CONSTRAINT DE_order_pizza_price
DEFAULT (0) FOR price_order_pizza;
GO
