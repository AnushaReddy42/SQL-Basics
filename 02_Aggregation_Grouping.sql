-- 02_Aggregation_Grouping.sql
-- Aggregation functions: COUNT, SUM, AVG, GROUP BY, HAVING

-- Step 1: Count total number of employees
-- Syntax: SELECT COUNT(*) FROM table_name;
SELECT COUNT(*) AS Total_Employees FROM Employees;

-- Step 2: Calculate the total salary of all employees
-- Syntax: SELECT SUM(column_name) FROM table_name;
SELECT SUM(salary) AS Total_Salary FROM Employees;

-- Step 3: Calculate the average salary
-- Syntax: SELECT AVG(column_name) FROM table_name;
SELECT AVG(salary) AS Average_Salary FROM Employees;

-- Step 4: Count employees in each department
-- Syntax: SELECT column, COUNT(*) FROM table GROUP BY column;
SELECT department, COUNT(*) AS Dept_Count
FROM Employees
GROUP BY department;

-- Step 5: Departments with total salary greater than 60000
-- Syntax: SELECT column, SUM(column) FROM table GROUP BY column HAVING condition;
SELECT department, SUM(salary) AS Dept_Salary
FROM Employees
GROUP BY department
HAVING SUM(salary) > 60000;
