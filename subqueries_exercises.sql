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

SELECT AVG(salary), emp.gender FROM salaries
WHERE s.to_date > curdate() AND
GROUP BY emp.gender;

SELECT AVG(s.salary), emp.gender FROM salaries s
  JOIN employees emp ON s.emp_no = emp.emp_no
GROUP BY emp.gender;

SELECT AVG(s.salary), d.dept_name, emp.gender
FROM salaries s
  JOIN titles t ON s.emp_no = t.emp_no
  JOIN employees emp ON s.emp_no = emp.emp_no
  JOIN dept_manager manager ON emp.emp_no = manager.emp_no
  JOIN departments d ON manager.dept_no = d.dept_no
WHERE s.to_date > curdate()
GROUP BY d.dept_name, emp.gender;

SELECT AVG(s.salary), d.dept_name, emp.gender
FROM salaries s
  JOIN titles t ON s.emp_no = t.emp_no
  JOIN employees emp ON s.emp_no = emp.emp_no
  JOIN dept_manager manager ON emp.emp_no = manager.emp_no
  JOIN departments d ON manager.dept_no = d.dept_no
GROUP BY d.dept_name, emp.gender;

SELECT e.first_name, e.last_name, dm.dept_no FROM dept_manager dm
JOIN employees e ON dm.emp_no = e.emp_no