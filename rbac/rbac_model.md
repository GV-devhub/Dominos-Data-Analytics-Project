# RBAC Model – Domino’s Pizza Analytics Project

This document defines the Role-Based Access Control (RBAC) model for the analytics environment. The goal is to ensure secure, least-privilege access to data and reports.

---

## 1. Roles Overview

### **1. Store Manager**
- Access to store-level sales data
- Can view daily and monthly KPIs
- Cannot view other stores’ data

### **2. Regional Manager**
- Access to all stores within their region
- Can compare store performance
- Cannot view sensitive customer-level data (if present)

### **3. Marketing Analyst**
- Access to product performance, category trends, and time-based patterns
- No access to store-level operational data unless required

### **4. Executive**
- Access to high-level KPIs and dashboards
- No access to detailed transactional data

### **5. Data Analyst / BI Developer**
- Full access to all tables and views in a non-production environment
- Responsible for building dashboards and SQL logic

### **6. Security Officer**
- Manages roles, permissions, and audits
- Ensures compliance with least-privilege principles

---

## 2. Permissions Matrix

| Role              | Data Object               | Permission |
|-------------------|---------------------------|------------|
| Store Manager     | `vw_daily_sales`          | SELECT (filtered by store) |
| Store Manager     | `vw_pizza_performance`    | SELECT (store only) |
| Regional Manager  | `vw_daily_sales`          | SELECT (region only) |
| Regional Manager  | `vw_monthly_sales`        | SELECT |
| Marketing Analyst | `vw_pizza_performance`    | SELECT |
| Marketing Analyst | `vw_hourly_orders`        | SELECT |
| Executive         | `vw_monthly_sales`        | SELECT |
| Executive         | `vw_daily_sales`          | SELECT |
| Data Analyst      | All base tables           | SELECT |
| Security Officer  | All roles & grants        | ADMIN |

---

## 3. Security Principles Applied

- **Least Privilege:** Each role receives only the access required.
- **Separation of Duties:** Analysts build data; managers consume it.
- **Data Minimization:** Executives see KPIs, not raw data.
- **Scalability:** New roles can be added easily.
- **Auditability:** Permissions are granted through SQL scripts.

---

This RBAC model demonstrates cybersecurity awareness and aligns with real-world analytics governance.
