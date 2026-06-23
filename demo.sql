SELECT * FROM payroll;

SELECT DISTINCT department FROM payroll;

UPDATE payroll SET department = upper(department);

SELECT '[' ||employee_name|| ']' AS NAMECHECK FROM payroll;

UPDATE payroll SET employee_name = TRIM(employee_name);

UPDATE payroll SET status = upper(status);

SELECT * FROM payroll WHERE email IS NULL;

SELECT employee_name, COALESCE(email, 'No Email Provided') AS email FROM payroll;



