--Standardize all city names to proper case (e.g., 'cebu city' → 'Cebu City'). Write one UPDATE per city that needs fixing.
UPDATE orders SET city = 'Cebu City' WHERE city = 'cebu city';
UPDATE orders SET city = 'Davao City' WHERE city = 'davao city';
UPDATE orders SET city = 'Makati' WHERE city = 'MAKATI';
UPDATE orders SET city = 'Quezon City' WHERE city = 'quezon city';
UPDATE orders SET city = 'Cagayan De Oro' WHERE city = 'Cagayan de oro';

--Standardize all category values (e.g., 'accessories' → 'Accessories'). 
UPDATE orders SET category = 'Accessories' WHERE category = 'ACCESSORIES';
UPDATE orders SET category = 'Accessories' WHERE category = 'accessories';
UPDATE orders SET category = 'Electronics' WHERE category = 'electronics';
UPDATE orders SET category = 'Storage' WHERE category = 'storage';

--Standardize all status values (e.g., 'completed' → 'Completed').
UPDATE orders SET status = 'Completed' WHERE status IN ('COMPLETED','completed');
UPDATE orders SET status = 'Cancelled' WHERE LOWER(status) = 'cancelled';
UPDATE orders SET status = 'Pending' WHERE LOWER(status) = 'pending';

-- TRIM all customer_name values to remove leading/trailing spaces
UPDATE orders SET customer_name = TRIM(customer_name);

-- Delete the test/junk data row.
DELETE FROM orders WHERE order_id = 26;

-- Handle NULL emails: UPDATE them to placeholder
UPDATE orders SET email = 'not.provided@placeholder.com' WHERE email IS NULL;