/*List the department of each employee with the following information: employee number, last name, first name, and department name.*/
select e.emp_no, last_name, first_name, sex, salary
from employees e, salaries s
where e.emp_no = s.emp_no;

/*List first name, last name, and hire date for employees who were hired in 1986.*/
select last_name, first_name, hire_date
from employees
where hire_date >= '01/01/1986';

/*List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.*/
select dm.dept_no, dept_name, dm.emp_no, last_name, first_name
from dept_managers dm, employees e, departments d
where dm.emp_no = e.emp_no
and dm.dept_no = d.dept_no;

/*List the department of each employee with the following information: employee number, last name, first name, and department name.*/
select e.emp_no, last_name, first_name, dept_name
from employees e, dept_employees de, departments d
where e.emp_no = de.emp_no
and de.dept_no = d.dept_no

/*List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."*/
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%'

/*List all employees in the Sales department, including their employee number, last name, first name, and department name.*/
select e.emp_no, last_name, first_name, dept_name
from employees e, dept_employees de, departments d
where e.emp_no = de.emp_no
and de.dept_no = d.dept_no
and d.dept_name = 'Sales'

/*List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.*/
select e.emp_no, last_name, first_name, dept_name
from employees e, dept_employees de, departments d
where e.emp_no = de.emp_no
and de.dept_no = d.dept_no
and d.dept_name in ('Sales', 'Development')

/*In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.*/
select last_name, count(last_name) as frequency
from employees
group by last_name
order by frequency desc
