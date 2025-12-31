------------------------------------------------------------
-- RBAC SQL Examples for Domino’s Pizza Analytics (Oracle)
------------------------------------------------------------

-- 1. Create Roles
CREATE ROLE store_manager;
CREATE ROLE regional_manager;
CREATE ROLE marketing_analyst;
CREATE ROLE executive;
CREATE ROLE data_analyst;
CREATE ROLE security_officer;

------------------------------------------------------------
-- 2. Grant Permissions to Views
------------------------------------------------------------

-- Store Manager (store-level filtering would be applied via RLS in real systems)
GRANT SELECT ON vw_daily_sales TO store_manager;
GRANT SELECT ON vw_pizza_performance TO store_manager;

-- Regional Manager
GRANT SELECT ON vw_daily_sales TO regional_manager;
GRANT SELECT ON vw_monthly_sales TO regional_manager;

-- Marketing Analyst
GRANT SELECT ON vw_pizza_performance TO marketing_analyst;
GRANT SELECT ON vw_hourly_orders TO marketing_analyst;

-- Executive
GRANT SELECT ON vw_monthly_sales TO executive;
GRANT SELECT ON vw_daily_sales TO executive;

-- Data Analyst (full access in non-production)
GRANT SELECT ON pizza_orders TO data_analyst;
GRANT SELECT ON vw_daily_sales TO data_analyst;
GRANT SELECT ON vw_monthly_sales TO data_analyst;
GRANT SELECT ON vw_pizza_performance TO data_analyst;
GRANT SELECT ON vw_hourly_orders TO data_analyst;

------------------------------------------------------------
-- 3. Security Officer (manages roles)
------------------------------------------------------------
GRANT CREATE ROLE TO security_officer;
GRANT GRANT ANY PRIVILEGE TO security_officer;
GRANT GRANT ANY ROLE TO security_officer;

------------------------------------------------------------
-- 4. Assign Users to Roles------------------------------------------------------------
-- RBAC SQL Examples for Domino’s Pizza Analytics (Oracle)
------------------------------------------------------------

-- 1. Create Roles
CREATE ROLE store_manager;
CREATE ROLE regional_manager;
CREATE ROLE marketing_analyst;
CREATE ROLE executive;
CREATE ROLE data_analyst;
CREATE ROLE security_officer;

------------------------------------------------------------
-- 2. Grant Permissions to Views
------------------------------------------------------------

-- Store Manager (store-level filtering would be applied via RLS in real systems)
GRANT SELECT ON vw_daily_sales TO store_manager;
GRANT SELECT ON vw_pizza_performance TO store_manager;

-- Regional Manager
GRANT SELECT ON vw_daily_sales TO regional_manager;
GRANT SELECT ON vw_monthly_sales TO regional_manager;

-- Marketing Analyst
GRANT SELECT ON vw_pizza_performance TO marketing_analyst;
GRANT SELECT ON vw_hourly_orders TO marketing_analyst;

-- Executive
GRANT SELECT ON vw_monthly_sales TO executive;
GRANT SELECT ON vw_daily_sales TO executive;

-- Data Analyst (full access in non-production)
GRANT SELECT ON pizza_orders TO data_analyst;
GRANT SELECT ON vw_daily_sales TO data_analyst;
GRANT SELECT ON vw_monthly_sales TO data_analyst;
GRANT SELECT ON vw_pizza_performance TO data_analyst;
GRANT SELECT ON vw_hourly_orders TO data_analyst;

------------------------------------------------------------
-- 3. Security Officer (manages roles)
------------------------------------------------------------
GRANT CREATE ROLE TO security_officer;
GRANT GRANT ANY PRIVILEGE TO security_officer;
GRANT GRANT ANY ROLE TO security_officer;

------------------------------------------------------------
-- 4. Assign Users to Roles (with sample user names)
------------------------------------------------------------
-- GRANT store_manager TO user_john;
-- GRANT marketing_analyst TO user_sarah;
-- GRANT executive TO user_ceo;

------------------------------------------------------------
-- End of RBAC SQL
------------------------------------------------------------

------------------------------------------------------------
-- GRANT store_manager TO user_john;
-- GRANT marketing_analyst TO user_sarah;
-- GRANT executive TO user_ceo;

------------------------------------------------------------
-- End of RBAC SQL
------------------------------------------------------------
