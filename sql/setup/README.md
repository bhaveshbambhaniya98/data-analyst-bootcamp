# Database Setup

This directory contains all SQL scripts required to create and initialize the Olist PostgreSQL database.

## Execution Order

1. 01_create_database.sql
2. 02_create_schema.sql
3. tables/
4. 03_add_primary_keys.sql
5. 04_add_foreign_keys.sql
6. 05_create_indexes.sql
7. 06_validation_queries.sql

## Notes

- Tables are created first.
- Data is imported after table creation.
- Constraints are added only after validating imported data.
- Indexes are created after constraints.

This mirrors a typical ETL workflow used in production systems.