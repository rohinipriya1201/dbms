
SET SERVEROUTPUT ON;

CREATE TABLE Student (
    RollNo NUMBER PRIMARY KEY,
    Name VARCHAR2(30)
);

INSERT INTO Student VALUES (1, 'rohini priya');
INSERT INTO Student VALUES (2, 'ammu');
INSERT INTO Student VALUES (3, 'priya');

COMMIT;

-- 1. UPPER
SELECT UPPER(Name) AS Upper_Name FROM Student;

-- 2. LOWER
SELECT LOWER(Name) AS Lower_Name FROM Student;

-- 3. INITCAP
SELECT INITCAP(Name) AS Proper_Name FROM Student;

-- 4. LENGTH
SELECT Name, LENGTH(Name) AS Name_Length FROM Student;

-- 5. SUBSTR
SELECT SUBSTR(Name, 1, 4) AS Sub_String FROM Student;

-- 6. INSTR
SELECT INSTR(Name, 'i') AS Position FROM Student;

-- 7. CONCAT
SELECT CONCAT(Name, ' CS') AS Full_Name FROM Student;

-- 8. REPLACE
SELECT REPLACE(Name, 'a', 'A') AS Replaced_Name FROM Student;

-- 9. TRIM
SELECT TRIM('   HELLO   ') AS Trimmed_Text FROM DUAL;
