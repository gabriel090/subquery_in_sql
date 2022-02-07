# SUBQUERIES IN SQL
/*
What is a sub-query? How does sql process a statement containing sub-query?
Question: Find the employees who's salary is more than the average salary earned by all employees
/*
  Find the average
  compare avg with outer query
*/

--Scalary subquery--
--it always returns 1 row and 1 column

-- multiple row subquery
-- subquery which returns multiple column and multiple row
-- subquery which returns only 1 column and multiple rows
--QUESTION: Find the employees who earn the highest in each department


--- Single column, multiple row subquery
---Question: find department who do not have any employee

--Correlated subqury
--subquery which is related to the outer query
-- Question: Find the employees in each department who earn more than the average salary

---------NESTED SUBQUERY
---Subquery inside a subquery
--QUESTION: Find stores who's sales where better than the average sales
--across all stores
select * from sales;
--Break the question into different parts
--1) find the total sales for each store.
--2) find avg sales for all the stores
--3)compare 1 &2

-- Different SQL Clause Where subquery is allowed

--Using a subquery in select clause
--Question: Fetch all employee details and add remark to those employees who earn more than the average pay

--Having clause

---SQL Commands which allow subquery

--INSERT
--UPDATE
--DELETE

--INSERT
--Question: Insert data to employee history table. Make sure not to insert duplicate 

---UPDATE
--- QUESTION: gIVE 10% INCREMENT TO ALL EMPLOYEES IN bANGALORE LOCATION BASED ON THE MAXIMUM SALARY EARNED BY AN EMP IN EACH DEPT. ONLY CONSIDER EMPLOYEES IN EMPLOYEE_HISTORY TABLE

-----DELETE
--Question: Delete all department who do not have any employees



--IF Statement
--
--Definition and Usage
--The IF() returns a value if a Condition is True, or another value if a condition is FALSE

-- Syntax
--IF(Condition, value_if_true, value_if_false)
--Parameter Values
--Condition - Required. the value to test
--Value_if_true Required. The value to return if condition is TRUE
--value_if_false Required. THe value to return if condition is FALSE




--IFNULL() FUNCTION
--Return the specified value IF the expression is NULL, otherwise return the expression
        --SELECT IFNULL(NULL,'"" THE EXPRESSION IS NULL )
--DEFINITION and USAGE
--The IFNULL() function returns a specified value if the expression is Null
--If the expression is NOT NULL this function returns the expression

-- Syntax
--    IFNULL(expressin, alt_value)
-- Parameter Values
-- expression - Required. The expression to test whether is Null
-- alt_value - Required . The value to return if expression is NULL






