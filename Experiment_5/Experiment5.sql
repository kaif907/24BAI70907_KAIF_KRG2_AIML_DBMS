-- Experiment 5
-- SQL Conditional Logic (Odd & Even Values)
-- PostgreSQL Version

-- Step 1 – Create employee Table

CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Step 2 – Insert Data into employee Table
INSERT INTO employee VALUES (1, 'Rahul', 'HR', 25001);
INSERT INTO employee VALUES (2, 'Sneha', 'Finance', 32000);
INSERT INTO employee VALUES (3, 'Amit', 'IT', 45015);
INSERT INTO employee VALUES (4, 'Neha', 'Marketing', 28000);
INSERT INTO employee VALUES (5, 'Vikram', 'Sales', 39011);

-- Step 3 – Display All Employee Salary Records
SELECT id, name, department, salary
FROM employee;

-- Step 4 – Classify Salaries as Odd or Even
SELECT 
    name,
    salary,
    CASE 
        WHEN salary % 2 = 0 THEN 'Even Salary'
        ELSE 'Odd Salary'
    END AS salary_type
FROM employee;

-- Step 5 – Display Only Odd Salaries
SELECT 
    name,
    salary
FROM employee
WHERE salary % 2 <> 0;

-- Step 6 – Display Only Even Salaries
SELECT 
    name,
    salary
FROM employee
WHERE salary % 2 = 0;
