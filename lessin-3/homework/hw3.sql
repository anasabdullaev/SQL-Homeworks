CREATE DATABASE homework_3

------ Easy Level tasks

--BULK INSERT: is used to quickly bring in a lot of data from a file (like CSV or TXT) into a table in SQL Server.

--CSV:  Common file used in Excel (Comma Separated Values)

--TXT:  Plain text files

--Excel files: .xls or .xlsx (using tools like SSIS or OPENROWSET)

--XML:  Used when data is structured like a tree




CREATE TABLE Products (ProductID INT PRIMARY KEY, ProductName VARCHAR(50), Price DECIMAL(10,2))




INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
(1, 'Laptop', 1200.00),
(2, 'Headphones', 150.50),
(3, 'Mouse', 25.99)


SELECT * FROM Products


--NULL: Means No Value or Unknown. The column is allowed to be empty
--NOT NULL: Means the Column must have a Value. It Can't be left Empty



-- This line makes sure that no two products can have the same name
ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName)



ALTER TABLE Products
ADD Category INT

SELECT * FROM Products

ALTER TABLE Products
DROP COLUMN Category

ALTER TABLE Products
ADD CategoryID int




CREATE TABLE Categories (CategoryID INT PRIMARY KEY, CategoryName VARCHAR(50) UNIQUE)

SELECT * FROM Categories


-- IDENTITY: It is a special setting for number columns that makes them auto-count whenever you add a new row, 
--It saves time and avoids mistakes — you don’t need to remember the last ID number



---- Medium Level Tasks


Use BULK INSERT to import data from a text file into the Products table.




BULK INSERT Products
FROM 'C:\YourFilePath\products.txt'
WITH (
      FIRSTROW = 2,
	  FIELDTERMINATOR = ',',
	  ROWTERMINATOR = '\N'
	  )


ALTER TABLE Products
ADD CONSTRAINT FK_Category
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID);


--Use PRIMARY KEY to uniquely identify each row (like ProductID).

--Use UNIQUE KEY when a column must be different (like ProductName) but isn’t the main identifier.



ALTER TABLE Products
ADD CONSTRAINT CHK_PRICE
CHECK (Price > 0)

SELECT * FROM Products



ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0


SELECT ProductID, ProductName, ISNULL(Price, 0) AS FixedPrice
FROM Products;


SELECT * FROM Products

 --FOREIGN KEY ensures data in one table matches data in another. 
 --For example: In Products, CategoryID must match a valid CategoryID in Categories.




CREATE TABLE Customers (Customers INT PRIMARY KEY, Name VARCHAR(50), Age INT CHECK (Age >=18))
                        





CREATE TABLE Orders (
        OrderID INT IDENTITY(100,10) PRIMARY KEY,
		OrderDate DATE)


SELECT * FROM Orders


--CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
);
--Write a query to create a composite PRIMARY KEY in a new table OrderDetails.


CREATE TABLE OrderDetails (
     OrderID INT,
	 ProductID INT,
	 Quantity INT,
	 PRIMARY KEY (ORDERID, ProductID))

	 SELECT * FROM OrderDetails


-- ISNULL(x, y)	Returns y if x is NULL — works only with two values.
-- COALESCE(x, y, z...)	Returns the first non-NULL from a list of values. More flexible.

-- Use ISNULL when replacing just one NULL.
-- Use COALESCE when you want to check multiple values in order.

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


