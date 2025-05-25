--1
--BULK INSERT is a command in SQL Server used to quickly load large volumes of data from a text or CSV file into a database table.
--2 
--.csv

--.txt

--.xls / .xlsx

--.xml
--3
Create table products
( productid int primary key,
productname varchar(50),
price decimal(10,2),
);
select*from products
--4
INSERT INTO Products (ProductID, ProductName, Price)
VALUES
(1, 'Laptop', 1500.00),
(2, 'Phone', 800.00),
(3, 'Desk', 200.00);
--5
--NULL: Allows a column to have no value.

--NOT NULL: Requires a value to be present in that column for every row.
--6
Alter table products
add constraint UQ_ProductName unique (ProductName);
--7
-- This query selects all records from the Products table
SELECT * FROM Products;
--8
Alter table products
add CategoryId int; 
--9 
Create table categories (
CategoryID int primary key,
CategoryName varchar(50) unique)
--10
--The IDENTITY property in SQL Server is used to automatically generate sequential numeric values for a column, typically used as a primary key or unique identifier for each row in a table.

--11
BULK INSERT Products
FROM 'C:\Data\email_info.txt'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
--12
Alter table products
Add CategoryName varchar(50);

ALTER TABLE Products
ADD CONSTRAINT FK_Category
FOREIGN KEY (CategoryName) REFERENCES Categories(CategoryName);

--13
--PRIMARY KEY: Uniquely identifies each record, only one per table, cannot be NULL.

--UNIQUE KEY: Ensures values are unique but can have one NULL.

--14
ALTER TABLE Products
ADD CONSTRAINT CHK_PricePositive CHECK (Price > 0);
--15
ALTER TABLE Products
ADD Stock INT NOT NULL;
--16
SELECT ProductID, ProductName, ISNULL(Price, 0) AS Price
FROM Products;
--17
--A FOREIGN KEY is a type of constraint used to enforce a relationship between two tables. 
--It ensures that the value in a column (or a set of columns) in one table matches a value in the primary key (or unique key) of another table.

--18
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Age INT CHECK (Age >= 18)
);
--19
Create table check_identity (
Id int identity(100,10) primary key,
data varchar (50)
);
--20
CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
);
--21
--Both functions are used to replace NULL values with a specified value when querying data.
--ISNULL(expr1, expr2): Returns expr2 if expr1 is NULL.
--COALESCE(expr1, expr2, ..., exprN): Returns the first non-NULL value in the list.
--22
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);

--23
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

