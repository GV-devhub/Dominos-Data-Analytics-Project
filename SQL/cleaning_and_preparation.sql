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
