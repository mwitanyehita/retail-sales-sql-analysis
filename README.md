# Retail Sales & Customer Analysis

## Project Overview

This project analyzes retail sales transaction data using **MySQL and SQL** to identify sales patterns, product performance, customer behavior, and revenue trends.

The project is designed as a practical data analytics portfolio project, demonstrating how SQL can be used to clean, validate, analyze, and extract business insights from transactional data.

## Business Questions

The analysis focuses on questions such as:

* Which branches generate the most revenue?
* Which product lines perform best?
* How does revenue change across months?
* Which payment methods are most commonly used?
* How do Member and Normal customers differ in spending?
* How does revenue differ by gender?
* Which product lines generate the most gross income?
* Which product lines receive the highest customer ratings?
* Which hours generate the most sales revenue?
* Which product lines perform best within each branch?
* What are the highest-value transactions within each product category?

## Dataset

The dataset contains **1,000 retail transactions** and includes information about:

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

The raw dataset is stored in:

`data/retail_sales.csv`

## Tools Used

* **MySQL 8.4**
* **SQL**
* **Git**
* **GitHub**
* **Ubuntu Linux**

## Data Preparation & Quality Checks

Before performing the analysis, the dataset was validated to ensure that it was suitable for analysis.

Checks included:

* Confirming the total number of records
* Checking for duplicate invoice IDs
* Checking for missing values
* Checking numeric value ranges
* Checking for invalid sales records
* Converting transaction dates into MySQL `DATE` format
* Converting transaction times into MySQL `TIME` format

The final dataset contains:

**1,000 records and 1,000 unique invoice IDs.**

No invalid records were identified using the validation rules implemented in the SQL analysis.

## SQL Analysis

The SQL analysis includes:

### Descriptive Analysis

* Branch and city revenue
* Product-line revenue and units sold
* Monthly revenue
* Payment-method performance
* Customer-type performance
* Gender-based sales performance
* Gross income and margin analysis
* Customer ratings
* Sales activity by hour

### Advanced SQL

The project also demonstrates:

* `GROUP BY`
* Aggregate functions
* `CASE`
* Common Table Expressions (CTEs)
* Window functions
* `RANK()`
* `ROW_NUMBER()`
* Partitioned ranking
* Subqueries

The complete analysis queries are available in:

`sql/analysis.sql`

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

## Key Findings

The detailed findings will be documented here after the analysis outputs have been reviewed.

Examples of the findings to be documented include:

* Highest-revenue branch
* Highest-performing product line
* Highest-revenue month
* Most-used payment method
* Customer segment with the highest average spending
* Product line with the highest gross income
* Busiest sales hours

## Skills Demonstrated

This project demonstrates practical ability in:

* SQL querying
* Data cleaning and validation
* Exploratory data analysis
* Business-focused analysis
* Aggregation and grouping
* Window functions
* Common Table Expressions
* Data quality checking
* Git and GitHub workflow
* Translating raw transaction data into business questions

## Future Improvements

Future versions of the project may include:

* Python-based exploratory data analysis
* Data visualizations
* Power BI dashboard
* Automated reporting
* Additional customer segmentation analysis

## Author

**Mwita Nyehita**

GitHub: [@mwitanyehita](https://github.com/mwitanyehita)
