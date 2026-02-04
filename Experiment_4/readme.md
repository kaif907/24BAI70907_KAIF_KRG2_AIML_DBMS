# 🧪 Experiment 4 — Conditional Control Statements in PL/SQL / PL/pgSQL

## 📌 Aim
To design and implement PL/SQL (PL/pgSQL) programs using conditional control statements such as **IF–ELSE, IF–ELSIF–ELSE, ELSIF ladder, and CASE constructs** to control the flow of execution based on logical conditions and analyze decision-making capabilities in PL/SQL blocks.

---

## 🎯 Objectives
- Understand decision-making constructs in PL/SQL
- Implement IF–ELSE statements
- Implement IF–ELSIF–ELSE and ELSIF ladder
- Apply CASE statements for multi-way branching
- Analyze program flow based on conditions
- Gain hands-on experience with PL/pgSQL blocks in PostgreSQL

---

## ⚙️ Software Requirements
- Oracle XE / PostgreSQL
- SQL Developer / SQL*Plus / pgAdmin

---

## ▶️ Practical Steps

1. Open SQL Developer / pgAdmin
2. Connect to database
3. Enable output:
   ```sql
   SET SERVEROUTPUT ON;
   ```
4. Write PL/SQL block
5. Declare variables
6. Apply conditional statements
7. Use `DBMS_OUTPUT.PUT_LINE`
8. Execute and verify output

---

## 🧠 Theory

Conditional control statements allow programs to make **decisions** and execute different blocks based on logical conditions.

### 🔹 IF–ELSE
Used for two outcomes.

```text
IF condition THEN
   statements;
ELSE
   statements;
END IF;
```

### 🔹 IF–ELSIF–ELSE
Used for multiple conditions.

### 🔹 ELSIF Ladder
Checks multiple conditions sequentially and executes the first true block.

### 🔹 CASE Statement
Cleaner alternative for multiple branches.

```text
CASE expression
   WHEN value THEN statements;
   ELSE statements;
END CASE;
```

---

# 💻 Programs

---

## ✅ Program 1 — IF–ELSE
### Check whether a number is positive or non-positive

```sql
DECLARE
    num NUMBER := 5;
BEGIN
    IF num > 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number that is Positive is ' || num);
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number that is Non-Positive is ' || num);
    END IF;
END;
/
```

---

## ✅ Program 2 — IF–ELSIF–ELSE
### Evaluate grade based on marks

```sql
DECLARE
    marks NUMBER := 82;
BEGIN
    IF marks >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('Grade : A');
    ELSIF marks >= 75 THEN
        DBMS_OUTPUT.PUT_LINE('Grade : B');
    ELSIF marks >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('Grade : C');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Grade : D');
    END IF;
END;
/
```

---

## ✅ Program 3 — ELSIF Ladder
### Determine performance status

```sql
DECLARE
    marks NUMBER := 68;
BEGIN
    IF marks >= 85 THEN
        DBMS_OUTPUT.PUT_LINE('Performance : Excellent');
    ELSIF marks >= 70 THEN
        DBMS_OUTPUT.PUT_LINE('Performance : Very Good');
    ELSIF marks >= 55 THEN
        DBMS_OUTPUT.PUT_LINE('Performance : Good');
    ELSIF marks >= 40 THEN
        DBMS_OUTPUT.PUT_LINE('Performance : Average');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Performance : Fail');
    END IF;
END;
/
```

---

## ✅ Program 4 — CASE Statement
### Display day name based on day number

```sql
DECLARE
    day_no NUMBER := 3;
BEGIN
    CASE day_no
        WHEN 1 THEN DBMS_OUTPUT.PUT_LINE('Monday');
        WHEN 2 THEN DBMS_OUTPUT.PUT_LINE('Tuesday');
        WHEN 3 THEN DBMS_OUTPUT.PUT_LINE('Wednesday');
        WHEN 4 THEN DBMS_OUTPUT.PUT_LINE('Thursday');
        WHEN 5 THEN DBMS_OUTPUT.PUT_LINE('Friday');
        WHEN 6 THEN DBMS_OUTPUT.PUT_LINE('Saturday');
        WHEN 7 THEN DBMS_OUTPUT.PUT_LINE('Sunday');
        ELSE DBMS_OUTPUT.PUT_LINE('Invalid Day Number');
    END CASE;
END;
/
```

---

# 🔢 Input / Output

| Program | Input | Output |
|---------|---------|-----------|
| 1 | num = 5 | The number 5 is Positive |
| 2 | marks = 82 | Grade: B |
| 3 | marks = 68 | Performance: Good |
| 4 | day_no = 3 | Wednesday |

---

# 📊 Analysis

- IF–ELSE provides binary decision control
- IF–ELSIF–ELSE handles multiple conditions
- ELSIF ladder improves efficiency by stopping at first true condition
- CASE improves readability and reduces complexity
- PL/pgSQL follows structured programming style

---

# 🎓 Learning Outcomes

After completing this experiment, you will be able to:

- Understand PL/SQL block structure
- Declare and initialize variables
- Use conditional control statements
- Display output using DBMS_OUTPUT
- Write decision-based database programs confidently

---

## ✅ Conclusion
This experiment demonstrates how conditional constructs control program flow and help implement decision-making logic effectively in PL/SQL / PL/pgSQL.
