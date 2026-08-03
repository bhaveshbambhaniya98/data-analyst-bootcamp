# Datasets

This directory contains all datasets used throughout the Data Analyst Bootcamp.

## Structure

```
datasets
│
├── raw
├── processed
└── external
```

## raw

Contains the original datasets downloaded from external sources (e.g., Kaggle).

These files should never be modified.

Example

- Olist Brazilian E-Commerce Dataset

## processed

Contains cleaned and transformed datasets generated during analysis.

Examples

- cleaned_orders.csv
- customer_summary.csv
- sales_monthly.csv

## external

Contains supplementary datasets used for enrichment.

Examples

- Public holidays
- Exchange rates
- Population data

 Never overwrite files in `raw`.