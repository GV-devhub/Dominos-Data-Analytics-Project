# Data Model for Domino’s Pizza Analytics Project

This document describes the conceptual and logical data model used for SQL analysis and dashboard creation.

---

## 1. Overview

The dataset represents pizza orders placed at a Domino’s-style restaurant. Each row corresponds to a pizza item within an order (line-level granularity).

---

## 2. Entities & Attributes

### **Table: pizza_orders**

| Column Name   | Description |
|---------------|-------------|
| `pizza_id`    | Unique ID for each pizza item |
| `order_id`    | Unique ID for each order |
| `pizza_name_id`| Name ID of the pizza |
| `quantity`    | Number of units ordered |
| `order_date`  | Date of the order |
| `order_time`  | Time of the order (text format) |
| `unit_price`  | Price per pizza |
| `total_price` | Total price for the line item |
| `pizza_size`  | Size of the pizza (Small, Medium, Large) |
| `pizza_category`  | category (Veg, Non-Veg, Premium, etc.) |
| `pizza_ingredients`  | Ingredients used |
| `pizza_name`  | Name of the pizza |

---

## 3. Granularity

Each row represents:

**One pizza item within an order**  
(e.g., Order #1001 may have 3 rows if the customer ordered 3 different pizzas).

---

## 4. Derived Fields

### `order_datetime` (optional)
Created by combining `order_date` and `order_time` for time-based analysis.

---

## 5. Data Relationships

Although the dataset is a single table, conceptually it represents:

- **Orders** (order_id)
- **Order Items** (pizza_id + quantity)
- **Menu Items** (pizza_name, pizza_size, pizza_category)
- **Pricing** (unit_price, total_price)

This structure supports:

- Sales analysis  
- Product performance  
- Time-based trends  
- category-level insights  

---

## 6. Data Quality Considerations

- `pizza_nan` column removed during cleaning.
- Standardization applied to:
  - pizza_size
  - pizza_category
- Missing `total_price` recalculated where needed.
- Time values normalized for hourly analysis.

---

This data model forms the foundation for SQL queries, KPI views, and the Excel dashboard included in this project.
