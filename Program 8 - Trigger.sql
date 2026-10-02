
SET SERVEROUTPUT ON;

CREATE TABLE Student (
    RollNo NUMBER PRIMARY KEY,
    Name VARCHAR2(30),
    Mark NUMBER
);

CREATE TABLE Student_Log (
    Message VARCHAR2(50)
);

CREATE OR REPLACE TRIGGER trg_student
AFTER INSERT ON Student
FOR EACH ROW
BEGIN
    INSERT INTO Student_Log
    VALUES ('New student inserted');
END;
/

INSERT INTO Student
VALUES (1, 'Rohini', 85);

SELECT * FROM Student;

SELECT * FROM Student_Log;
