-- 01_Basic_Queries.sql
-- Basic SELECT, WHERE, ORDER BY, LIMIT

-- Step 1: Create a table called Employees
-- Syntax: CREATE TABLE table_name (column1 datatype, column2 datatype, ...);
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

-- Step 2: Insert data into Employees table
-- Syntax: INSERT INTO table_name (columns) VALUES (values);
INSERT INTO Employees VALUES
(1, 'Anusha', 25000, 'IT'),
(2, 'Nandu', 35000, 'HR'),
(3, 'Sahithi', 40000, 'IT'),
(4, 'Mallika', 30000, 'Finance');

-- Step 3: Select all columns from Employees
SELECT * FROM Employees;

-- Step 4: Select only name and salary columns
SELECT name, salary FROM Employees;

-- Step 5: Select employees with salary greater than 30000
SELECT * FROM Employees WHERE salary > 30000;

-- Step 6: Order employees by salary descending
SELECT * FROM Employees ORDER BY salary DESC;

-- Step 7: Show top 2 highest salaries
SELECT * FROM Employees ORDER BY salary DESC LIMIT 2;
