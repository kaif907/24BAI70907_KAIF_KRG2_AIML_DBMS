# Experiment 6 – Understanding and Implementing Cursors for Row-by-Row Data Processing

## Experiment
This experiment demonstrates the use of **Implicit and Explicit Cursors** in Oracle PL/SQL to process data **row-by-row** from a table.  
Cursors allow SQL queries to retrieve multiple rows and process each row individually within a PL/SQL block.

---

# Aim
To understand the concept of **cursors in PL/SQL** and implement **implicit and explicit cursors** for row-by-row data processing in a database table.

---

# Objective
- To understand the concept of **cursors in PL/SQL**.
- To implement **implicit cursors** for single-row queries.
- To implement **explicit cursors** for processing multiple rows.
- To learn cursor attributes such as:
  - `%FOUND`
  - `%NOTFOUND`
  - `%ROWCOUNT`
  - `%ISOPEN`

---

# Software Requirements

## Database Management System
- Oracle Database Express Edition (**Oracle XE**)

## Database Administration Tool
- **MY SQL Developer**

---

# SQL / PL SQL Code

```sql
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
    SELECT salary INTO v_salary
    FROM employee
    WHERE id = 2;

    DBMS_OUTPUT.PUT_LINE('Salary of employee with ID 2 is: ' || v_salary);

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
    CURSOR emp_cursor IS
        SELECT id, name, department, salary FROM employee;

    v_id employee.id%TYPE;
    v_name employee.name%TYPE;
    v_department employee.department%TYPE;
    v_salary employee.salary%TYPE;

BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO v_id, v_name, v_department, v_salary;
        EXIT WHEN emp_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || v_id ||
            ', Name: ' || v_name ||
            ', Dept: ' || v_department ||
            ', Salary: ' || v_salary
        );
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Rows processed: ' || emp_cursor%ROWCOUNT);

    IF emp_cursor%ISOPEN THEN
        DBMS_OUTPUT.PUT_LINE('Cursor is still open');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Cursor is closed');
    END IF;

    CLOSE emp_cursor;
END;
/

-- Additional Delete Examples

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

DESCRIBE EMPLOYEE;
```

---

# Practical / Experiment Steps

1. Create the **employee table** using `CREATE TABLE`.
2. Insert sample records using `INSERT INTO`.
3. Use `COMMIT` to save the inserted records.
4. Write a **PL/SQL block** to demonstrate **implicit cursor** usage.
5. Use `SELECT INTO` to retrieve a single row from the table.
6. Use cursor attributes like `SQL%FOUND` to check if data exists.
7. Declare an **explicit cursor** to fetch multiple rows.
8. Use `OPEN`, `FETCH`, `EXIT WHEN`, and `CLOSE` statements.
9. Display each row using `DBMS_OUTPUT.PUT_LINE`.
10. Observe cursor attributes like `%ROWCOUNT` and `%ISOPEN`.

---

# Procedure

1. Open **Oracle SQL Developer**.
2. Connect to the **Oracle database**.
3. Create the **employee table**.
4. Insert sample employee records.
5. Execute the **implicit cursor PL/SQL block**.
6. Execute the **explicit cursor PL/SQL block**.
7. Observe and record the output results.
8. Capture **screenshots of query execution and results**.

---

# Input / Output Details

## Input

**Table Name:** `employee`

| Column | Data Type |
|------|------|
| id | Number |
| name | Varchar2 |
| department | Varchar2 |
| salary | Number |

### Logic Used
- Implicit Cursor (`SELECT INTO`)
- Explicit Cursor (`OPEN`, `FETCH`, `CLOSE`)
- Cursor Attributes:
  - `%FOUND`
  - `%NOTFOUND`
  - `%ROWCOUNT`
  - `%ISOPEN`

---

# Step-wise Output

### Step 1 – Create Employee Table

### Step 2 – Insert Data into Employee Table

### Step 3 – Execute Implicit Cursor Program

### Step 4 – Execute Explicit Cursor Program

### Step 5 – Display Employee Records Row by Row

### Step 6 – Display Cursor Attributes

### Screenshot

<img width="630" height="461" alt="Screenshot 2026-03-13 at 10 12 54 AM" src="https://github.com/user-attachments/assets/07f64d28-5216-47af-85a7-2b604334b914" />


---

# Learning Outcome

After completing this experiment, the learner will be able to:

- Understand the concept of **cursors in PL/SQL**.
- Differentiate between **implicit and explicit cursors**.
- Use cursors to **process records row-by-row**.
- Implement cursor attributes like `%FOUND`, `%NOTFOUND`, `%ROWCOUNT`, and `%ISOPEN`.
- Apply PL/SQL cursor techniques in **real-world database applications**.
