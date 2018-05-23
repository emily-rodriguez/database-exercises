USE employees;

SELECT * FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees.employees
WHERE last_name LIKE 'E%';

SELECT * FROM employees.employees
WHERE hire_date LIKE '%199%';

SELECT * FROM employees.employees
WHERE birth_date LIKE '%12-25%';

SELECT * FROM employees.employees
WHERE last_name LIKE '%q%';

SELECT * FROM employees.employees
WHERE (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
AND gender = 'M';

SELECT *
FROM employees.employees
WHERE last_name LIKE '%e'
OR last_name LIKE 'e%';


SELECT * FROM employees.employees
WHERE last_name LIKE '%e'
AND last_name LIKE 'e%';

SELECT *
FROM employees.employees
WHERE birth_date LIKE '%12-25'
AND hire_date LIKE '199%';

SELECT *
FROM employees.employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

DESCRIBE employees.employees;