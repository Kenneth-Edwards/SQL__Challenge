---1.	List the following details of each employee: employee number, last name,
--- first name, gender, and salary.

select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary 
from employees 
inner join salaries on salaries.emp_no = employees.emp_no


---2. List employees who were hired in 1986

select count(employees.emp_no) from employees
where employees.hire_date >= '01/01/1986' and employees.hire_date <= '12-31-1986'

select employees.emp_no, employees.last_name, employees.first_name, employees.hire_date
from employees 
where employees.hire_date >= '01/01/1986' and employees.hire_date <= '12-31-1986'
order by employees.hire_date desc

---3. List the manager of each department with the following information: department 
---number, department name, the manager's employee number, last name, first name, and 
---start and end employment dates.


Select 	dept_manager.dept_no as "Dept_Number",
		dept_manager.to_date as "Dept_Mgr_Last_Date",
		dept_manager.emp_no as "Dept_Mgr_Employee_Number", 
		employees.last_name as "Dept_Mgr_Last_Name",
		employees.first_name as "Dept_Mgr_First_Name",
		employees.hire_date as "Dept_Mgr_Hire_Date",
		departments.dept_name as "Dept_Name"
from dept_manager
inner join employees on employees.emp_no = dept_manager.emp_no
inner join departments on departments.dept_no = dept_manager.dept_no

---4. List the department of each employee with the following information: 
--- employee number, last name, first name, and department name.

--- Had to add foreign key relationship between table "dept_emp" and table "employees"
Alter Table dept_emp
Add constraint add_FK_for_emp_no
Foreign Key (emp_no)
References employees (emp_no)


Select 	employees.emp_no as "Employee_Number",
		employees.last_name as "Employee_Last_Name",
		employees.first_name as "Employee_First_Name",
		departments.dept_name as "Dept_Name"
from employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
Order by departments.dept_name, employees.last_name

---5. List all employees whose first name is "Hercules" and last names begin with "B."

Select 	employees.emp_no as "Employee_Number",
		employees.last_name as "Employee_Last_Name",
		employees.first_name as "Employee_First_Name"
from employees
where employees.last_name like 'B%' and employees.first_name = 'Hercules'

---6. List all employees in the Sales department, including their employee number,
--- last name, first name, and department name.

Select 	employees.emp_no as "Employee_Number",
		employees.last_name as "Employee_Last_Name",
		employees.first_name as "Employee_First_Name",
		departments.dept_name as "Dept_Name"
from employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales'
Order by departments.dept_name

---7. List all employees in the Sales and Development departments, including their 
---employee number, last name, first name, and department name.

Select 	employees.emp_no as "Employee_Number",
		employees.last_name as "Employee_Last_Name",
		employees.first_name as "Employee_First_Name",
		departments.dept_name as "Dept_Name"
from employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development'
Order by employees.emp_no

---8. In descending order, list the frequency count of employee last names, i.e., how 
---many employees share each last name.

Select 	employees.last_name, (count(employees.last_name)) as name_count
from employees
Group by employees.last_name 
order by name_count desc --- sort in decending order by name count

Select 	employees.last_name, (count(employees.last_name)) as name_count
from employees
Group by employees.last_name 
order by employees.last_name desc --- sort in decending order by last_name 
