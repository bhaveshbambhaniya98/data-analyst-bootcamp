/*
============================================================
File        : 01_primary_keys.sql
Description : Add Primary Keys after validating uniqueness
Project     : Data Analyst Bootcamp
============================================================
*/

-- Customers

ALTER TABLE customers
ADD CONSTRAINT pk_customers
PRIMARY KEY (customer_id);

-- Sellers

ALTER TABLE sellers
ADD CONSTRAINT pk_sellers
PRIMARY KEY (seller_id);

-- Products

ALTER TABLE products
ADD CONSTRAINT pk_products
PRIMARY KEY (product_id);

-- Orders

ALTER TABLE orders
ADD CONSTRAINT pk_orders
PRIMARY KEY (order_id);

-- Order Items

ALTER TABLE order_items
ADD CONSTRAINT pk_order_items
PRIMARY KEY (order_id, order_item_id);

-- Order Payments

ALTER TABLE order_payments
ADD CONSTRAINT pk_order_payments
PRIMARY KEY (order_id, payment_sequential);

-- Order Reviews

ALTER TABLE order_reviews
ADD CONSTRAINT pk_order_reviews
PRIMARY KEY (review_id, order_id);

-- Product Category Translation

ALTER TABLE product_category_translation
ADD CONSTRAINT pk_product_category_translation
PRIMARY KEY (product_category_name);

-- Geolocation

-- No Primary Key
-- Reason:
-- The dataset contains duplicate ZIP code prefixes,
-- so no single column uniquely identifies each row.