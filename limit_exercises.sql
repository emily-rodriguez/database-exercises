SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
LIMIT 10;


SELECT *
FROM employees
WHERE birth_date LIKE '%12-25'
      AND hire_date LIKE '199%'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25'
      AND hire_date LIKE '199%'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5
OFFSET 45;

SELECT concat(first_name, ' ', last_name) AS 'fullName'
FROM employees LIMIT 10;

