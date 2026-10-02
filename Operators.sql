
CREATE TABLE Student (
    RollNo NUMBER,
    Name VARCHAR2(30),
    Mark NUMBER,
    City VARCHAR2(30)
);

INSERT INTO Student VALUES (1, 'Rohini', 85, 'Pondicherry');
INSERT INTO Student VALUES (2, 'Priya', 70, 'Chennai');
INSERT INTO Student VALUES (3, 'Ammu', 90, 'Pondicherry');
INSERT INTO Student VALUES (4, 'Riya', 40, NULL);

COMMIT;

-- 1. Arithmetic Operators
SELECT 10+5 AS Addition,
       10-5 AS Subtraction,
       10*5 AS Multiplication,
       10/5 AS Division
FROM DUAL;

-- 2. Relational Operators
SELECT * FROM Student WHERE Mark > 70;
SELECT * FROM Student WHERE Mark < 70;
SELECT * FROM Student WHERE Mark = 85;
SELECT * FROM Student WHERE Mark <> 85;

-- 3. Logical Operators
SELECT * FROM Student
WHERE Mark > 50 AND Mark < 90;

SELECT * FROM Student
WHERE Mark = 85 OR Mark = 90;

SELECT * FROM Student
WHERE NOT (Mark < 50);

-- 4. BETWEEN Operator
SELECT * FROM Student
WHERE Mark BETWEEN 70 AND 90;

-- 5. IN Operator
SELECT * FROM Student
WHERE City IN ('Chennai', 'Pondicherry');

-- 6. LIKE Operator
SELECT * FROM Student
WHERE Name LIKE 'R%';

-- 7. IS NULL Operator
SELECT * FROM Student
WHERE City IS NULL;

-- 8. NOT NULL Operator
SELECT * FROM Student
WHERE City IS NOT NULL;
