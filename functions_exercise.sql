SELECT concat(first_name, ' ', last_name) AS FullName
FROM employees
WHERE last_name LIKE '%e'
      AND last_name LIKE 'e%'
ORDER BY emp_no DESC;

SELECT datediff(now(), hire_date)
FROM employees
WHERE birth_date LIKE '%12-25'
      AND hire_date LIKE '199%';


DESCRIBE employees;