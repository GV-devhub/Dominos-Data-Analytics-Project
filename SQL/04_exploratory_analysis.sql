-- TOTAL SALES GROUPED BY MONTH 
SELECT
    TO_CHAR(order_date, 'YYYY-MM') AS month,
    SUM(total_price) AS total_sales
FROM pizza_orders
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY month;

--DAILY SALES TREND
SELECT
    order_date,
    SUM(total_price) AS total_sales
FROM pizza_orders
GROUP BY order_date
ORDER BY order_date;

--TOP 10 BEST SELLING PIZZAS BY REVENUE
SELECT
    pizza_name,
    SUM(total_price) AS revenue
FROM pizza_orders
GROUP BY pizza_name
ORDER BY revenue DESC
FETCH FIRST 10 ROWS ONLY;

--TOP 10 BEST SELLING PIZZAS BY QUANTITY
SELECT
    pizza_name,
    SUM(quantity) AS total_quantity
FROM pizza_orders
GROUP BY pizza_name
ORDER BY total_quantity DESC
FETCH FIRST 10 ROWS ONLY;

--SALES BY PIZZA CATEGORY (VEG / NON VEG / PREMIUM ETC.)
SELECT
    pizza_category,
    SUM(total_price) AS total_sales
FROM pizza_orders
GROUP BY pizza_category
ORDER BY total_sales DESC;

--SALES BY PIZZA SIZE (SMALL, MEDIUM, LARGE)
SELECT
    pizza_size,
    SUM(total_price) AS total_sales
FROM pizza_orders
GROUP BY pizza_size
ORDER BY total_sales DESC;

--HOURLY ORDER DISTRIBUTION
SELECT
    TO_CHAR(order_datetime, 'HH24') AS hour_of_day,
    COUNT(*) AS order_count
FROM pizza_orders
GROUP BY TO_CHAR(order_datetime, 'HH24')
ORDER BY hour_of_day;

--REVENUE BY DAY OF WEEK
SELECT
    TO_CHAR(order_date, 'DAY') AS day_name,
    SUM(total_price) AS total_sales
FROM pizza_orders
GROUP BY TO_CHAR(order_date, 'DAY')
ORDER BY total_sales DESC;

-- AVERAGE ORDER VALUE (AOV) 
SELECT
    ROUND(AVG(total_price), 2) AS avg_order_value
FROM pizza_orders;
