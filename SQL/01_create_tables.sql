-- Create table
CREATE TABLE pizza_orders (
    pizza_id        NUMBER PRIMARY KEY,
    order_id        NUMBER,
    pizza_name_id  VARCHAR2(100),
    quantity        NUMBER,
    order_date      DATE,
    order_time      VARCHAR2(20),
    unit_price      NUMBER(10,2),
    total_price     NUMBER(10,2),
    pizza_size      VARCHAR2(20),
    pizza_category      VARCHAR2(50),
    pizza_ingredients      VARCHAR2(500),
    pizza_name      VARCHAR2(100)
);
