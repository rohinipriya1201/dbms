SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := &enter;
    temp NUMBER;
    digit NUMBER;
    sum NUMBER := 0;
    digits NUMBER;
BEGIN
    temp := n;
    digits := LENGTH(TO_CHAR(n));

    WHILE temp > 0 LOOP
        digit := MOD(temp, 10);
        sum := sum + POWER(digit, digits);
        temp := TRUNC(temp / 10);
    END LOOP;

    IF sum = n THEN
        DBMS_OUTPUT.PUT_LINE('Armstrong Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Not an Armstrong Number');
    END IF;
END;
/
