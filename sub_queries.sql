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
