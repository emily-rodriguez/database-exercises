SELECT concat_ws(' ', first_name, last_name) AS FullName
FROM employees
WHERE first_name LIKE 'e%e'
      AND last_name LIKE 'e%e'
ORDER BY emp_no DESC;

SELECT datediff(curdate(), hire_date) AS 'days',
  (datediff(curdate(), hire_date) / 365.2422) AS 'years'
FROM employees
WHERE birth_date LIKE '%12-25'
      AND hire_date LIKE '199%';


DESCRIBE employees;