/*
============================================================
Validation : Business Rule Validation
============================================================
*/

-- Review score should be between 1 and 5

SELECT *
FROM order_reviews
WHERE review_score NOT BETWEEN 1 AND 5;

-- Price should never be negative

SELECT *
FROM order_items
WHERE price < 0;

-- Freight should never be negative

SELECT *
FROM order_items
WHERE freight_value < 0;

-- Payment value should never be negative

SELECT *
FROM order_payments
WHERE payment_value < 0;