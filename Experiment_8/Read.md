## Experiment 08- Design of a Parameterized PL/SQL Stored Procedure for Employee Count by Gender (CData, Toddle)

## Student Information
- Name: Mohd Kaif Malik
- UID: 24BAI70907
- Branch: AIT-CSE 
- Section: 24AIT-KRG-G2  
- Semester: 4
- Subject: Database Management System
- Date of Performance: 01/04/2026  

---

## Aim
To design and implement a stored procedure that accepts gender as an input parameter and returns the total number of employees based on the gender passed, thereby demonstrating procedural programming and parameterized logic in PL/SQL.

---

## Software Requirements
- PostgreSQL  
- pgAdmin  
- Oracle Database Express Edition (optional)

---

## Objectives
- Understand the structure and components of a stored procedure.
- Implement IN, OUT, and INOUT parameters in PL/SQL procedures.
- Pass dynamic input values to stored procedures.
- Apply aggregate functions within procedures for data analysis.
- Develop reusable database logic for real-world business scenarios.

---

## Problem Statement
Organizations often require flexible reporting mechanisms to analyze workforce distribution based on gender for compliance and internal analytics. This experiment focuses on creating a modular procedure that retrieves employee data from a table and returns the gender-based employee count using dynamic input parameters to ensure reusable logic for companies like CData and Toddle.
---

PROGRAM:

## Step-1-Table Creation and Data Setup

```sql
CREATE TABLE employeedata(
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50),
    gender VARCHAR(10),
    salary NUMERIC(10,2)
);

INSERT INTO employeedata(emp_name, gender, salary)
VALUES
('Amit', 'Male',30000),
('Riya', 'Female',35000),
('John', 'Male',28000),
('Sneha', 'Female',40000);

SELECT * FROM employeedata;
```
---

## Step 2: Creating the Parameterized Stored Procedure

```sql
-CREATE OR REPLACE PROCEDURE count_emp(
    IN p_gen VARCHAR(20),
    OUT emp_count INT,
    INOUT status VARCHAR
)
AS $$
BEGIN
    SELECT COUNT(*)
    INTO emp_count
    FROM employeedata
    WHERE gender = p_gen;

    status := 'SUCCESS';
END;
$$ LANGUAGE plpgsql;
```
---

## Step 3: Executing the Procedure (Calling via Anonymous Block)

```sql
DO $$
DECLARE
    GEN VARCHAR(20) := 'Male';
    COUNT_BY_GEN INT;
    STATUS VARCHAR(20) := 'Fail';
BEGIN

    CALL COUNT_EMP(GEN, COUNT_BY_GEN, STATUS);

    RAISE NOTICE
    'YOUR GENDER IS % YOUR COUNT IS % AND STATUS IS %',
    GEN, COUNT_BY_GEN, STATUS;

END;
$$;
```
---

## Learning Outcomes
- Structure Knowledge: Gained an understanding of the structure and components of a stored procedure in PostgreSQL (PL/pgSQL).
- Parameter Implementation: Successfully implemented IN (input), OUT (output), and INOUT (bidirectional) parameters.
- Dynamic Input Handling: Learned how to pass dynamic input values to procedures to filter database results.
- Data Analysis: Applied aggregate functions (COUNT) within procedural logic for real-time data analysis.
- Business Application: Developed reusable database logic applicable to real-world business scenarios used in enterprise-level companies.

---

## Screenshot
<img src="Screenshots/Screenshot-1.png" width="700">
<img src="Screenshots/Screenshot-2.png" width="700">
<img src="Screenshots/Screenshot-3.png" width="700">
<img src="Screenshots/Screenshot-4.png" width="700">
<img src="Screenshots/Screenshot-5.png" width="700">
<img src="Screenshots/Screenshot-6.png" width="700">
