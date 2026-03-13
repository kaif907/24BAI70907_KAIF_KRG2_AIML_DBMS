-- =========================================================
-- EXPERIMENT 7: Design and Performance Analysis of Materialized Views
-- Aim: Compare simple, complex, and materialized views
-- Software: Oracle XE / PostgreSQL
-- =========================================================

-- =======================
-- Step 1 – Create Base Tables
-- =======================
-- Employee Table
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    Salary NUMBER(10,2)
);

-- Department Table
CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

-- Payroll Table
CREATE TABLE Payroll (
    EmpID INT,
    PayDate DATE,
    PayAmount NUMBER(10,2),
    PRIMARY KEY (EmpID, PayDate),
    FOREIGN KEY (EmpID) REFERENCES Employee(EmpID)
);

-- =======================
-- Step 2 – Insert Sample Data
-- =======================
-- Departments
INSERT INTO Department VALUES (1, 'IT');
INSERT INTO Department VALUES (2, 'Finance');
INSERT INTO Department VALUES (3, 'HR');

-- Employees
INSERT INTO Employee VALUES (101, 'Alice', 1, 70000);
INSERT INTO Employee VALUES (102, 'Bob', 2, 80000);
INSERT INTO Employee VALUES (103, 'Charlie', 1, 65000);
INSERT INTO Employee VALUES (104, 'David', 3, 60000);

-- Payroll Records
INSERT INTO Payroll VALUES (101, TO_DATE('2026-02-01','YYYY-MM-DD'), 7000);
INSERT INTO Payroll VALUES (102, TO_DATE('2026-02-01','YYYY-MM-DD'), 8000);
INSERT INTO Payroll VALUES (103, TO_DATE('2026-02-01','YYYY-MM-DD'), 6500);
INSERT INTO Payroll VALUES (104, TO_DATE('2026-02-01','YYYY-MM-DD'), 6000);

-- =======================
-- Step 3 – Create Simple View
-- =======================
CREATE VIEW SimpleEmployeeView AS
SELECT EmpID, EmpName, Salary
FROM Employee;

-- =======================
-- Step 4 – Create Complex View
-- =======================
CREATE VIEW ComplexEmployeePayroll AS
SELECT e.EmpID, e.EmpName, d.DeptName, SUM(p.PayAmount) AS TotalPaid
FROM Employee e
JOIN Department d ON e.DeptID = d.DeptID
JOIN Payroll p ON e.EmpID = p.EmpID
GROUP BY e.EmpID, e.EmpName, d.DeptName;

-- =======================
-- Step 5 – Create Materialized View
-- =======================
-- Oracle
CREATE MATERIALIZED VIEW MaterializedEmployeePayroll
BUILD IMMEDIATE
REFRESH COMPLETE ON DEMAND
AS
SELECT e.EMPID, e.EMPNAME, d.DEPTNAME, SUM(p.PAYAMOUNT) AS TOTALPAID
FROM Employee e
JOIN Department d ON e.DEPTID = d.DEPTID
JOIN Payroll p ON e.EMPID = p.EMPID
GROUP BY e.EMPID, e.EMPNAME, d.DEPTNAME;

-- PostgreSQL alternative
-- CREATE MATERIALIZED VIEW MaterializedEmployeePayroll AS
-- SELECT e.EmpID, e.EmpName, d.DeptName, SUM(p.PayAmount) AS TotalPaid
-- FROM Employee e
-- JOIN Department d ON e.DeptID = d.DeptID
-- JOIN Payroll p ON e.EmpID = p.EmpID
-- GROUP BY e.EmpID, e.EmpName, d.DeptName
-- WITH NO DATA;
-- REFRESH MATERIALIZED VIEW MaterializedEmployeePayroll;

-- =======================
-- Step 6 – Execute Queries on Views
-- =======================
-- Simple View Query
SELECT * FROM SimpleEmployeeView;

-- Complex View Query
SELECT * FROM ComplexEmployeePayroll;

-- Materialized View Query
SELECT * FROM MaterializedEmployeePayroll;

-- =======================
-- Step 7 – Compare Performance
-- =======================
-- Oracle: measure timing
SET TIMING ON;

SELECT * FROM SimpleEmployeeView;
SELECT * FROM ComplexEmployeePayroll;
SELECT * FROM MaterializedEmployeePayroll;

SET TIMING OFF;

-- PostgreSQL: measure timing
-- \timing
-- SELECT * FROM SimpleEmployeeView;
-- SELECT * FROM ComplexEmployeePayroll;
-- SELECT * FROM MaterializedEmployeePayroll;

-- Observation:
-- Simple view: Fast for single table queries.
-- Complex view: Slower due to joins and aggregation.
-- Materialized view: Fastest for repeated queries; precomputed results improve performance.

DELETE FROM EMPLOYEE
WHERE
        ID = :ID
    AND NAME = :NAME
    AND DEPARTMENT = :DEPARTMENT
    AND SALARY = :SALARY;
