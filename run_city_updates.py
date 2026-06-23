import sqlite3
db=r'c:\Users\Gestaac PC #36\Desktop\Budduan\Day 06\Day06_practice.db'
conn=sqlite3.connect(db)
c=conn.cursor()
# perform updates
c.execute("UPDATE orders SET city = 'Cebu City' WHERE city = 'cebu city'")
c.execute("UPDATE orders SET city = 'Davao City' WHERE city = 'davao city'")
c.execute("UPDATE orders SET city = 'Makati' WHERE city = 'MAKATI'")
c.execute("UPDATE orders SET city = 'Quezon City' WHERE city = 'quezon city'")
conn.commit()
# show distinct cities after update
c.execute('SELECT DISTINCT city FROM orders ORDER BY city')
rows=c.fetchall()
print('Distinct cities after updates:')
for r in rows:
    print('-', r[0])
conn.close()
