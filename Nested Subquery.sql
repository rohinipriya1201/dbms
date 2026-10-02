
CREATE TABLE Student (
    RollNo NUMBER,
    Name VARCHAR2(30),
    Mark NUMBER
);

INSERT INTO Student VALUES (1, 'Rohini', 85);
INSERT INTO Student VALUES (2, 'Priya', 90);
INSERT INTO Student VALUES (3, 'Ammu', 70);
INSERT INTO Student VALUES (4, 'Riya', 60);

COMMIT;

SELECT Name, Mark
FROM Student
WHERE Mark > (
    SELECT AVG(Mark)
    FROM Student
);
