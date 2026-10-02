
SET SERVEROUTPUT ON;

CREATE TABLE Department (
    DeptID NUMBER,
    DeptName VARCHAR2(30)
);

CREATE TABLE Employee (
    EmpID NUMBER,
    Name VARCHAR2(30),
    DeptID NUMBER
);

INSERT INTO Department VALUES (10, 'CSE');
INSERT INTO Department VALUES (20, 'IT');
INSERT INTO Department VALUES (30, 'BCA');

INSERT INTO Employee VALUES (1, 'Rohini', 10);
INSERT INTO Employee VALUES (2, 'Priya', 20);
INSERT INTO Employee VALUES (3, 'Ammu', 10);
INSERT INTO Employee VALUES (4, 'Riya', 40);

COMMIT;

-- INNER JOIN
SELECT E.Name, D.DeptName
FROM Employee E
INNER JOIN Department D
ON E.DeptID = D.DeptID;

-- LEFT JOIN
SELECT E.Name, D.DeptName
FROM Employee E
LEFT JOIN Department D
ON E.DeptID = D.DeptID;

-- RIGHT JOIN
SELECT E.Name, D.DeptName
FROM Employee E
RIGHT JOIN Department D
ON E.DeptID = D.DeptID;

-- FULL OUTER JOIN
SELECT E.Name, D.DeptName
FROM Employee E
FULL OUTER JOIN Department D
ON E.DeptID = D.DeptID;

-- CROSS JOIN
SELECT E.Name, D.DeptName
FROM Employee E
CROSS JOIN Department D;

-- SELF JOIN
SELECT E1.Name, E2.Name
FROM Employee E1
JOIN Employee E2
ON E1.DeptID = E2.DeptID
AND E1.EmpID < E2.EmpID;
