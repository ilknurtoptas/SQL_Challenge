--DATA ANALYSIS


--List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no,employees.first_name,employees.last_name,employees.sex,salaries.salary
FROM employees
JOIN salaries ON salaries.emp_no = employees.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date LIKE '%/1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dept_manager.dept_no,dept_manager.emp_no,departments.dept_name,employees.first_name,employees.last_name
FROM dept_manager
JOIN departments ON departments.dept_no = dept_manager.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT dept_emp.dept_no,employees.emp_no,employees.first_name,employees.last_name,departments.dept_name
FROM dept_emp
JOIN departments ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name,last_name,sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT employees.emp_no,employees.first_name,employees.last_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
WHERE dept_no = 'd007'

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,employees.first_name,employees.last_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
WHERE dept_no IN ('d007','d005');

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;










