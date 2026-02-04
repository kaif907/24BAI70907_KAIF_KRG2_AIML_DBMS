-- Problem Statement 1
DECLARE
    num NUMBER := 5;
BEGIN
    IF num > 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number is positive.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number is non-positive.');
    END IF;
END;


-- Problem Statement 2
DECLARE
    marks NUMBER := 78;
BEGIN
    IF marks >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: A');
    ELSIF marks >= 75 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: B');
    ELSIF marks >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: C');
    ELSIF marks >= 40 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: D');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Grade: F (Fail)');
    END IF;
END;


-- Problem Statement 3
DECLARE
    marks NUMBER := 78;
BEGIN
    IF marks >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('Performance: Outstanding');
    ELSIF marks >= 75 THEN
        DBMS_OUTPUT.PUT_LINE('Performance: Very Good');
    ELSIF marks >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('Performance: Good');
    ELSIF marks >= 40 THEN
        DBMS_OUTPUT.PUT_LINE('Performance: Average');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Performance: Poor');
    END IF;
END;

-- Problem Statement 4
