use employees;

SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager as dm
  ON dm.dept_no = departments.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date LIKE '9999%'
ORDER BY dept_name;

SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager as dm
  ON dm.dept_no = departments.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date LIKE '9999%'
  AND e.gender = 'F'
ORDER BY dept_name;

SELECT t.title AS 'Title', COUNT(t.emp_no) AS 'Count'
FROM titles t
JOIN dept_emp emp
  ON t.emp_no = emp.emp_no
JOIN departments de
  ON de.dept_no = emp.dept_no
WHERE de.dept_name LIKE 'Customer%'
  AND t.to_date >= curdate()
  AND emp.to_date >= curdate()
GROUP BY(t.title);

SELECT dep.dept_name AS 'Department Name',
  CONCAT(emp.first_name, ' ', emp.last_name) AS 'Name',
  s.salary AS 'Salary'
FROM departments dep
JOIN dept_emp de ON de.dept_no = dep.dept_no
JOIN employees emp ON emp.emp_no = de.emp_no
JOIN salaries s ON emp.emp_no = s.emp_no
JOIN dept_manager dm ON dm.emp_no = s.emp_no
WHERE dm.to_date LIKE '9999%'
AND s.to_date >= curdate()
ORDER BY dep.dept_name;

SELECT CONCAT_WS(' ',emp.first_name,emp.last_name) AS 'Employee Name',
  d.dept_name AS 'Department Name',
  CONCAT_WS(' ',mgmt.first_name,mgmt.last_name) AS 'Manager Name'
FROM employees emp
JOIN dept_emp de ON emp.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
JOIN dept_manager manager ON d.dept_no = manager.dept_no
JOIN employees mgmt ON manager.emp_no = mgmt.emp_no
WHERE de.to_date >= curdate()
AND manager.to_date >= curdate()
ORDER BY d.dept_name;

SELECT AVG(s.salary), emp.gender FROM salaries s
JOIN employees emp ON s.emp_no = emp.emp_no
WHERE s.to_date > curdate()
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





