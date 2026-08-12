import sqlite3


DATABASE = 'tickets.db'
conn = sqlite3.connect('tickets.db')

with open('schema.sql', 'r') as f:
    sql_schema = f.read()

conn.executescript(sql_schema)

conn.commit()
conn.close()