-- 03_Joins.sql
-- Join queries: INNER JOIN, LEFT JOIN, RIGHT JOIN

-- Step 1: Create Departments table
-- Syntax: CREATE TABLE table_name (columns);
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager VARCHAR(50)
);

-- Step 2: Insert data into Departments table
-- Syntax: INSERT INTO table_name VALUES (...);
INSERT INTO Departments VALUES
(1, 'IT', 'Ravi'),
(2, 'HR', 'Priya'),
(3, 'Finance', 'Anil');

-- Step 3: Add a new column 'dept_id' to Employees table for join
-- Syntax: ALTER TABLE table_name ADD COLUMN column_name datatype;
ALTER TABLE Employees ADD COLUMN dept_id INT;

-- Step 4: Update Employees table to assign dept_id based on department
-- Syntax: UPDATE table_name SET column=value WHERE condition;
UPDATE Employees SET dept_id = 1 WHERE department='IT';
UPDATE Employees SET dept_id = 2 WHERE department='HR';
UPDATE Employees SET dept_id = 3 WHERE department='Finance';

-- Step 5: INNER JOIN - Shows employees with their department info only if match exists
-- Syntax: SELECT columns FROM table1 INNER JOIN table2 ON condition;
SELECT e.id, e.name, e.salary, d.dept_name, d.manager
FROM Employees e
INNER JOIN Departments d ON e.dept_id = d.dept_id;

-- Step 6: LEFT JOIN - Shows all employees, even if department info is missing
SELECT e.id, e.name, e.salary, d.dept_name, d.manager
FROM Employees e
LEFT JOIN Departments d ON e.dept_id = d.dept_id;

-- Step 7: RIGHT JOIN - Shows all departments, even if no employees are assigned
SELECT e.id, e.name, e.salary, d.dept_name, d.manager
FROM Employees e
RIGHT JOIN Departments d ON e.dept_id = d.dept_id;
