USE retail_analysis;

-- 1. Row and invoice counts
SELECT COUNT(*) AS total_rows, COUNT(DISTINCT invoice_id) AS unique_invoices
FROM retail_sales;

-- 2. Missing-value checks
SELECT COUNT(*) AS total_rows,
       SUM(invoice_id IS NULL) AS missing_invoice_id,
       SUM(branch IS NULL) AS missing_branch,
       SUM(city IS NULL) AS missing_city,
       SUM(customer_type IS NULL) AS missing_customer_type,
       SUM(gender IS NULL) AS missing_gender,
       SUM(product_line IS NULL) AS missing_product_line,
       SUM(unit_price IS NULL) AS missing_unit_price,
       SUM(quantity IS NULL) AS missing_quantity,
       SUM(total IS NULL) AS missing_total,
       SUM(sale_date IS NULL) AS missing_date,
       SUM(sale_time IS NULL) AS missing_time,
       SUM(payment_method IS NULL) AS missing_payment,
       SUM(cogs IS NULL) AS missing_cogs,
       SUM(gross_income IS NULL) AS missing_income,
       SUM(customer_rating IS NULL) AS missing_rating
FROM retail_sales;

-- 3. Numeric ranges
SELECT MIN(unit_price) AS min_unit_price, MAX(unit_price) AS max_unit_price,
       MIN(quantity) AS min_quantity, MAX(quantity) AS max_quantity,
       MIN(total) AS min_total, MAX(total) AS max_total,
       MIN(customer_rating) AS min_rating, MAX(customer_rating) AS max_rating
FROM retail_sales;

-- 4. Invalid-record check
SELECT COUNT(*) AS invalid_records
FROM retail_sales
WHERE unit_price <= 0 OR quantity <= 0 OR total <= 0 OR cogs <= 0
   OR gross_income < 0 OR customer_rating < 1 OR customer_rating > 10;

-- 5. Category counts
SELECT COUNT(DISTINCT branch) AS branches, COUNT(DISTINCT city) AS cities,
       COUNT(DISTINCT customer_type) AS customer_types,
       COUNT(DISTINCT gender) AS genders,
       COUNT(DISTINCT product_line) AS product_lines,
       COUNT(DISTINCT payment_method) AS payment_methods
FROM retail_sales;

-- 6. Branch and city performance
SELECT branch, city, COUNT(*) AS transactions,
       ROUND(SUM(total), 2) AS revenue, ROUND(AVG(total), 2) AS average_transaction
FROM retail_sales
GROUP BY branch, city
ORDER BY revenue DESC;

-- 7. Product-line performance
SELECT product_line, COUNT(*) AS transactions, SUM(quantity) AS units_sold,
       ROUND(SUM(total), 2) AS revenue
FROM retail_sales
GROUP BY product_line
ORDER BY revenue DESC;

-- 8. Monthly sales trends
SELECT MONTH(sale_date) AS month_number, MONTHNAME(sale_date) AS month_name,
       COUNT(*) AS transactions, ROUND(SUM(total), 2) AS revenue
FROM retail_sales
GROUP BY MONTH(sale_date), MONTHNAME(sale_date)
ORDER BY month_number;

-- 9. Payment-method performance
SELECT payment_method, COUNT(*) AS transactions, ROUND(SUM(total), 2) AS revenue
FROM retail_sales
GROUP BY payment_method
ORDER BY revenue DESC;

-- 10. Customer-type performance
SELECT customer_type, COUNT(*) AS transactions, ROUND(SUM(total), 2) AS revenue,
       ROUND(AVG(total), 2) AS average_spend
FROM retail_sales
GROUP BY customer_type
ORDER BY revenue DESC;

-- 11. Gender performance
SELECT gender, COUNT(*) AS transactions, ROUND(SUM(total), 2) AS revenue,
       ROUND(AVG(total), 2) AS average_spend
FROM retail_sales
GROUP BY gender
ORDER BY revenue DESC;

-- 12. Gross income and margin by product line
SELECT product_line, ROUND(SUM(gross_income), 2) AS gross_income,
       ROUND(AVG(gross_margin_percentage), 2) AS avg_margin_percentage
FROM retail_sales
GROUP BY product_line
ORDER BY gross_income DESC;

-- 13. Product-line ratings
SELECT product_line, COUNT(*) AS transactions,
       ROUND(AVG(customer_rating), 2) AS average_rating
FROM retail_sales
GROUP BY product_line
ORDER BY average_rating DESC;

-- 14. Sales by hour
SELECT HOUR(sale_time) AS sale_hour, COUNT(*) AS transactions,
       ROUND(SUM(total), 2) AS revenue
FROM retail_sales
GROUP BY HOUR(sale_time)
ORDER BY revenue DESC;

-- 15. Rank product lines within each branch
SELECT branch, product_line, ROUND(SUM(total), 2) AS revenue,
       RANK() OVER (PARTITION BY branch ORDER BY SUM(total) DESC) AS revenue_rank
FROM retail_sales
GROUP BY branch, product_line
ORDER BY branch, revenue_rank;

-- 16. Rank months by revenue
WITH monthly_sales AS (
    SELECT MONTH(sale_date) AS month_number, SUM(total) AS revenue
    FROM retail_sales
    GROUP BY MONTH(sale_date)
)
SELECT month_number, ROUND(revenue, 2) AS revenue,
       RANK() OVER (ORDER BY revenue DESC) AS revenue_rank
FROM monthly_sales
ORDER BY revenue_rank;

-- 17. Top three transactions within each product line
WITH ranked_sales AS (
    SELECT product_line, invoice_id, total,
           ROW_NUMBER() OVER (PARTITION BY product_line ORDER BY total DESC) AS sale_rank
    FROM retail_sales
)
SELECT product_line, invoice_id, ROUND(total, 2) AS total, sale_rank
FROM ranked_sales
WHERE sale_rank <= 3
ORDER BY product_line, sale_rank;
