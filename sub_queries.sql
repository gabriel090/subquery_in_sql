/*
What is a sub-query? How does sql process a statement containing sub-query?
Question: Find the employees who's salary is more than the average salary earned by all employees
/*
  Find the average
  compare avg with outer query
*/

select avg(salary) from employees;

select * from employees where salary > (select avg(salary) from employees);