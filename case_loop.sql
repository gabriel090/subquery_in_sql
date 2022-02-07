--Case Statement
Create Table SSource
(ID INT,
QTR INT,
YEAR INT,
SALES INT
);

CREATE TABLE CDesc
(
    ID INT,
    QTR VARCHAR(10),
    YEAR INT,
    SALES INT
)

INSERT INTO CSource
VALUE(101,1,2013,2000),
    (101,2,2013,2010),
    (101,3,2013,2100);


--
Select ID,
    QTR,
    YEAR,
    SALES
FROM CSource;

-- CASE  WHEN CONDITON is TRue
--     THEN VALUE1
--     WHEN CONDITON2 is True
--     THEN VALUE2
--     ELSE Value
-- END
-- From the above querry 
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

-----When its not applicable add ELSE statement at the END

Select ID
    CASE
        WHEN QTR =1
            THEN 'QTR1'
        WHEN QTR =2
            THEN 'QTR2'
        WHEN QTR =3
            THEN 'QTR3'
        ELSE 'NA' ------Here
        END AS QTR,
        YEAR,
        SALES
FROM CSource