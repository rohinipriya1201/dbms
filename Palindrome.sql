
SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 121;
    temp NUMBER;
    digit NUMBER;
    rev NUMBER := 0;
BEGIN
    temp := n;

    WHILE temp > 0 LOOP
        digit := MOD(temp, 10);
        rev := rev * 10 + digit;
        temp := TRUNC(temp / 10);
    END LOOP;

    IF rev = n THEN
        DBMS_OUTPUT.PUT_LINE('Palindrome Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Not Palindrome Number');
    END IF;
END;
/
