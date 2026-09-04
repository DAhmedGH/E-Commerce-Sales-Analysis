# E-Commerce Sales Performance Pipeline

## Project Overview
This project is an end-to-end data analytics pipeline designed to evaluate e-commerce sales performance. I extracted raw data, cleaned and transformed it using Python, loaded it into a local SQLite database for querying, and visualized the findings in an interactive Tableau dashboard.

**[View the Interactive Tableau Dashboard Here](https://public.tableau.com/app/profile/danieal.ahmed/viz/ExecutiveSalesPerformanceDashboard_17884859675930/ExecutiveSalesPerformanceDashboard)**

## Tools Used
* **Python (Pandas):** Data cleaning, handling missing values, and formatting dates.
* **SQL (SQLite):** Relational database creation and data aggregation.
* **Tableau:** Data visualization and dashboard design.

## The Process
1. **Data Cleaning:** Used Pandas in a Jupyter Notebook to drop nulls, fix mixed datetime formats, and extract the `Order Year` from raw sales data.
2. **Data Storage & Querying:** Imported the cleaned CSV into a SQLite database. Wrote SQL queries using `GROUP BY` and aggregate functions to identify the top-grossing cities.
3. **Data Visualization:** Built an executive-level dashboard in Tableau to track yearly sales trends and compare revenue across product categories.
