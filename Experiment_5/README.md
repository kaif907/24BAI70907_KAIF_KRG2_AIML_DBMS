Experiment 5 – SQL Conditional Logic (Odd & Even Values) 
Experiment 
Experiment 5: SQL Conditional Logic using the MOD (%) operator to classify employee salary values as Odd or Even. This experiment demonstrates numerical analysis and conditional evaluation using SQL queries in Oracle and PostgreSQL. 
 

Aim 
To understand and apply conditional logic in SQL by using the modulus operator (MOD / %) to analyze numerical data and classify employee salaries as odd or even, thereby improving data analysis and decision-making skills in SQL. 
 

Objective 
To write and execute SQL queries using the MOD (%) operator. 
To retrieve salary details from an employee table. 
To classify salaries into Odd and Even categories. 
To display odd and even salary values separately. 
 

Software Requirements 
Database Management System: 
Oracle Database Express Edition (Oracle XE) 
PostgreSQL Database 
Database Administration Tool / Client Tool: 
Oracle SQL Developer (for Oracle XE) 
pgAdmin (for PostgreSQL) 
Code: 

CREATE TABLE employee ( 

    id INT PRIMARY KEY, 

    name VARCHAR(50), 

    department VARCHAR(50), 

    salary INT 

); 

  

INSERT INTO employee VALUES (1, 'Rahul', 'HR', 25001); 

INSERT INTO employee VALUES (2, 'Sneha', 'Finance', 32000); 

INSERT INTO employee VALUES (3, 'Amit', 'IT', 45015); 

INSERT INTO employee VALUES (4, 'Neha', 'Marketing', 28000); 

INSERT INTO employee VALUES (5, 'Vikram', 'Sales', 39011); 

  

SELECT id, name, department, salary 

FROM employee; 

  

SELECT  

    name, 

    salary, 

    CASE  

        WHEN salary % 2 = 0 THEN 'Even Salary' 

        ELSE 'Odd Salary' 

    END AS salary_type 

FROM employee; 

  

SELECT  

    name, 

    salary 

FROM employee 

WHERE salary % 2 <> 0; 

  

SELECT  

    name, 

    salary 

FROM employee 

WHERE salary % 2 = 0; 

 

Practical / Experiment Steps 
Create an employee table with columns: 
id 
name 
department 
salary 
Insert sample employee salary records into the table. 
Write a SQL query to retrieve employee salary details. 
Use the MOD(salary, 2) function (Oracle) or salary % 2 (PostgreSQL) to check whether the salary is odd or even. 
Use a CASE statement to classify salaries as: 
'Odd Salary' 
'Even Salary' 
Execute separate queries to: 
Display only employees with Odd salaries. 
Display only employees with Even salaries. 
Observe and record the output results. 
 

Procedure 
Open Oracle SQL Developer or pgAdmin. 
Connect to the database. 
Create the employee table using CREATE TABLE. 
Insert sample records using INSERT INTO. 
Execute SELECT queries with MOD operator. 
Apply CASE statement for conditional classification. 
Display results and capture screenshots. 
 

Input / Output Details 
Input 
Table Name: employee 
Columns: 
id (Number) 
name (Varchar) 
department (Varchar) 
salary (Number) 
Logic Used: 
MOD(salary, 2) 
CASE statement 
 

Step-wise Output 
Step 1 – Create employee Table 
 
Step 2 – Insert Data into employee Table 
 
Step 3 – Display Employee Salary Records 
 
Step 4 – Classify Salaries as Odd or Even 
 
Step 5 – Display Only Odd Salaries 
 
Step 6 – Display Only Even Salaries 
SCREENSHOT: 


 <img width="629" height="633" alt="Screenshot 2026-03-13 at 9 54 02 AM" src="https://github.com/user-attachments/assets/b1558f2d-f77f-4767-9c91-a1e20ad694ed" />

 

Learning Outcome 
After completing this experiment, the learner will be able to: 
Understand conditional logic in SQL queries. 
Use the MOD (%) operator for numerical analysis. 
Classify numeric values into odd and even categories. 
Write efficient SQL queries for payroll data analysis. 
Apply SQL logic in real-world enterprise environments. 
 
