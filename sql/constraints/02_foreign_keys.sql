/*
============================================================
File        : 02_foreign_keys.sql
Description : Add Foreign Keys after referential validation
Project     : Data Analyst Bootcamp
============================================================
*/

-- ==========================================================
-- Orders → Customers
-- Business Rule:
-- Every order must belong to an existing customer.
-- ==========================================================

ALTER TABLE orders
ADD CONSTRAINT fk_orders_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

-- ==========================================================
-- Order Items → Orders
-- Business Rule:
-- Every order item must belong to an existing order.
-- ==========================================================

ALTER TABLE order_items
ADD CONSTRAINT fk_order_items_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

-- ==========================================================
-- Order Items → Products
-- Business Rule:
-- Every order item must reference an existing product.
-- ==========================================================

ALTER TABLE order_items
ADD CONSTRAINT fk_order_items_product
FOREIGN KEY (product_id)
REFERENCES products(product_id);

-- ==========================================================
-- Order Items → Sellers
-- Business Rule:
-- Every order item must belong to an existing seller.
-- ==========================================================

ALTER TABLE order_items
ADD CONSTRAINT fk_order_items_seller
FOREIGN KEY (seller_id)
REFERENCES sellers(seller_id);

-- ==========================================================
-- Order Payments → Orders
-- Business Rule:
-- Every payment must belong to an existing order.
-- ==========================================================

ALTER TABLE order_payments
ADD CONSTRAINT fk_order_payments_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

-- ==========================================================
-- Order Reviews → Orders
-- Business Rule:
-- Every review must belong to an existing order.
-- ==========================================================

ALTER TABLE order_reviews
ADD CONSTRAINT fk_order_reviews_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);