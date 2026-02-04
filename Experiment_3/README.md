# 🧪 Experiment 3 – Basic Structure of PL/SQL

## 📌 Aim
To understand the basic structure of a PL/SQL program by creating and executing a simple PL/SQL block that includes declaration and execution sections, and to display output using built-in procedures.

---

## 🎯 Objectives
- Understand PL/SQL block structure
- Use the `DECLARE` section
- Use the `BEGIN ... END` execution block
- Print output using `DBMS_OUTPUT.PUT_LINE`

---

## ⚙️ Software Requirements
- Oracle XE / PostgreSQL
- SQL Developer / pgAdmin / SQL*Plus

---

## ▶️ Steps to Perform

1. Open SQL environment (pgAdmin / SQL Developer)
2. Enable server output
3. Write PL/SQL block
4. Declare variables
5. Assign values
6. Print using DBMS_OUTPUT
7. Execute the block

Enable output:

```sql
SET SERVER OUTPUT ON;
```

---

## 🧠 PL/SQL Block Structure

```text
DECLARE   → Variable declarations
BEGIN     → Executable statements
EXCEPTION → Error handling (optional)
END       → Block termination
```

---

## 💻 Program Code

```sql
SET SERVER OUTPUT ON;

DECLARE
    emp_id NUMBER := 101;
    emp_name VARCHAR2(50) := 'DR DOOM';
    emp_salary NUMBER := 45000;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee ID : ' || emp_id);
    DBMS_OUTPUT.PUT_LINE('Employee Name : ' || emp_name);
    DBMS_OUTPUT.PUT_LINE('Employee Salary : ' || emp_salary);
END;
/
```

---

## 🔢 Input

| Variable   | Value         |
|-----------|--------------|
| emp_id    | 101          |
| emp_name  | DR DOOM |
| emp_salary| 45000        |

---

## 📤 Output

<img width="505" height="177" alt="Screenshot 2026-02-04 at 3 09 20 PM" src="https://github.com/user-attachments/assets/60d5b620-04cf-4158-9bdb-85c24eb680ce" />


## 📖 Theory

A PL/SQL block consists of three main parts:

### 1. DECLARE
Used to define variables, constants, and cursors.

### 2. BEGIN – END
Contains executable statements that perform actions.

### 3. EXCEPTION (Optional)
Handles runtime errors.

---

## 🎓 Learning Outcomes

After completing this experiment, you will be able to:

- Declare variables in PL/SQL
- Write and execute PL/SQL blocks
- Use BEGIN–END structure
- Display output using DBMS_OUTPUT
- Develop simple procedural database programs

---

## ✅ Conclusion
This experiment demonstrates the fundamental structure of a PL/SQL block and helps build the foundation for writing procedural programs inside the database.
