USE retail_analysis;

LOAD DATA LOCAL INFILE '/absolute/path/to/retail-sales-sql-analysis/data/retail_sales.csv'
INTO TABLE retail_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
    invoice_id,
    branch,
    city,
    customer_type,
    gender,
    product_line,
    unit_price,
    quantity,
    tax_amount,
    total,
    @sale_date,
    @sale_time,
    payment_method,
    cogs,
    gross_margin_percentage,
    gross_income,
    customer_rating
)
SET
    sale_date = STR_TO_DATE(@sale_date, '%c/%e/%Y'),
    sale_time = STR_TO_DATE(@sale_time, '%H:%i');

-- Replace the placeholder path with the absolute path on your machine.
-- The --local-infile=1 client option may be required for local imports.
