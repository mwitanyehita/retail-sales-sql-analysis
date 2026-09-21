CREATE DATABASE IF NOT EXISTS retail_analysis;
USE retail_analysis;

DROP TABLE IF EXISTS retail_sales;

CREATE TABLE retail_sales (
    invoice_id VARCHAR(50) NOT NULL,
    branch CHAR(1) NOT NULL,
    city VARCHAR(50) NOT NULL,
    customer_type VARCHAR(20) NOT NULL,
    gender VARCHAR(20) NOT NULL,
    product_line VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    tax_amount DECIMAL(12,4) NOT NULL,
    total DECIMAL(12,4) NOT NULL,
    sale_date DATE NOT NULL,
    sale_time TIME NOT NULL,
    payment_method VARCHAR(30) NOT NULL,
    cogs DECIMAL(12,2) NOT NULL,
    gross_margin_percentage DECIMAL(10,4) NOT NULL,
    gross_income DECIMAL(12,4) NOT NULL,
    customer_rating DECIMAL(4,1) NOT NULL,
    PRIMARY KEY (invoice_id),
    CONSTRAINT chk_quantity_positive CHECK (quantity > 0),
    CONSTRAINT chk_unit_price_positive CHECK (unit_price > 0),
    CONSTRAINT chk_total_positive CHECK (total > 0),
    CONSTRAINT chk_rating_range CHECK (customer_rating BETWEEN 1 AND 10)
);
