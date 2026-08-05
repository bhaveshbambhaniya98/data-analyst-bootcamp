/*
============================================================
File        : 03_not_null.sql
Description : Add NOT NULL constraints
Project     : Data Analyst Bootcamp
============================================================
*/

-- ==========================================================
-- Customers
-- ==========================================================

ALTER TABLE customers
ALTER COLUMN customer_id SET NOT NULL;

-- ==========================================================
-- Sellers
-- ==========================================================

ALTER TABLE sellers
ALTER COLUMN seller_id SET NOT NULL;

-- ==========================================================
-- Products
-- ==========================================================

ALTER TABLE products
ALTER COLUMN product_id SET NOT NULL;

-- ==========================================================
-- Orders
-- ==========================================================

ALTER TABLE orders
ALTER COLUMN order_id SET NOT NULL;

ALTER TABLE orders
ALTER COLUMN customer_id SET NOT NULL;

-- ==========================================================
-- Order Items
-- ==========================================================

ALTER TABLE order_items
ALTER COLUMN order_id SET NOT NULL;

ALTER TABLE order_items
ALTER COLUMN order_item_id SET NOT NULL;

ALTER TABLE order_items
ALTER COLUMN product_id SET NOT NULL;

ALTER TABLE order_items
ALTER COLUMN seller_id SET NOT NULL;

-- ==========================================================
-- Order Payments
-- ==========================================================

ALTER TABLE order_payments
ALTER COLUMN order_id SET NOT NULL;

ALTER TABLE order_payments
ALTER COLUMN payment_sequential SET NOT NULL;

-- ==========================================================
-- Order Reviews
-- ==========================================================

ALTER TABLE order_reviews
ALTER COLUMN review_id SET NOT NULL;

ALTER TABLE order_reviews
ALTER COLUMN order_id SET NOT NULL;