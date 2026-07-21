# E-commerce Sales Analysis Report

## Project Overview

This project analyzes the Brazilian Olist E-commerce dataset to uncover customer purchasing behavior, sales performance, payment preferences, delivery efficiency, and product trends. The project includes data cleaning, exploratory data analysis (EDA), SQL analysis, and data visualization.

---

## Dataset Information

- Dataset: Olist Brazilian E-commerce Dataset
- Records: Multiple relational tables
- Source: Kaggle
- Analysis Tools:
  - Python
  - Pandas
  - NumPy
  - Matplotlib
  - Seaborn
  - SQLite
  - SQL

---

## Data Cleaning Summary

The following preprocessing steps were performed:

- Removed duplicate records where applicable.
- Handled missing values using suitable techniques.
- Converted date columns into datetime format.
- Verified data consistency across all datasets.
- Saved cleaned datasets into the `data/cleaned` directory.

---

## Exploratory Data Analysis

The cleaned datasets were merged to answer business questions regarding:

- Revenue
- Orders
- Customers
- Reviews
- Sellers
- Products
- Delivery performance
- Regional sales

Several visualizations were created to better understand the business performance.

---

## Key Business Insights

### Revenue

The business generated substantial revenue across the analyzed period with clear monthly variations.

### Customer Behavior

Most customers completed only one purchase, indicating an opportunity to improve customer retention.

### Payment Preferences

Credit Card was the most frequently used payment method.

### Product Performance

Some product categories significantly outperformed others in terms of total sales.

### Delivery Performance

The average delivery time was approximately 12 days.

### Customer Satisfaction

Average review scores remained above 4 stars, indicating generally positive customer experiences.

---

## SQL Analysis

A total of **23 SQL queries** were written to analyze:

- Revenue
- Orders
- Customers
- Product Categories
- Sellers
- Payment Types
- Review Scores
- Delivery Performance
- Customer Retention
- Monthly Revenue Growth

Advanced SQL concepts used include:

- JOIN
- GROUP BY
- Aggregate Functions
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions (LAG)

---

## Visualizations Created

- Monthly Sales Trend
- Revenue Trend
- Top Product Categories
- Orders by State
- Payment Method Distribution
- Review Score Distribution

---

## Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- SQLite
- SQL
- Jupyter Notebook
- Git
- GitHub

---

## Conclusion

The analysis provides valuable business insights into customer behavior, sales performance, delivery efficiency, and product demand. Combining Python, SQL, and visualization techniques demonstrates a complete end-to-end data analytics workflow suitable for business decision-making.

---

## Future Improvements

- Interactive Power BI Dashboard
- Tableau Dashboard
- Predictive Sales Forecasting
- Customer Segmentation using Machine Learning
- Sales Recommendation System