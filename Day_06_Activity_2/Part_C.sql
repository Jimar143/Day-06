-- 15. SELECT DISTINCT city FROM orders; — Are all cities properly cased now?
--yes
SELECT DISTINCT city FROM orders;


-- 16. SELECT DISTINCT category FROM orders; — Are all categories standardized?
--yes
SELECT DISTINCT category FROM orders;

-- 17. SELECT COUNT(*) FROM orders WHERE email IS NULL; — Should be 0.
--yes
SELECT COUNT(*) FROM orders WHERE email IS NULL;

-- 18. SELECT COUNT(*) FROM orders; — How many rows remain after deleting junk? 
--29
SELECT COUNT(*) FROM orders;