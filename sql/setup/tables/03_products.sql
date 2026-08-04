/*
============================================================
Table      : products
Description: Stores product information.
Source CSV : olist_products_dataset.csv
Project    : Data Analyst Bootcamp
Dataset    : Olist Brazilian E-Commerce
============================================================
*/

CREATE TABLE products (
    product_id TEXT,
    product_category_name TEXT,
    product_name_length INTEGER,
    product_description_length INTEGER,
    product_photos_qty INTEGER,
    product_weight_g INTEGER,
    product_length_cm INTEGER,
    product_height_cm INTEGER,
    product_width_cm INTEGER
);