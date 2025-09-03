use final_project;
SELECT * FROM sales_orders;
SELECT * FROM regions;
SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM budgets_2017;

RENAME TABLE `2017_budgets` TO budgets_2017;

-- Primary Key
-- regions table
ALTER TABLE regions
ADD CONSTRAINT PK_regions PRIMARY KEY (`Index`);	

-- Product table
ALTER TABLE products
ADD CONSTRAINT PK_products PRIMARY KEY (`Index`);

-- Customers table
ALTER TABLE customers
ADD CONSTRAINT PK_customers PRIMARY KEY (`Customer Index`);

-- Sales Orders table
ALTER TABLE sales_orders
ADD CONSTRAINT PK_salesorders PRIMARY KEY (Ordernumber(255));

-- Budgets_2017 table
ALTER TABLE budgets_2017
ADD CONSTRAINT PK_budgets PRIMARY KEY (`product Name`(255));

-- Foreign key
-- Sales Orders → Regions

ALTER TABLE sales_orders
ADD CONSTRAINT FK_salesorders_regions
FOREIGN KEY (`Delivery Region Index`) REFERENCES regions(`Index`);

-- Sales Orders → Customers
ALTER TABLE sales_orders
ADD CONSTRAINT FK_salesorders_customers
FOREIGN KEY (`Customer Name Index`) REFERENCES customers(`Customer Index`);

-- Sales Orders → Products
ALTER TABLE sales_orders
ADD CONSTRAINT FK_salesorders_products
FOREIGN KEY (`Product Description Index`) REFERENCES products(`Index`);

-- budgets_2017
-- Add an ID column to products
ALTER TABLE products ADD COLUMN product_id INT AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE budgets_2017
DROP COLUMN product_id;
-- Add product_id to budgets_2017
ALTER TABLE budgets_2017 ADD COLUMN product_id INT;

-- Update the references
UPDATE budgets_2017 b
JOIN products p ON b.`Product Name` = p.`Product Name`
SET b.`Product Name` = p.`Product Name`;

ALTER TABLE products 
ADD INDEX idx_product_name (`Product Name`(255));

ALTER TABLE products MODIFY `Product Name` VARCHAR(255) NOT NULL;
ALTER TABLE budgets_2017 MODIFY `Product Name` VARCHAR(255);

-- Then create the foreign key with length specification
ALTER TABLE budgets_2017
ADD CONSTRAINT FK_budgets_products
FOREIGN KEY (`Product Name`)
REFERENCES products(`Product Name`);