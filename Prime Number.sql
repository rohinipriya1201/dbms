
DECLARE
    n NUMBER := 7;
    flag NUMBER := 0;
BEGIN
    IF n < 2 THEN
        flag := 1;
    ELSE
        FOR i IN 2..TRUNC(SQRT(n)) LOOP
            IF MOD(n, i) = 0 THEN
                flag := 1;
                EXIT;
            END IF;
        END LOOP;
    END IF;

    IF flag = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Prime Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Not Prime Number');
    END IF;
END;
/
