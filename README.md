# Retail Sales & Customer Analysis

This project analyzes 1,000 retail transactions with MySQL and SQL to identify revenue patterns, product performance, customer behavior, payment preferences, and sales trends.

## What this project demonstrates

- Creating a reproducible MySQL schema
- Loading raw CSV data
- Validating data quality
- Answering business questions with SQL
- Using CTEs and window functions
- Documenting analysis for portfolio use

## Business questions

- How much revenue was generated overall?
- Which branch generated the most revenue?
- Which product lines performed best?
- How many units were sold?
- Which customer types generated the most revenue?
- Which payment methods were used most often?
- How did revenue change by month?
- Which product lines generated the most gross income?
- Which hours recorded the most sales activity?
- Which product lines performed best within each branch?

## Dataset

The dataset contains 1,000 transactions with fields for invoice, branch, city, customer type, gender, product line, pricing, quantity, tax, total sales, date, time, payment method, costs, margin, gross income, and customer rating.

Source: [`data/retail_sales.csv`](data/retail_sales.csv)

## Tools

- MySQL 8.x
- SQL
- Git and GitHub
- Ubuntu/Linux

## Repository structure

```text
retail-sales-sql-analysis/
├── data/retail_sales.csv
├── results/.gitkeep
├── sql/schema.sql
├── sql/load_data.sql
├── sql/analysis.sql
├── .gitignore
└── README.md
```

## Reproduce the analysis

From the repository root:

```bash
mysql -u your_username -p < sql/schema.sql
```

Replace the placeholder path in `sql/load_data.sql`, then load the CSV:

```bash
mysql --local-infile=1 -u your_username -p < sql/load_data.sql
```

Run the analysis:

```bash
mysql -u your_username -p < sql/analysis.sql
```

The import script converts source dates in `m/d/YYYY` format to MySQL `DATE` values.

## Data quality validation

The analysis checks row counts, unique invoice IDs, missing values, numeric ranges, invalid transaction values, date/time parsing, and distinct category counts.

Expected results:

- 1,000 transactions
- 1,000 unique invoices
- No invalid records under the validation rules

## Key metrics

| Metric | Value |
| --- | ---: |
| Total transactions | 1,000 |
| Total revenue | 322,966.75 |
| Total gross income | 15,379.37 |
| Average transaction value | 322.97 |
| Average customer rating | 6.97 |
| Total units sold | 5,510 |

## Key findings

- Branch C in Naypyitaw recorded the highest revenue: **110,568.71**.
- Food and beverages generated the highest revenue: **56,144.84**.
- Electronic accessories recorded the most units sold: **971**.

## SQL techniques demonstrated

Aggregation, filtering, sorting, `GROUP BY`, `DISTINCT`, date/time functions, CTEs, `RANK()`, `ROW_NUMBER()`, window functions, and data-quality validation.

## Future improvements

- Add Python exploratory analysis
- Add a Power BI or Tableau dashboard
- Add customer segmentation
- Add automated SQL validation with GitHub Actions
- Export selected query results to `results/`

## Author

Mwita Nyehita — https://github.com/mwitanyehita
