/*
============================================================
Table      : orders
Description: Stores customer orders and their lifecycle.
Source CSV : olist_orders_dataset.csv
Project    : Data Analyst Bootcamp
Dataset    : Olist Brazilian E-Commerce
============================================================
*/

CREATE TABLE orders (
    order_id TEXT,
    customer_id TEXT,
    order_status TEXT,
    order_purchase_timestamp TIMESTAMP,
    order_approved_at TIMESTAMP,
    order_delivered_carrier_date TIMESTAMP,
    order_delivered_customer_date TIMESTAMP,
    order_estimated_delivery_date TIMESTAMP
);