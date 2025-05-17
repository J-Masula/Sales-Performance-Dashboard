# Sales-Performance-Dashboard
 This is a Power BI project that shows internet sales performance in a clear and visual way. The goal is to help track what products were sold, to which clients, by which salesperson, and how those sales have changed over time.
We also compare actual sales to the **2025 budget** to check how we are performing. The budget is for 2025, and we usually look **2 years back** when we do our sales analysis.

## 📚 Learning Source
This project was inspired by a tutorial I followed while learning Power BI and SQL. I rebuilt the report and data steps on my own and used it to practice real-world analysis techniques.

## 🔧 Data Process
- I used **SQL Server Management Studio (SSMS)** to clean and join sales, customer, product, and budget data.
- I formatted the scripts using an **SQL formatter** to keep them clean and easy to read.
- After cleaning, I exported the results to **Excel**.
- I imported the Excel files into **Power BI** to build the dashboard.

## 📊 What the Dashboard Shows
- **Sales Overview** by **year** and **month**
- **Sales Filters**:
  - Country
  - Product
  - Category
  - Sub-category
- **Top 10 Sales** by:
  - Customer
  - Product
- **Sales by City** – map or chart showing sales location breakdown
- **Sales vs. Budget Comparison**:
  - By **year**
  - By **month**

## 📁 Files in This Project
- [Project.pbix](https://github.com/J-Masula/Sales-Performance-Dashboard/blob/main/Project.pbix) – Power BI report with all visuals and filters  
- [DIM_Calendar.sql](https://github.com/J-Masula/Sales-Performance-Dashboard/blob/main/DIM_Calendar.sql) – SQL script to create and clean the calendar/date dimension  
- [DIM_Customer.sql](https://github.com/J-Masula/Sales-Performance-Dashboard/blob/main/DIM_Customer.sql) – SQL script for customer data  
- [DIM_Products.sql](https://github.com/J-Masula/Sales-Performance-Dashboard/blob/main/DIM_Products.sql) – SQL script for product dimension  
- [Fact_InternetSales.sql](https://github.com/J-Masula/Sales-Performance-Dashboard/blob/main/Fact_InternetSales.sql) – SQL script for sales fact table  

## 🛠 Tools Used
- **SSMS** – for SQL data cleaning
- **SQL formatter** – to keep scripts consistent and clean
- **Excel** – to store cleaned data
- **Power BI** – for building the dashboard

## 🧠 Skills Used
- SQL data cleaning and joins
- Keeping code readable with formatting tools
- Excel data handling
- Power BI dashboard building and visualization
