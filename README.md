# SQL_Retail_Sales_Project

# 🧠 Retail Sales Data Analysis with SQL

This project demonstrates real-world SQL skills for data cleaning, exploration, and business analysis using a sample retail sales dataset. It showcases how to clean messy data, uncover business insights, and answer key analytical questions using SQL queries.

---

## 📁 Project Structure

- **File Name:** `Sql_query_project1.sql`
- **Database Table:** `retail_sale`

### Table Schema

| Column Name      | Data Type | Description                          |
|------------------|-----------|--------------------------------------|
| transactions_id  | INT       | Primary Key                          |
| sale_date        | DATE      | Date of sale                         |
| sale_time        | TIME      | Time of sale                         |
| customer_id      | INT       | Customer identifier                  |
| gender           | VARCHAR   | Gender of the customer               |
| age              | INT       | Age of the customer                  |
| category         | VARCHAR   | Product category                     |
| quantity         | INT       | Units sold                           |
| price_per_unit   | FLOAT     | Unit price                           |
| cogs             | FLOAT     | Cost of goods sold                   |
| total_sale       | FLOAT     | Total revenue from sale              |

---

## 🔍 Project Phases

### 1. 🔧 Data Cleaning
Identified and removed rows with null values in critical fields such as:
- `transactions_id`, `sale_date`, `sale_time`, `customer_id`, `age`, `category`, `quantity`, `price_per_unit`, `cogs`, `total_sale`.

### 2. 📊 Data Exploration
- Total sales and distinct customer count
- Product categories available

### 3. 📈 Business Analysis & Key Insights

| # | Question                                                                                      | Description                                                                                  |
|---|-----------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| 1 | Total number of customers                                                                     | Unique customer count                                                                        |
| 2 | Available product categories                                                                  | Distinct categories                                                                          |
| 3 | Sales made on `2022-11-05`                                                                    | Filter by specific date                                                                      |
| 4 | Sales from ‘Clothing’ category with quantity ≥ 4 in Nov 2022                                  | Filters on category, quantity, and date                                                     |
| 5 | Total sales and order count per category                                                      | Grouped by category                                                                          |
| 6 | Average age of customers who purchased Beauty products                                        | Customer behavior insights                                                                   |
| 7 | Transactions with total sales > 100                                                           | High-value transactions                                                                     |
| 8 | Gender-wise and category-wise transaction counts                                              | Customer segmentation by gender and category                                                |
| 9 | Best selling month in each year based on average sale                                         | Uses `RANK()` and window functions                                                           |
|10 | Top 5 customers based on total sales                                                          | Customer lifetime value                                                                      |
|11 | Number of unique customers per category                                                       | Customer interest per category                                                               |
|12 | Number of orders by time-of-day shift (Morning, Afternoon, Evening)                          | Time-based sales performance                                                                 |

---

## 🛠️ SQL Techniques Used
- Data Cleaning with `DELETE`
- Filtering with `WHERE`, `AND`, `OR`
- Aggregations using `SUM()`, `COUNT()`, `AVG()`
- `GROUP BY`, `ORDER BY`, `LIMIT`
- Date/time handling with `EXTRACT()`, `TO_CHAR()`
- Window functions: `RANK() OVER (PARTITION BY ...)`
- CTE (`WITH`) for shift categorization

---

## 💡 Insights & Business Value

- **Peak Shopping Time:** Most orders happen during Afternoon shifts.
- **Top Customer Segments:** Beauty and Clothing categories attract younger audiences.
- **High-Value Customers:** Identified top 5 contributors to total revenue.
- **Performance Tracking:** Found best performing months using window functions.

---

## 📌 How to Use

1. Create the table `retail_sale` using the provided schema.
2. Import or insert your data.
3. Run each SQL block to replicate the analysis.

---

## 📈 Future Enhancements

- Visualize queries using BI tools like Power BI or Tableau
- Build dashboard with KPIs and filters
- Extend dataset with promotional or store region information

---

## 📚 Author

**Md Al Amin**  
Data Analyst | SQL Enthusiast | AI & Healthcare Researcher  
📧 alamin99.edu@gmail.com
🔗 https://www.linkedin.com/in/md-al-amin01

---

## 📝 License

This project is for learning and demonstration purposes only. Feel free to use or modify it for your own educational projects.

