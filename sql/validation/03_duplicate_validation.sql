/*
============================================================
Validation : Duplicate Check
Description: Check future primary keys for duplicates.
============================================================
*/

-- Customers
SELECT
    customer_id,
    COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Sellers
SELECT
    seller_id,
    COUNT(*)
FROM sellers
GROUP BY seller_id
HAVING COUNT(*) > 1;

-- Products
SELECT
    product_id,
    COUNT(*)
FROM products
GROUP BY product_id
HAVING COUNT(*) > 1;

-- Orders
SELECT
    order_id,
    COUNT(*)
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Order Reviews (Composite Primary Key Validation)

SELECT
    review_id,
    order_id,
    COUNT(*)
FROM order_reviews
GROUP BY review_id, order_id
HAVING COUNT(*) > 1;