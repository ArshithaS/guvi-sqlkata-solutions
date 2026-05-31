/*
Problem: TechCorp's Employee Management System
Difficulty: Easy
Platform: HCL GUVI SQLKata

Q1: Calculate the average salary for each department and display the results in descending order.
Q2: Apply a 5% salary raise to employees with more than 2 years of service and display the updated salaries and raise amounts.
Q3: Add Eva Green as the IT Manager and display all employees in the IT department.
Q4: Calculate total salary expenditure by department and determine each department's percentage contribution to the company's total salary expenditure.
*/
-- Q1
...
select department,round(avg(salary),2) as avg_salary
from employees
group by department
order by avg_salary desc;

-- Q2
...
update employees
set salary= salary*1.05
where hire_date<'20222-12-20';
select name,salary as new_salaries, salary*0.05/1.05 as amount_raised
from employees
where hire_date<'2022-12-20';

-- Q3
...
insert into employees(id,name,department,position,hire_date,salary)
values(6,'Eva Green','IT','Manager','2024-12-20',90000);
select * from employees
where department='IT';

-- Q4
...
select department,sum(salary) as expenditure,
round((sum(salary)*100.00)/(select sum(salary)from employees),2)as percentage
from employees
group by department
order by expenditure desc;
