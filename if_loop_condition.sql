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


Select ID
    CASE
        WHEN QTR =1
            THEN 'QTR1'
        WHEN QTR =2
            THEN 'QTR2'
        WHEN QTR =3
            THEN 'QTR3'
        END AS QTR,
        YEAR,
        SALES
FROM CSource


--How to insert the above data in another table
IF (SELECT DISTINCT YEAR FROM CSource) = 2013
BEGIN

INSERT INTO CDesc
 (ID,
 QTR,
 YEAR,
 SALES
 )
 Select ID
    CASE
        WHEN QTR =1
            THEN 'QTR1'
        WHEN QTR =2
            THEN 'QTR2'
        WHEN QTR =3
            THEN 'QTR3'
        END AS QTR,
        YEAR,
        SALES
FROM CSource
END
ELSE
BEGIN 
    PRINT 'YEAR NOT MATCHING'
END

