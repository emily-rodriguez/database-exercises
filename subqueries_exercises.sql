use employees;

SELECT CONCAT_WS(' ',first_name,last_name)
FROM employees
WHERE hire_date = (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

SELECT title FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod'
);

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > curdate()
)
AND gender = 'F';

SELECT dept_name
FROM departments
WHERE dept_no IN (
  SELECT dept_no
  FROM dept_manager
  WHERE to_date > curdate()
  AND emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'
)
);

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  from salaries
  WHERE salary = (
    SELECT MAX(salary)
    FROM salaries
  )
);