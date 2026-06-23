-- How many rows are in the orders table?
SELECT * FROM orders;
-- answer: 30


-- Use SELECT DISTINCT city to find all unique city values. List them. Which ones are inconsistent?
SELECT DISTINCT city FROM orders ORDER BY city;
-- Unique cities:
-- 1. Cagayan de Oro
-- 2. Cebu City
-- 3. Davao City
-- 4. Iloilo City
-- 5. MAKATI
-- 6. Makati
-- 7. Manila
-- 8. Pasig
-- 9. Quezon City
-- 10. cebu city
-- 11. davao city
-- 12. quezon city
-- 13. test

-- INCONSISTENCIES:
-- - Case sensitivity issues: MAKATI (all caps) vs Makati (title case)
-- - Case sensitivity issues: Cebu City vs cebu city
-- - Case sensitivity issues: Davao City vs davao city
-- - Case sensitivity issues: Quezon City vs quezon city
-- - Junk/test data: "test" appears to be test data


-- Use SELECT DISTINCT category to find all unique category values. Which ones are inconsistent? (3 pts)
SELECT DISTINCT category FROM orders ORDER BY category;
-- Unique categories:
-- 1. ACCESSORIES
-- 2. Accessories
-- 3. Electronics
-- 4. Storage
-- 5. accessories
-- 6. electronics
-- 7. storage
-- 8. test

-- INCONSISTENCIES:
--Case sensitivity issues: ACCESSORIES (all caps) vs Accessories (title case) vs accessories (lowercase)
--Case sensitivity issues: Electronics vs electronics
--Case sensitivity issues: Storage vs storage
--Junk/test data: "test" appears to be test data



--Use SELECT DISTINCT status to find inconsistent status values.
SELECT DISTINCT status FROM orders ORDER BY status;
-- Unique status values (6 total):
-- 1. COMPLETED
-- 2. Cancelled
-- 3. Completed
-- 4. Pending
-- 5. completed
-- 6. test
--
-- INCONSISTENCIES:
--Case sensitivity issues: COMPLETED (all caps) vs Completed (title case) vs completed (lowercase)
--Mixed capitalization: Cancelled vs other status values
--Junk/test data: "test" appears to be test data

--Find all rows where email IS NULL. How many are there?
SELECT * FROM orders WHERE email IS NULL;
-- ANSWER: 3 rows have NULL email
-- Rows:
--order_id: 5, customer_name: Sofia Mendoza
--order_id: 19, customer_name: Nicole Ramos
--order_id: 25, customer_name: Sofia Mendoza

--Find the test/junk data row. What is its order_id?
SELECT * FROM orders WHERE city='test' OR category='test' OR status='test';
-- ANSWER: order_id is 26
-- Details: customer_name: test entry, city: test, category: test, status: test