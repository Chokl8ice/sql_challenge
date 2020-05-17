SELECT Employees.emp_no, Employees.first_name, Employees.last_name, Employees.sex, Salaries.salary
FROM "Employees"
INNER JOIN "Salaries" ON Salaries.emp_no = Employees.emp_no; 

SELECT Departments.dept_name, Employees.first_name, Employees.last_name, Dept_manager.dept_no, Dept_manager.emp_no
FROM "Dept_manager"
INNER JOIN "Departments" ON
Dept_manager.dept_no = Departments.dept_no
INNER JOIN "Employees" ON
Dept_manager.emp_no = Employees.emp_no

SELECT Departments.dept_name, Employees.emp_no, Employees.first_name, Employees.last_name
FROM "Employees"
INNER JOIN "Dept_manager" ON
Employees.emp_no = Dept_manager.emp_no
INNER JOIN "Departments" ON
Dept_manager.dept_no = Departments.dept_no

SELECT Employees.first_name, Employees.last_name, Emplopyees.sex
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name = 'B%'

SELECT Employees.first_name, Emplopyees.last_name, Employees.emp_no, Departments.dept_name, Depart_manager.dept_no
FROM "Employees"
WHERE dept_name = 'Sales Department'
INNER JOIN "Dept_manager" ON
Departments.dept_no = Dept_manager.dept_no
INNER JOIN "Employees" ON
Dept_manager.emp_no = Employees.emp_no

SELECT Employees.first_name, Emplopyees.last_name, Employees.emp_no, Departments.dept_name, Depart_manager.dept_no
FROM "Employees"
WHERE dept_name = 'Sales Department' OR dept_name = 'Development Department'
INNER JOIN "Dept_manager" ON
Departments.dept_no = Dept_manager.dept_no
INNER JOIN "Employees" ON
Dept_manager.emp_no = Employees.emp_no

SELECT last_name, COUNT(last_name) from "Employees"
GROUP BY last_name
ORDER BY COUNT(last_name) desc;