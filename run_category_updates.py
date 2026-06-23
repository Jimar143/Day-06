import sqlite3

db=r'c:\Users\Gestaac PC #36\Desktop\Budduan\Day 06\Day06_practice.db'
conn=sqlite3.connect(db)
c=conn.cursor()
# perform category updates
c.execute("UPDATE orders SET category = 'Accessories' WHERE category = 'ACCESSORIES'")
c.execute("UPDATE orders SET category = 'Accessories' WHERE category = 'accessories'")
c.execute("UPDATE orders SET category = 'Electronics' WHERE category = 'electronics'")
c.execute("UPDATE orders SET category = 'Storage' WHERE category = 'storage'")
conn.commit()
# show distinct categories after update
c.execute('SELECT DISTINCT category FROM orders ORDER BY category')
rows=c.fetchall()
print('Distinct categories after updates:')
for r in rows:
    print('-', r[0])
conn.close()
