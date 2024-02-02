-- Question 1 --
select first_name, 
last_name 
from employees
where salary > (
				select salary 
				from employees 
				where employee_id = 163);
                
-- Question 2 From the following table, write a SQL query to find out which employees have the same designation as the employee whose ID is 169. Return first name, last name, department ID and job ID.--
select first_name, 
	last_name, 
	department_id, 
	job_id 
from employees where 
job_id = (select job_id 
			from employees 
            where employee_id = 169);
            
-- Question 3 write a SQL query to find those employees whose salary matches the lowest salary of any of the departments. Return first name, last name and department ID. --
select first_name, 
last_name, 
salary, 
department_id from employees
where 
salary in (
			select min(salary) 
            from employees 
            group by department_id);
            
-- Question 4 write a SQL query to find those employees who earn more than the average salary. Return employee ID, first name, last name. --
select employee_id,
first_name, 
last_name
from employees
where 
salary > (select avg(salary) 
            from employees);
            
-- Quest 5 write a SQL query to find those employees who report to that manager whose first name is ‘Payam’. Return first name, last name, employee ID and salary. --
select first_name, 
last_name, 
employee_id, 
salary
from employees
	where 
	manager_id = (
				select manager_id 
                from employees 
                where first_name = 'Payam')