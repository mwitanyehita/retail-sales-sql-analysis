cd ~/Data-Portfolio/retail-sales-sql-analysis
nano README.m

# Retail Sales & Customer Analysis

## Project Overview

This project analyzes 1,000 retail transactions using MySQL and SQL to identify revenue patterns, product performance, customer behavior, and sales trends.

The project demonstrates a practical data analytics workflow:

1. Importing raw transactional data
2. Cleaning and validating the dataset
3. Performing exploratory analysis
4. Applying advanced SQL techniques
5. Extracting business-focused insights
6. Managing the project using Git and GitHub

## Business Questions

The analysis investigates:

* How much revenue was generated?
* Which branch generated the most revenue?
* Which product lines performed best?
* How many units were sold?
* Which customer segments generated the most revenue?
* Which payment methods were used most often?
* How did revenue change across months?
* Which product lines generated the most gross income?
* Which hours recorded the most sales activity?
* Which product lines performed best within each branch?

## Dataset

The dataset contains 1,000 retail transactions with information on:

* Invoice ID
* Branch
* City
* Customer type
* Gender
* Product line
* Unit price
* Quantity
* Tax
* Total sales
* Date
* Time
* Payment method
* Cost of goods sold
* Gross margin percentage
* Gross income
* Customer rating

Source file:

`data/retail_sales.csv`

## Tools

* MySQL 8.4
* SQL
* Git
* GitHub
* Ubuntu Linux

## Data Quality

The dataset was validated before analysis.

Checks included:

* Total record count
* Unique invoice IDs
* Missing values
* Numeric ranges
* Invalid transaction values
* Date and time formatting

Validation confirmed:

* **1,000 transactions**
* **1,000 unique invoices**
* **0 invalid records** under the validation rules used
* Transaction dates successfully converted to MySQL `DATE`
* Transaction times successfully stored as MySQL `TIME`

## Key Metrics

| Metric                    |      Value |
| ------------------------- | ---------: |
| Total transactions        |      1,000 |
| Total revenue             | 322,966.75 |
| Total gross income        |  15,379.37 |
| Average transaction value |     322.97 |
| Average customer rating   |       6.97 |
| Total units sold          |      5,510 |

## Key Findings

### Branch Performance

Branch C in Naypyitaw recorded the highest revenue in the dataset.

| Branch | City      | Transactions |    Revenue | Average Transaction |
| ------ | --------- | -----------: | ---------: | ------------------: |
| C      | Naypyitaw |          328 | 110,568.71 |              337.10 |
| A      | Yangon    |          340 | 106,200.37 |              312.35 |
| B      | Mandalay  |          332 | 106,197.67 |              319.87 |

Branch C also had the highest average transaction value at 337.10.

### Product-Line Performance

Food and beverages generated the highest revenue and gross income.

| Product Line           | Transactions | Units Sold |   Revenue | Gross Income |
| ---------------------- | -----------: | ---------: | --------: | -----------: |
| Food and beverages     |          174 |        952 | 56,144.84 |     2,673.56 |
| Sports and travel      |          166 |        920 | 55,122.83 |     2,624.90 |
| Electronic accessories |          170 |        971 | 54,337.53 |     2,587.50 |
| Fashion accessories    |          178 |        902 | 54,305.90 |     2,586.00 |
| Home and lifestyle     |          160 |        911 | 53,861.91 |     2,564.85 |
| Health and beauty      |          152 |        854 | 49,193.74 |     2,342.56 |

Electronic accessories recorded the highest number of units sold at **971 units**.

## SQL Techniques Demonstrated

The project uses:

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* Aggregate functions
* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()` and `MAX()`
* `DISTINCT`
* Common Table Expressions (CTEs)
* `RANK()`
* `ROW_NUMBER()`
* Window functions
* Date and time functions
* Data-quality validation

## Project Structure

```text
retail-sales-sql-analysis/
│
├── data/
│   └── retail_sales.csv
│
├── sql/
│   └── analysis.sql
│
├── results/
│
└── README.md
```

## Analysis File

The complete SQL analysis is available in:

`sql/analysis.sql`

## Skills Demonstrated

This project demonstrates practical skills in:

* SQL querying
* Data cleaning and validation
* Exploratory data analysis
* Business analysis
* Aggregation
* Window functions
* Common Table Expressions
* Data quality checks
* Git and GitHub
* Translating business questions into SQL analysis

## Future Improvements

Potential extensions include:

* Python exploratory data analysis
* Data visualization
* Power BI dashboard development
* Customer segmentation
* Automated reporting

## Author

**Mwita Nyehita**

GitHub: https://github.com/mwitanyehita




