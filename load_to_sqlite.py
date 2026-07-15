import sqlite3
import pandas as pd

# Connect to SQLite database
conn = sqlite3.connect("database/ecommerce.db")

# Load cleaned datasets
customers = pd.read_csv("data/cleaned/customers_cleaned.csv")
orders = pd.read_csv("data/cleaned/orders_cleaned.csv")
order_items = pd.read_csv("data/cleaned/order_items_cleaned.csv")
payments = pd.read_csv("data/cleaned/payments_cleaned.csv")
reviews = pd.read_csv("data/cleaned/reviews_cleaned.csv")
products = pd.read_csv("data/cleaned/products_cleaned.csv")
sellers = pd.read_csv("data/cleaned/sellers_cleaned.csv")
geolocation = pd.read_csv("data/cleaned/geolocation_cleaned.csv")
category = pd.read_csv("data/cleaned/category_translation_cleaned.csv")

# Load data into SQLite
customers.to_sql("customers", conn, if_exists="replace", index=False)
orders.to_sql("orders", conn, if_exists="replace", index=False)
order_items.to_sql("order_items", conn, if_exists="replace", index=False)
payments.to_sql("payments", conn, if_exists="replace", index=False)
reviews.to_sql("reviews", conn, if_exists="replace", index=False)
products.to_sql("products", conn, if_exists="replace", index=False)
sellers.to_sql("sellers", conn, if_exists="replace", index=False)
geolocation.to_sql("geolocation", conn, if_exists="replace", index=False)
category.to_sql("category_translation", conn, if_exists="replace", index=False)

conn.close()

print("✅ All datasets loaded into SQLite successfully!")