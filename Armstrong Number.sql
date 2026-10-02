
SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 153;
    temp NUMBER;
    digit NUMBER;
    s NUMBER := 0;
BEGIN
    temp := n;

    WHILE temp > 0 LOOP
        digit := MOD(temp, 10);
        s := s + POWER(digit, 3);
        temp := TRUNC(temp / 10);
    END LOOP;

    IF s = n THEN
        DBMS_OUTPUT.PUT_LINE('Armstrong Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Not Armstrong Number');
    END IF;
END;
/
