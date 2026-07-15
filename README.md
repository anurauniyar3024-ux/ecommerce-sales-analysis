# 📊 End-to-End E-Commerce Sales Analysis

An end-to-end data analytics project built using the Brazilian Olist E-Commerce dataset. This project demonstrates the complete data analysis workflow, from data cleaning and preprocessing to exploratory data analysis (EDA), SQL analysis, business insights, and data visualization.

---

## 📌 Project Overview

The objective of this project is to analyze e-commerce sales data and extract meaningful business insights that can support data-driven decision-making.

The project includes:
- Data cleaning and preprocessing using Python
- Exploratory Data Analysis (EDA)
- SQL-based business analysis using SQLite
- Data visualizations
- Business insights and recommendations
- Git version control and GitHub documentation

---

## 📂 Dataset

**Dataset:** Olist Brazilian E-Commerce Public Dataset

The dataset contains information about:
- Customers
- Orders
- Order Items
- Payments
- Reviews
- Products
- Sellers
- Geolocation
- Product Category Translation

---

## 🛠️ Technologies Used

- Python
- Pandas
- NumPy
- SQLite
- SQL
- Matplotlib
- Seaborn
- Jupyter Notebook
- Git & GitHub

---

## 📁 Project Structure

```text
ecommerce-sales-analysis/
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── notebooks/
│   ├── 00_data_understanding.ipynb
│   ├── 01_data_cleaning.ipynb
│   └── 02_eda.ipynb
│
├── sql/
│   └── analysis.sql
│
├── visuals/
│
├── database/
│
├── load_to_sqlite.py
├── main.py
├── requirements.txt
└── README.md
```

---

## 🔄 Project Workflow

1. Loaded raw datasets
2. Performed data cleaning
3. Converted timestamp columns to datetime
4. Handled missing values
5. Checked duplicate records
6. Saved cleaned datasets
7. Merged datasets
8. Performed Exploratory Data Analysis (EDA)
9. Generated business insights
10. Created visualizations
11. Loaded cleaned data into SQLite
12. Performed SQL analysis

---

## 📊 Business Questions Answered

- What is the total revenue generated?
- How many total orders were placed?
- How many unique customers made purchases?
- What is the average customer review score?
- Which payment method is used the most?
- Which product categories generate the highest sales?
- Which sellers perform the best?
- How do monthly sales change over time?
- Which states place the most orders?
- What is the average delivery time?

---

## 📈 Key Insights

- Revenue and order trends were analyzed over time.
- Customer purchasing behavior was explored.
- Top-performing product categories and sellers were identified.
- Payment preferences were analyzed.
- Delivery performance was evaluated.
- Customer review ratings were examined to measure satisfaction.

---

## 📉 Visualizations

The project includes charts for:

- Monthly Sales Trend
- Top Product Categories
- Payment Method Distribution
- Customer Review Distribution
- Orders by State

---

## 🗄️ SQL Analysis

SQL queries were written to analyze:

- Total Revenue
- Total Orders
- Monthly Sales
- Average Review Score
- Top Product Categories
- Top Sellers
- Payment Methods
- Orders by State
- Average Delivery Time

---

## 🚀 How to Run

Clone the repository

```bash
git clone https://github.com/anurauniyar3024-ux/ecommerce-sales-analysis.git
```

Navigate to the project folder

```bash
cd ecommerce-sales-analysis
```

Install dependencies

```bash
pip install -r requirements.txt
```

Run the SQLite loader

```bash
python load_to_sqlite.py
```

Open the notebooks to explore the analysis or execute the SQL queries using the generated SQLite database.

---

## 🔮 Future Improvements

- Build an interactive Power BI dashboard
- Add predictive sales forecasting
- Automate data updates
- Create an interactive web dashboard using Streamlit

---

## 👩‍💻 Author

**Anushka Rauniyar**

B.Tech Information Technology Student  
Manipal University Jaipur

GitHub: https://github.com/anurauniyar3024-ux

---

⭐ If you found this project useful, feel free to star the repository.