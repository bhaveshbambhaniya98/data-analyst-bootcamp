/*
============================================================
Table      : order_payments
Description: Stores payment information for customer orders.
Source CSV : olist_order_payments_dataset.csv
Project    : Data Analyst Bootcamp
Dataset    : Olist Brazilian E-Commerce
============================================================
*/

CREATE TABLE order_payments (
    order_id TEXT,
    payment_sequential INTEGER,
    payment_type TEXT,
    payment_installments INTEGER,
    payment_value NUMERIC(10,2)
);