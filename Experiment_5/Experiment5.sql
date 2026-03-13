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
