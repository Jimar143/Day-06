import sqlite3

db=r'c:\Users\Gestaac PC #36\Desktop\Budduan\Day 06\Day06_practice.db'
conn=sqlite3.connect(db)
c=conn.cursor()
# Status updates
c.execute("UPDATE orders SET status = 'Completed' WHERE status IN ('COMPLETED','completed')")
c.execute("UPDATE orders SET status = 'Cancelled' WHERE LOWER(status) = 'cancelled'")
c.execute("UPDATE orders SET status = 'Pending' WHERE LOWER(status) = 'pending'")
# Trim customer_name
c.execute("UPDATE orders SET customer_name = TRIM(customer_name)")
# Delete test row
c.execute("DELETE FROM orders WHERE order_id = 26")
# Update NULL emails
c.execute("UPDATE orders SET email = 'not.provided@placeholder.com' WHERE email IS NULL")
conn.commit()
# Verification
c.execute('SELECT DISTINCT status FROM orders ORDER BY status')
print('Distinct statuses:')
for r in c.fetchall():
    print('-', r[0])
c.execute("SELECT COUNT(*) FROM orders WHERE email IS NULL")
print('\nNULL email count:', c.fetchone()[0])
c.execute("SELECT order_id FROM orders WHERE city='test' OR category='test' OR status='test'")
rows=c.fetchall()
print('\nRemaining test rows:', rows)
conn.close()
