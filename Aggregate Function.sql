
CREATE TABLE Student (
    RollNo NUMBER,
    Name VARCHAR2(30),
    Mark NUMBER
);

INSERT INTO Student VALUES (1, 'Rohini', 85);
INSERT INTO Student VALUES (2, 'Priya', 90);
INSERT INTO Student VALUES (3, 'Ammu', 70);
INSERT INTO Student VALUES (4, 'Riya', 60);
INSERT INTO Student VALUES (5, 'Divya', 95);

COMMIT;

-- 1. COUNT
SELECT COUNT(*) AS Total_Students
FROM Student;

-- 2. SUM
SELECT SUM(Mark) AS Total_Marks
FROM Student;

-- 3. AVG
SELECT AVG(Mark) AS Average_Mark
FROM Student;

-- 4. MAX
SELECT MAX(Mark) AS Highest_Mark
FROM Student;

-- 5. MIN
SELECT MIN(Mark) AS Lowest_Mark
FROM Student;
