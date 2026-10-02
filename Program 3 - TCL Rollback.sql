
CREATE TABLE employee (eid NUMBER(10), sname VARCHAR2(30));

INSERT INTO employee VALUES (101, 'Ashya');
INSERT INTO employee VALUES (102, 'Keerthi');

DELETE FROM employee WHERE eid = 101;

ROLLBACK;

SELECT*FROM employee;
