-- Experiment 6
-- Understanding and Implementing Cursors for Row-by-Row Data Processing

-- Step 1 – Create employee table
CREATE TABLE employee (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    department VARCHAR2(50),
    salary NUMBER
);

-- Step 2 – Insert sample employee data
INSERT INTO employee VALUES (1, 'Rahul', 'HR', 25001);
INSERT INTO employee VALUES (2, 'Sneha', 'Finance', 32000);
INSERT INTO employee VALUES (3, 'Amit', 'IT', 45015);
INSERT INTO employee VALUES (4, 'Neha', 'Marketing', 28000);
INSERT INTO employee VALUES (5, 'Vikram', 'Sales', 39011);

COMMIT;

-----------------------------------------------------------
-- Step 3 – Implicit Cursor Example
DECLARE
    v_salary employee.salary%TYPE;
BEGIN
    -- Implicit cursor: single row query
    SELECT salary INTO v_salary
    FROM employee
    WHERE id = 2;

    DBMS_OUTPUT.PUT_LINE('Salary of employee with ID 2 is: ' || v_salary);

    -- Check if value found (implicit cursor automatically does this)
    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Record found.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No record found.');
    END IF;
END;
/

-----------------------------------------------------------
-- Step 4 – Explicit Cursor Example
DECLARE
    -- Declare explicit cursor
    CURSOR emp_cursor IS
        SELECT id, name, department, salary FROM employee;

    -- Variables to hold fetched data
    v_id employee.id%TYPE;
    v_name employee.name%TYPE;
    v_department employee.department%TYPE;
    v_salary employee.salary%TYPE;
BEGIN
    OPEN emp_cursor; -- Open cursor
    LOOP
        FETCH emp_cursor INTO v_id, v_name, v_department, v_salary;
        EXIT WHEN emp_cursor%NOTFOUND; -- Exit when no more rows

        -- Process each row
        DBMS_OUTPUT.PUT_LINE('ID: ' || v_id || ', Name: ' || v_name ||
                             ', Dept: ' || v_department || ', Salary: ' || v_salary);
    END LOOP;

    -- Cursor attributes
    DBMS_OUTPUT.PUT_LINE('Rows processed: ' || emp_cursor%ROWCOUNT);
    IF emp_cursor%ISOPEN THEN
        DBMS_OUTPUT.PUT_LINE('Cursor is still open');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Cursor is closed');
    END IF;

    CLOSE emp_cursor; -- Close cursor
END;
/

DELETE FROM EMPLOYEE
WHERE
        ID = :ID
    AND NAME = :NAME
    AND DEPARTMENT = :DEPARTMENT
    AND SALARY = :SALARY;

DELETE FROM EMPLOYEE
WHERE
        ID = :ID
    AND NAME = :NAME
    AND DEPARTMENT = :DEPARTMENT
    AND SALARY = :SALARY;

DESCRIBE EMPLOYEE;

DELETE FROM EMPLOYEE
WHERE
        ID = :ID
    AND NAME = :NAME
    AND DEPARTMENT = :DEPARTMENT
    AND SALARY = :SALARY;

DELETE FROM STUDENTS
WHERE
        NAME = :NAME
    AND MARKS = :MARKS;

DELETE FROM EMPLOYEE
WHERE
        ID = :ID
    AND NAME = :NAME
    AND DEPARTMENT = :DEPARTMENT
    AND SALARY = :SALARY;
