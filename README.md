# Domino's Pizza Sales Analytics Portfolio Project

This project is an end-to-end **Domino's-style pizza sales analytics** case study designed to showcase my skills in:

- SQL (data modeling, cleaning, and analytics)
- Excel dashboards and KPI reporting
- Cybersecurity concepts with Role-Based Access Control (RBAC)
- Agile ways of working (user stories, backlog, Kanban)
- Business analysis (requirements, business questions, and insights)

---

## 1. Project scenario

Role as a data analyst supporting a Domino's-style pizza chain. The business wants to understand:

- How are sales trending over time and across stores?
- Which pizzas drive the most revenue?
- When are customers ordering the most?
- How should access to reports be restricted based on roles?

---

## 2. Data

The dataset is sourced from Kaggle (pizza sales dataset) and stored in:

- `data/raw/` – original CSV files from Kaggle
- `data/processed/` – cleaned / aggregated data used for reporting

Key tables (conceptual):

- `orders`: one row per order (date, time, store, customer)
- `order_details`: items in each order (pizza, quantity, price)
- `pizza`: pizza menu details (name, category, price)
- `store`: store locations

---

## 3. SQL analytics

All SQL scripts are in the `sql/` folder:

- `01_create_tables.sql` – creates the core tables.
- `02_cleaning_and_preparation.sql` – basic data cleaning and standardization.
- `03_exploratory_analysis.sql` – exploratory analysis queries:
  - Sales by month
  - Top pizzas by revenue
  - Orders by hour of day
- `04_kpi_views.sql` – views to support reporting (e.g., `vw_daily_store_sales`).

These queries answer key business questions defined in `docs/business_questions.md`.

---

## 4. Excel dashboard

The Excel dashboard is in `excel/Dominos_Sales_Dashboard.xlsx`.

It includes:

- KPIs: total revenue, number of orders, average order value.
- Visuals:
  - Monthly sales trend
  - Sales by store
  - Top pizzas by revenue
  - Orders by hour
- Interactive filters: by month, store, and order type.

A description of the dashboard and sample insights is in `docs/excel_dashboard.md`.

---

## 5. Cybersecurity and RBAC design

The `rbac/` folder contains:

- `rbac_model.md` – role-based access control model for the analytics environment.
  - Roles: Store Manager, Regional Manager, Marketing Analyst, Executive, Data Analyst.
  - Permissions mapped to views and data objects.
- `rbac_sql_examples.sql` – example SQL snippets for role creation and granting permissions.

This demonstrates how security and least-privilege access would be applied to analytics.

---

## 6. Agile and business analysis

The `agile/` and `docs/` folders include:

- `agile/user_stories.md` – user stories for different stakeholders.
- `agile/process.md` – brief description of the Agile approach used for this project.
- `docs/business_questions.md` – business questions driving the analysis.
- `docs/data_model.md` – conceptual data model used for the SQL design.

Together, these show how business needs were translated into technical work.

---

## 7. How to explore this repo

1. Start with `docs/business_questions.md` to understand the business context.
2. Review `docs/data_model.md` to see the data structure.
3. Go through `sql/03_exploratory_analysis.sql` to see the core analysis.
4. Open `excel/Dominos_Sales_Dashboard.xlsx` to view the final dashboard.
5. Check `rbac/rbac_model.md` and `agile/user_stories.md` to see security and ways-of-working design.

---
