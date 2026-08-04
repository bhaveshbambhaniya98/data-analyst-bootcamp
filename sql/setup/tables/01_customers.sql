/*
============================================================
Table      : customers
Description: Customer master information
Source CSV : olist_customers_dataset.csv
Project    : Data Analyst Bootcamp
Dataset    : Olist Brazilian E-Commerce
============================================================
*/

CREATE TABLE customers (
    customer_id TEXT,
    customer_unique_id TEXT,
    customer_zip_code_prefix INTEGER,
    customer_city TEXT,
    customer_state CHAR(2)
);