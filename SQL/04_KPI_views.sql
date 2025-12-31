------------------------------------------------------------
-- KPI Views for Domino’s Pizza Analytics (Oracle SQL)
-- These views support dashboards, BI tools, and reporting.
------------------------------------------------------------

-- 1. Daily Sales Summary
CREATE OR REPLACE VIEW vw_daily_sales AS
SELECT
    order_date,
    SUM(total_price) AS total_sales,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(AVG(total_price), 2) AS avg_order_value
FROM pizza_orders
GROUP BY order_date
ORDER BY order_date;


-- 2. Monthly Sales Summary
CREATE OR REPLACE VIEW vw_monthly_sales AS
SELECT
    TO_CHAR(order_date, 'YYYY-MM') AS month,
    SUM(total_price) AS total_sales,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(AVG(total_price), 2) AS avg_order_value
FROM pizza_orders
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY month;


-- 3. Pizza Performance Summary
CREATE OR REPLACE VIEW vw_pizza_performance AS
SELECT
    pizza_name,
    pizza_category,
    pizza_size,
    SUM(quantity) AS total_quantity,
    SUM(total_price) AS total_revenue
FROM pizza_orders
GROUP BY pizza_name, pizza_category, pizza_size
ORDER BY total_revenue DESC;


-- 4. Hourly Order Distribution
CREATE OR REPLACE VIEW vw_hourly_orders AS
SELECT
    SUBSTR(order_time, 1, 2) AS hour_of_day,
    COUNT(*) AS order_count
FROM pizza_orders
GROUP BY SUBSTR(order_time, 1, 2)
ORDER BY hour_of_day;
