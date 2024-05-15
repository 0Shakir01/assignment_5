CREATE DATABASE company;
use company;
-- Create tables
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Insert sample data
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES 
(1, 'HR'),
(2, 'Finance'),
(3, 'IT');

INSERT INTO Employees (EmployeeID, Name, DepartmentID) VALUES 
(1, 'John Doe', 1),
(2, 'Jane Smith', 2),
(3, 'Michael Johnson', 3),
(4, 'Emily Davis', 1),
(5, 'David Brown', NULL); -- Employee with no department

-- Query examples demonstrating inner, natural, left, and right joins
-- Inner Join
SELECT Employees.EmployeeID, Employees.Name, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- Natural Join
SELECT Employees.EmployeeID, Employees.Name, Employees.DepartmentID, Departments.DepartmentName
FROM Employees
NATURAL JOIN Departments;

-- Left Join
SELECT Employees.EmployeeID, Employees.Name, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- Right Join
SELECT Employees.EmployeeID, Employees.Name, Departments.DepartmentName
FROM Employees
RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
