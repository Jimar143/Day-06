SELECT * FROM payroll;

SELECT DISTINCT department FROM payroll;

UPDATE payroll SET department = upper(department);

SELECT '[' ||employee_name|| ']' AS NAMECHECK FROM payroll;

UPDATE payroll SET employee_name = TRIM(employee_name);

UPDATE payroll SET status = upper(status);

SELECT * FROM payroll WHERE email IS NULL;

SELECT employee_name, COALESCE(email, 'No Email Provided') AS email FROM payroll;

SELECT * FROM payroll WHERE employee_name LIKE 'test%';

DELETE FROM payroll WHERE employee_name = 'test entry';

SELECT employee_name, 
COUNT(*) AS number_of_times
FROM payroll
GROUP BY employee_name
HAVING COUNT(*) > 1;

-- DELETE FROM payroll
-- WHERE employee_name IN (
--     SELECT employee_name
--     FROM payroll
--     GROUP BY employee_name
--     HAVING COUNT(*) > 1
-- );

DELETE FROM payroll
WHERE record_id NOT IN (
    SELECT MIN(record_id)
    FROM payroll
    GROUP BY employee_name
);


