USE employees;

SELECT concat(emp_no, ' - ', last_name, ', ', first_name) full_name, birth_date DOB
FROM employees
LIMIT 10;

