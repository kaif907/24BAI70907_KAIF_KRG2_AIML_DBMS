Experiment

Experiment 3: To understand the basic structure of a PL/SQL

Aim

To understand the basic structure of a PL/SQL program by creating and executing a simple PL/SQL block that includes declaration and execution sections, and to display output using built-in procedures.

Objective

To create a simple PL/SQL program demonstrating:
Declaration Section (DECLARE)
Execution Section (BEGIN … END)
Output using DBMS_OUTPUT.PUT_LINE
Software Requirements

Database: Oracle XE or PostgreSQL (PgAdmin)
Practical / Experiment Steps

Open pgAdmin / SQL environment (conceptual PL/SQL execution).
Enable server output:
SET SERVER OUTPUT ON;
Write a PL/SQL block with:
Employee ID
Employee Name
Employee Salary
Assign values inside the execution section.
Display output using DBMS_OUTPUT.PUT_LINE.
Execute the block and observe the output.
Theory of the Experiment

A PL/SQL block consists of three main sections:
Declaration Section (DECLARE)

Variables, constants, cursors are declared here.

Execution Section (BEGIN … END)

Contains executable statements.

Exception Section (EXCEPTION) (optional)

Think of it like a human:

DECLARE → Memory
BEGIN → Action
END → Closure
Input / Output Details

Input

Variable	Value
emp_id	101
emp_name	Rahul Sharma
emp_salary	45000
Output

Employee ID : 101
Employee Name : DR DOOM
Employee Salary : 45000

OUTPUT

<img width="505" height="177" alt="Screenshot 2026-02-04 at 3 09 20 PM" src="https://github.com/user-attachments/assets/9a2825cf-006f-4c0f-8be6-70251923f978" />


Learning Outcome

After completing this experiment, the student will be able to:

Understand the basic structure of a PL/SQL block
Declare and initialize variables in PL/SQL
Use the BEGIN–END execution block
Display output using DBMS_OUTPUT.PUT_LINE
Develop confidence in writing simple procedural database programs
