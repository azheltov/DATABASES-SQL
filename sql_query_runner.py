"""
sql_query_runner.py
Author: AZ

Reads a SQL query from file, executes it on a SQLite database,
prints the result, and exports it to report.csv.
"""

import sqlite3
import pandas as pd

# Connect to your SQLite database (must be in same folder)
conn = sqlite3.connect("database.db")

# Load SQL from file
with open("queries/top_customers.sql", "r") as file:
    query = file.read()

# Run query and load into DataFrame
df = pd.read_sql_query(query, conn)

# Output
print("🔍 Query Results:")
print(df)

# Export to CSV
df.to_csv("report.csv", index=False)

conn.close()
