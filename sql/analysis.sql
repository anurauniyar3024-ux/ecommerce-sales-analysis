-- ============================================================
-- E-Commerce Sales Analysis
-- Brazilian Olist E-Commerce Dataset
--
-- Author: Anushka Rauniyar
-- Project: End-to-End Data Analyst Portfolio Project
-- Database: SQLite
-- Tools: SQL, SQLite, Python, Pandas
--
-- Description:
-- This SQL script contains business-oriented analytical queries
-- performed on the cleaned Olist E-Commerce dataset. The queries
-- cover sales, customers, products, sellers, payments, reviews,
-- time-based analysis, and delivery performance.
-- ============================================================


-- ============================================================
-- SECTION 1: SALES ANALYSIS
-- ============================================================

-- Query 1: Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;

-- Query 2: Total Customers
SELECT COUNT(DISTINCT customer_unique_id) AS total_customers
FROM customers;

-- Query 3: Total Revenue
SELECT ROUND(SUM(payment_value),2) AS total_revenue
FROM payments;

-- Query 4: Average Order Value
SELECT ROUND(AVG(payment_value),2) AS average_order_value
FROM payments;


-- ============================================================
-- SECTION 2: CUSTOMER ANALYSIS
-- ============================================================

-- Query 5: Orders by State
SELECT
    c.customer_state,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_state
ORDER BY total_orders DESC;

-- Query 6: Top 10 Customer Cities
SELECT
    c.customer_city,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_city
ORDER BY total_orders DESC
LIMIT 10;


-- ============================================================
-- SECTION 3: PRODUCT ANALYSIS
-- ============================================================

-- Query 7: Top 10 Selling Product Categories
SELECT
    p.product_category_name,
    COUNT(*) AS total_sales
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_sales DESC
LIMIT 10;

-- Query 8: Top 10 Product Categories by Revenue
SELECT
    p.product_category_name,
    ROUND(SUM(oi.price),2) AS revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY revenue DESC
LIMIT 10;

-- Query 9: Most Expensive Products
SELECT
    product_id,
    MAX(price) AS highest_price
FROM order_items
GROUP BY product_id
ORDER BY highest_price DESC
LIMIT 10;


-- ============================================================
-- SECTION 4: SELLER ANALYSIS
-- ============================================================

-- Query 10: Top 10 Sellers by Products Sold
SELECT
    seller_id,
    COUNT(*) AS products_sold
FROM order_items
GROUP BY seller_id
ORDER BY products_sold DESC
LIMIT 10;

-- Query 11: Top 10 Sellers by Revenue
SELECT
    seller_id,
    ROUND(SUM(price),2) AS revenue
FROM order_items
GROUP BY seller_id
ORDER BY revenue DESC
LIMIT 10;


-- ============================================================
-- SECTION 5: PAYMENT ANALYSIS
-- ============================================================

-- Query 12: Payment Method Distribution
SELECT
    payment_type,
    COUNT(*) AS total_transactions
FROM payments
GROUP BY payment_type
ORDER BY total_transactions DESC;

-- Query 13: Average Payment by Payment Method
SELECT
    payment_type,
    ROUND(AVG(payment_value),2) AS average_payment
FROM payments
GROUP BY payment_type
ORDER BY average_payment DESC;

-- Query 14: Installment Distribution
SELECT
    payment_installments,
    COUNT(*) AS total_orders
FROM payments
GROUP BY payment_installments
ORDER BY payment_installments;


-- ============================================================
-- SECTION 6: REVIEW ANALYSIS
-- ============================================================

-- Query 15: Average Review Score
SELECT
    ROUND(AVG(review_score),2) AS average_review_score
FROM reviews;

-- Query 16: Review Score Distribution
SELECT
    review_score,
    COUNT(*) AS total_reviews
FROM reviews
GROUP BY review_score
ORDER BY review_score;

-- Query 17: Orders by Status
SELECT
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;


-- ============================================================
-- SECTION 7: TIME ANALYSIS
-- ============================================================

-- Query 18: Monthly Orders
SELECT
    strftime('%Y-%m', order_purchase_timestamp) AS month,
    COUNT(*) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;

-- Query 19: Monthly Revenue
SELECT
    strftime('%Y-%m', o.order_purchase_timestamp) AS month,
    ROUND(SUM(p.payment_value),2) AS revenue
FROM orders o
JOIN payments p
ON o.order_id = p.order_id
GROUP BY month
ORDER BY month;


-- ============================================================
-- SECTION 8: DELIVERY ANALYSIS
-- ============================================================

-- Query 20: Average Delivery Time
SELECT
    ROUND(
        AVG(
            julianday(order_delivered_customer_date) -
            julianday(order_purchase_timestamp)
        ),
        2
    ) AS average_delivery_days
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;