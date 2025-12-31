CREATE TABLE pizza_orders (
    pizza_id INT,
    order_id INT,
    quantity INT,
    order_date DATE,
    order_time TIME,
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2),
    pizza_size VARCHAR(20),
    pizza_cate VARCHAR(50),
    pizza_ingr TEXT,
    pizza_name VARCHAR(100)
);
