/*
============================================================
File        : 04_check_constraints.sql
Description : Add CHECK constraints
Project     : Data Analyst Bootcamp
============================================================
*/

-- ==========================================================
-- Reviews
-- ==========================================================

ALTER TABLE order_reviews
ADD CONSTRAINT chk_review_score
CHECK (review_score BETWEEN 1 AND 5);

-- ==========================================================
-- Order Items
-- ==========================================================

ALTER TABLE order_items
ADD CONSTRAINT chk_price
CHECK (price >= 0);

ALTER TABLE order_items
ADD CONSTRAINT chk_freight_value
CHECK (freight_value >= 0);

-- ==========================================================
-- Order Payments
-- ==========================================================

ALTER TABLE order_payments
ADD CONSTRAINT chk_payment_value
CHECK (payment_value >= 0);

-- ==========================================================
-- Payment Installments
-- ==========================================================

-- ALTER TABLE order_payments
-- ADD CONSTRAINT chk_payment_installments
-- CHECK (payment_installments >= 1);

-- Reason:
-- Raw Olist dataset contains one credit card payment
-- with payment_installments = 0.
-- We preserve the raw dataset without modification.