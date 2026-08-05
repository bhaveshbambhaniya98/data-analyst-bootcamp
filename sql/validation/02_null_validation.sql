/*
============================================================
Validation : NULL Value Check
Description: Count NULL values in important columns.
============================================================
*/

SELECT
    COUNT(*) AS null_customer_id
FROM customers
WHERE customer_id IS NULL;

SELECT
    COUNT(*) AS null_order_id
FROM orders
WHERE order_id IS NULL;

SELECT
    COUNT(*) AS null_product_id
FROM products
WHERE product_id IS NULL;

SELECT
    COUNT(*) AS null_review_score
FROM order_reviews
WHERE review_score IS NULL;

SELECT
    COUNT(*) AS null_payment_value
FROM order_payments
WHERE payment_value IS NULL;