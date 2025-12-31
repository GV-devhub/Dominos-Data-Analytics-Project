-- Remove corrupted column pizza_nan if it exists
DECLARE
    col_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO col_count
    FROM user_tab_cols
    WHERE table_name = 'PIZZA_ORDERS'
      AND column_name = 'PIZZA_NAN';

    IF col_count > 0 THEN
        EXECUTE IMMEDIATE 'ALTER TABLE pizza_orders DROP COLUMN pizza_nan';
    END IF;
END;
/
-- Normalize Small sizes
UPDATE pizza_orders
SET pizza_size = 'Small'
WHERE LOWER(pizza_size) IN ('s', 'small', 'sm');

-- Normalize Medium sizes
UPDATE pizza_orders
SET pizza_size = 'Medium'
WHERE LOWER(pizza_size) IN ('m', 'medium', 'med');

-- Normalize Large sizes
UPDATE pizza_orders
SET pizza_size = 'Large'
WHERE LOWER(pizza_size) IN ('l', 'large', 'lg');

COMMIT;

UPDATE pizza_orders
SET pizza_category = 'Veg'
WHERE LOWER(pizza_category) IN ('veg', 'vegetarian');

UPDATE pizza_orders
SET pizza_category = 'Non-Veg'
WHERE LOWER(pizza_category) IN ('nonveg', 'non-veg', 'meat');

--Fix missing total_price values
UPDATE pizza_orders
SET total_price = quantity * unit_price
WHERE total_price IS NULL;

--Convert order_date + order_time into proper Oracle DATE
ALTER TABLE pizza_orders ADD order_datetime DATE;

UPDATE pizza_orders
SET order_datetime =
    TO_DATE(order_date || ' ' || order_time, 'YYYY-MM-DD HH24:MI:SS');


