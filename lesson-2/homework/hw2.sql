-- creating Homework_2

--Basic Level Tasks

--TASK_1

CREATE DATABASE homework_2
USE homework_2
CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Salary DECIMAL(10,2))

SELECT * FROM Employees

INSERT INTO Employees (EmpID, Name, Salary) VALUES (1, 'Anas', 6000.00)

INSERT INTO Employees VALUES (2, 'Ahmed', 5000.00), (3, 'Sarah', 8000.00)

UPDATE Employees
SET Salary = 7000.00
WHERE EmpID = 1


DELETE FROM Employees
WHERE EmpID = 2

SELECT * FROM Employees

--- Delete: Removes specific rows from a table using a WHERE clause.
-- Example: DELETE FROM Employees WHERE EmpID = 2

---TRUNCATE: Deletes all rows from a table fast.
-- Example: TRUNCATE TABLE Employees

---DROP: Completely removes the table from the database.
-- Example: DROP TABLE Employees

ALTER TABLE Employees
ALTER COLUMN Name varchar(100)

ALTER TABLE Employees
ADD Department VARCHAR(50)

SELECT * FROM Employees

ALTER TABLE Employees
ALTER COLUMN Salary FLOAT


CREATE TABLE Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50))


TRUNCATE TABLE Employees

SELECT * FROM Employees


INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT 1, 'HR' UNION ALL
SELECT 2, 'Finance' UNION ALL
SELECT 3, 'IT' UNION ALL
SELECT 4, 'Sales' UNION ALL
SELECT 5, 'Marketing';


SELECT * FROM Departments;



ALTER TABLE Employees
ADD Department VARCHAR(50))



UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000


TRUNCATE TABLE Employees;

ALTER TABLE Employees
DROP COLUMN Department;


SELECT * FROM Employees

EXEC sp_rename 'Employees', 'StaffMembers'

SELECT * FROM StaffMembers

DROP TABLE Departments 


---- Advanced Tasks



CREATE TABLE Products (ProductID INT PRIMARY KEY, 
                       ProductName VARCHAR(100), 
					   Category VARCHAR(50), 
					   Price DECIMAL(10,2) CHECK (Price > 0),
					       Description VARCHAR(255))  -- extra column to make total 5


ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50


SELECT * FROM Products



EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';




INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Description)
VALUES
(1, 'Laptop', 'Electronics', 1200.00, 'High-end laptop'),
(2, 'Mouse', 'Accessories', 25.50, 'Wireless mouse'),
(3, 'Desk Chair', 'Furniture', 150.00, 'Comfortable office chair'),
(4, 'Notebook', 'Stationery', 5.75, 'College-ruled notebook'),
(5, 'Monitor', 'Electronics', 300.00, '27-inch HD monitor');


SELECT * INTO Products_Backup
FROM Products;




EXEC sp_rename 'Products', 'Inventory'



ALTER TABLE Inventory
ALTER COLUMN Price(10,2) FLOAT

SELECT * FROM Inventory  

CREATE TABLE Inventory_New (
    ProductCode INT IDENTITY(1000, 5) PRIMARY KEY,
    ProductID INT,
    ProductName VARCHAR(100),
    ProductCategory VARCHAR(100),
    Price FLOAT,
    StockQuantity INT DEFAULT 50
);


DROP TABLE Inventory_New

CREATE TABLE Inventory_WithCode (
    ProductCode INT IDENTITY(1000, 5) PRIMARY KEY,
    ProductID INT,
    ProductName VARCHAR(100),
    ProductCategory VARCHAR(100),
    Price FLOAT,
    StockQuantity INT DEFAULT 50
);

INSERT INTO Inventory_WithCode (ProductID, ProductName, ProductCategory, Price, StockQuantity, Description)
SELECT ProductID, ProductName, ProductCategory, Price, StockQuantity

DROP TABLE Inventory_WithCode


CREATE TABLE Inventory_New (
    ProductCode INT IDENTITY(1000, 5) PRIMARY KEY,
    ProductID INT,
    ProductName VARCHAR(100),
    ProductCategory VARCHAR(100),
    Price FLOAT,
    StockQuantity INT
);
	

	INSERT INTO Inventory_New (ProductID, ProductName, ProductCategory, Price, StockQuantity)
SELECT ProductID, ProductName, ProductCategory, Price, StockQuantity
FROM Inventory;

select * from Inventory_New
