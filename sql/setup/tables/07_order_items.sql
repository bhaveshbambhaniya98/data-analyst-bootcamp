/*
 ============================================================
 Table      : order_items
 Description: Stores individual products purchased in an order.
 Source CSV : olist_order_items_dataset.csv
 Project    : Data Analyst Bootcamp
 Dataset    : Olist Brazilian E-Commerce
 ============================================================
 */
CREATE TABLE order_items (
    order_id TEXT,
    order_item_id INTEGER,
    product_id TEXT,
    seller_id TEXT,
    shipping_limit_date TIMESTAMP,
    price NUMERIC(10, 2),
    freight_value NUMERIC(10, 2)
);