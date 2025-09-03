# 📊 MySQL Sales Analysis Project with Power BI

## 📌 Project Overview
This project demonstrates the creation of a relational database for sales analysis using MySQL and visualizing the results with Power BI. The database schema enforces primary and foreign key constraints for data integrity, and the Power BI dashboard provides actionable insights into sales performance.

---

## 🗂 Files in this Repository
- Project.sql  
  Contains SQL queries for:
  - Creating and modifying tables (`regions`, `products`, `customers`, `sales_orders`, `budgets_2017`)
  - Adding Primary Keys and **Foreign Keys
  - Normalizing data with `product_id` and updating references
- SQL Dataset.xlsx  
  Includes the raw dataset for all tables.
- MySQL Project.pbix
  A Power BI file with an interactive dashboard connected to the MySQL database.

---

## 🏗 Database Schema & Relationships
The database contains the following tables:
- regions – Stores region details
- products – Contains product information
- customers – Customer details
- sales_orders – Tracks sales transactions
- budgets_2017 – Holds budget data for 2017

# 🔑 Keys & Constraints
- Primary Keys
  - `regions` → `Index`
  - `products` → `Index`
  - `customers` → `Customer Index`
  - `sales_orders` → `Ordernumber`
  - `budgets_2017` → `Product Name`

- # Foreign Keys
  - `sales_orders.Delivery Region Index` → `regions.Index`
  - `sales_orders.Customer Name Index` → `customers.Customer Index`
  - `sales_orders.Product Description Index` → `products.Index`
  - `budgets_2017.Product Name` → `products.Product Name`

---

## 🔍 Key Features
- Relational Database Design with normalization
- Referential Integrity using Primary & Foreign Keys
- Power BI Dashboard for:
  - Sales trends by region
  - Customer and product performance
  - Budget vs Actual comparison

---

## ⚙️ How to Run This Project
1. Set up MySQL Database
   - Create a new database: `CREATE DATABASE final_project;`
   - Run the queries in `Project.sql` to create tables and constraints.
   - Load data from `SQL Dataset.xlsx` into the corresponding tables.

2. **Connect Power BI**
   - Open `MySQL Project.pbix` in Power BI Desktop.
   - Update the MySQL connection string to your database credentials.
   - Refresh the data to view the dashboard.

---

## 🛠 Tools & Technologies
- MySQL – Database design and management
- Power BI – Data visualization
- Excel – Data source for initial import

---

## 📊 Dashboard Preview
https://github.com/DataByAarti/Sales-Performance-Dashboard/blob/main/Sales%20Peroformance%20Dashboard.png

