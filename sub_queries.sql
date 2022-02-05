/*
What is a sub-query? How does sql process a statement containing sub-query?
Question: Find the employees who's salary is more than the average salary earned by all employees
/*
  Find the average
  compare avg with outer query
*/

select avg(salary) from employees;

select * from employees where salary > (select avg(salary) from employees);


--Scalary subquery--
--it always returns 1 row and 1 column

select *
from employees e
join (select avg(salary) sal from employees) avg_sal
    on e.salary > avg_sal.sal;
-- multiple row subquery
-- subquery which returns multiple column and multiple row
-- subquery which returns only 1 column and multiple rows
--QUESTION: Find the employees who earn the highest in each department

select dept_name, max(salary)
from employees
group by dept_name

select * from employees
where (dept_name,salary) in (
    select dept_name, max(salary)
            from employees
            group by dept_name);


--- Single column, multiple row subquery
---Question: find department who do not have any employee

select * 
from department
where dept_name not in (select distinct dept_name
from employee);


