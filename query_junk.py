import sqlite3
conn = sqlite3.connect(r'c:\Users\Gestaac PC #36\Desktop\Budduan\Day 06\Day06_practice.db')
cursor = conn.cursor()
cursor.execute("SELECT order_id, customer_name, city, category, status FROM orders WHERE city='test' OR category='test' OR status='test'")
rows = cursor.fetchall()
for row in rows:
    print(f'order_id: {row[0]}, customer_name: {row[1]}, city: {row[2]}, category: {row[3]}, status: {row[4]}')
conn.close()
