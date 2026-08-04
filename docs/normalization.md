# Database Normalization

**Project:** Data Analyst Bootcamp  
**Dataset:** Olist Brazilian E-Commerce Dataset  
**Date:** 2026-08-04  
**Status:** Learning Notes

# What is normalization?
Answer :Normalization is the process of organizing data into multiple related tables so that each table represents a single entity (for example, Customers, Orders, or Sellers). This reduces data redundancy, prevents data inconsistency, and makes insert, update, and delete operations easier to manage.

# Why do we normalize data?
Answer : Suppose all customer, seller, and order information is stored in a single table.

Problems:

- If a new seller joins but hasn't received an order yet, we cannot insert the seller.
- If a customer's city changes and one row is missed during the update, the same customer may appear to live in two different cities.
- Customer and seller information would be repeated in every order, increasing storage and maintenance effort.

Normalization solves these problems by dividing the data into related tables.

The three normal forms we will study are:
- 1NF
- 2NF
- 3NF

# 1NF
Answer: One cell One Value. In 1NF table data store single value per raw and never stored comma separated values in single raw.
for example:
order_id        product
001             mouse, keyboard, laptop

instead store like:
Order ID     Item ID     Product
001          1           Mouse
001          2           Keyboard
001          3           Laptop


# 2NF
Answer: Every non-key column should depend on the entire primary key.

Example:

In the `order_items` table, the primary key is:

(order_id, order_item_id)

Columns such as `price` and `product_id` describe a specific order item, so they depend on the complete primary key.

They do not depend only on `order_id`.

# 3NF
Answer: Do not store information that can be obtained from another table.

Example:

The `orders` table should not store `customer_city` because it already exists in the `customers` table.

If the customer's city changes and only one table is updated, the database becomes inconsistent.

Instead, the city should be retrieved using a JOIN when needed.