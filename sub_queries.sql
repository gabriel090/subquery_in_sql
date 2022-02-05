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

--Correlated subqury
--subquery which is related to the outer query
-- Question: Find the employees in each department who earn more than the average salary

select avg(salary) 
from employees 
where dept_name = 

select *
from employees e1
where salary > (select avg(salary) 
            from employees e2
            where e1.dept_name = e2.dept_name);
--QUESTION: Find department who do not have any employees

select *
from department d
where not exists (select 1 from employee e where e.dept_name = d.dept_name);

---------NESTED SUBQUERY
---Subquery inside a subquery
--QUESTION: Find stores who's sales where better than the average sales
--across all stores
select * from sales;
--Break the question into different parts
--1) find the total sales for each store.
--2) find avg sales for all the stores
--3)compare 1 &2

select *
from  (select store_name, sum(price) as total_sales
from sales 
group by store_name) sales

join (select avg(total_sales) as sales
from (select store_name, sum(price) as total_sales
    from sales 
    group by store_name) x) avg_sales
on sales.total_sales > avg_sales.sales;

-- Different SQL Clause Where subquery is allowed

--Using a subquery in select clause
--Question: Fetch all employee details and add remark to those employees who earn more than the average pay

select *
,(case when salary > (select avg(salary)from employees)
            then 'Higher than average'
            else null
        end) as remarks
from employees



select *
, (case when salary > avg_sal.sal
        then 'Higher than average'
    else null
end) as remarks
from employees
cross join (select avg(salary) sal from employees) avg_sal;


--Having clause
--Question: Find the store who have sold more units than the average units sold by all stores

select store_name, sum(quantity)
from sales
group by store_name
having sum(quantity) > (select avg(quantity) from sales)







