--1
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    HireDate DATE
);
select*from Employees

--2
--Single-row insert
INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary, HireDate)
VALUES (41, 'Someone', 1, 55000.00, '2020-01-01');
select*from Employees

--Another single-row insert:
INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary, HireDate) VALUES
(42, 'Anyone', 1, 70000.00, '2020-07-01');
select*from Employees

--Multiple-row insert:
INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary, HireDate) VALUES
(1, 'John Doe', 1, 55000.00, '2020-01-01'),
(2, 'Jane Smith', 2, 65000.00, '2019-03-15'),
(3, 'Mary Johnson', 3, 45000.00, '2021-05-10'),
(4, 'James Brown', 1, 60000.00, '2018-07-22'),
(5, 'Patricia Davis', 4, 70000.00, '2017-08-30'),
(6, 'Michael Miller', 2, 75000.00, '2020-12-12'),
(7, 'Linda Wilson', 3, 48000.00, '2016-11-02'),
(8, 'David Moore', 4, 85000.00, '2021-09-01'),
(9, 'Elizabeth Taylor', 1, 60000.00, '2019-05-18'),
(10, 'William Anderson', 2, 64000.00, '2020-04-10'),
(11, 'Susan Thomas', 3, 47000.00, '2017-01-25'),
(12, 'Joseph Jackson', 4, 78000.00, '2016-09-30'),
(13, 'Karen White', 1, 59000.00, '2018-06-10'),
(14, 'Steven Harris', 2, 71000.00, '2021-07-15'),
(15, 'Nancy Clark', 3, 45000.00, '2020-02-20'),
(16, 'George Lewis', 4, 80000.00, '2019-11-10'),
(17, 'Betty Lee', 1, 55000.00, '2017-04-05'),
(18, 'Samuel Walker', 2, 72000.00, '2021-03-22'),
(19, 'Helen Hall', 3, 49000.00, '2018-10-16'),
(20, 'Charles Allen', 4, 90000.00, '2015-08-11'),
(21, 'Betty Young', 1, 53000.00, '2020-05-17'),
(22, 'Frank King', 2, 67000.00, '2021-02-02'),
(23, 'Deborah Scott', 3, 47000.00, '2019-07-09'),
(24, 'Matthew Green', 4, 76000.00, '2021-01-15'),
(25, 'Sandra Adams', 1, 54000.00, '2020-06-21'),
(26, 'Paul Nelson', 2, 71000.00, '2018-12-03'),
(27, 'Margaret Carter', 3, 46000.00, '2020-08-19'),
(28, 'Anthony Mitchell', 4, 82000.00, '2021-04-10'),
(29, 'Lisa Perez', 1, 60000.00, '2021-03-05'),
(30, 'Christopher Roberts', 2, 69000.00, '2019-09-24'),
(31, 'Jessica Gonzalez', 3, 47000.00, '2017-12-13'),
(32, 'Brian Moore', 4, 85000.00, '2018-11-05'),
(33, 'Dorothy Evans', 1, 59000.00, '2019-06-11'),
(34, 'Matthew Carter', 2, 70000.00, '2020-01-29'),
(35, 'Rachel Martinez', 3, 51000.00, '2021-06-06'),
(36, 'Daniel Perez', 4, 83000.00, '2021-07-01'),
(37, 'Catherine Roberts', 1, 60000.00, '2020-09-19'),
(38, 'Ronald Murphy', 2, 68000.00, '2017-02-04'),
(39, 'Angela Jenkins', 3, 52000.00, '2018-04-23'),
(40, 'Gary Wright', 4, 87000.00, '2021-01-10');

select*from Employees

--3
UPDATE Employees
SET Salary = 7000.00
WHERE EmployeeID = 1;
select*from Employees

--4
DELETE FROM Employees
WHERE EmployeeID = 2;
select*from Employees

--5

--DELETE	Removes specific rows from a table based on a condition. Can be rolled back if inside a transaction.
--TRUNCATE	Removes all rows from a table, resets identity counters and is faster than DELETE. Cannot delete specific rows. Minimal logging, can be rolled back inside a transaction.
--DROP	Completely removes the table structure and data from the database. Cannot be rolled back.

--6
ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);
Select*from Employees

--7
ALTER TABLE Employees
ADD Department VARCHAR(50);
Select*from Employees

--8
ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;
Select*from Employees

--9
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
select*from Departments

--10
TRUNCATE TABLE Employees;
select*from Employees

--11

INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT 1, 'Sales' UNION ALL
SELECT 2, 'HR' UNION ALL
SELECT 3, 'IT' UNION ALL
SELECT 4, 'Marketing' UNION ALL
SELECT 5, 'Finance';
select*from Departments

--12
INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary, HireDate, Department) VALUES
(1, 'John Doe', 1, 55000.00, '2020-01-01','Sales'),
(2, 'Jane Smith', 2, 65000.00, '2019-03-15', 'Human Resources'),
(3, 'Mary Johnson', 3, 45000.00, '2021-05-10', 'IT'),
(4, 'James Brown', 1, 60000.00, '2018-07-22', 'Marketing'),
(5, 'Patricia Davis', 4, 70000.00, '2017-08-30', 'Finance'),
(6, 'Michael Miller', 2, 75000.00, '2020-12-12', 'Legal'),
(7, 'Linda Wilson', 3, 48000.00, '2016-11-02', 'Operations'),
(8, 'David Moore', 4, 85000.00, '2021-09-01', 'Research & Development'),
(9, 'Elizabeth Taylor', 1, 60000.00, '2019-05-18', 'Customer Support'),
(10, 'William Anderson', 2, 64000.00, '2020-04-10', 'Procurement'),
(11, 'Susan Thomas', 3, 47000.00, '2017-01-25', 'Supply Chain'),
(12, 'Joseph Jackson', 4, 78000.00, '2016-09-30', 'Logistics'),
(13, 'Karen White', 1, 59000.00, '2018-06-10', 'Design'),
(14, 'Steven Harris', 2, 71000.00, '2021-07-15', 'Product Management'),
(15, 'Nancy Clark', 3, 45000.00, '2020-02-20', 'Public Relations'),
(16, 'George Lewis', 4, 80000.00, '2019-11-10', 'Business Development'),
(17, 'Betty Lee', 1, 55000.00, '2017-04-05', 'Quality Assurance'),
(18, 'Samuel Walker', 2, 72000.00, '2021-03-22', 'Data Analytics'),
(19, 'Helen Hall', 3, 49000.00, '2018-10-16', 'Software Engineering'),
(20, 'Charles Allen', 4, 90000.00, '2015-08-11','Compliance'),
(21, 'Betty Young', 1, 53000.00, '2020-05-17', 'Audit'),
(22, 'Frank King', 2, 67000.00, '2021-02-02', 'Product Design'),
(23, 'Deborah Scott', 3, 47000.00, '2019-07-09', 'Health & Safety'),
(24, 'Matthew Green', 4, 76000.00, '2021-01-15', 'Training & Development'),
(25, 'Sandra Adams', 1, 54000.00, '2020-06-21', 'Accounting'),
(26, 'Paul Nelson', 2, 71000.00, '2018-12-03', 'IT Security'),
(27, 'Margaret Carter', 3, 46000.00, '2020-08-19', 'Market Research'),
(28, 'Anthony Mitchell', 4, 82000.00, '2021-04-10', 'Customer Success'),
(29, 'Lisa Perez', 1, 60000.00, '2021-03-05', 'Talent Acquisition'),
(30, 'Christopher Roberts', 2, 69000.00, '2019-09-24', 'Communications'),
(31, 'Jessica Gonzalez', 3, 47000.00, '2017-12-13', 'Sales Support'),
(32, 'Brian Moore', 4, 85000.00, '2018-11-05', 'Business Intelligence'),
(33, 'Dorothy Evans', 1, 59000.00, '2019-06-11', 'Project Management'),
(34, 'Matthew Carter', 2, 70000.00, '2020-01-29', 'Legal Affairs'),
(35, 'Rachel Martinez', 3, 51000.00, '2021-06-06', 'Creative Services'),
(36, 'Daniel Perez', 4, 83000.00, '2021-07-01', 'Information Systems'),
(37, 'Catherine Roberts', 1, 60000.00, '2020-09-19', 'Corporate Strategy'),
(38, 'Ronald Murphy', 2, 68000.00, '2017-02-04', 'Change Management'),
(39, 'Angela Jenkins', 3, 52000.00, '2018-04-23', 'Investor Relations'),
(40, 'Gary Wright', 4, 87000.00, '2021-01-10', 'Employee Relations');

UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;
select*from Employees

--13
Delete from Employees;
select*from Employees

--14
ALTER TABLE Employees
DROP COLUMN Department;
select*from Employees

--15
EXEC sp_rename 'Employees', 'StaffMembers';
select*from StaffMembers

--16
DROP TABLE Departments;

--17
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    Description VARCHAR(255)
);
select*from products
--18
ALTER TABLE Products
ADD CONSTRAINT CHK_Price_Positive CHECK (Price > 0);
select*from products
--19
ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;
select*from Products
--20
EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';
select*from Products
--21
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Description)
VALUES
(1, 'Laptop', 'Electronics', 1200.00, 'High-performance laptop'),
(2, 'Smartphone', 'Electronics', 800.00, 'Latest model smartphone'),
(3, 'Office Chair', 'Furniture', 150.00, 'Ergonomic office chair'),
(4, 'Headphones', 'Electronics', 200.00, 'Noise-cancelling headphones'),
(5, 'Desk Lamp', 'Furniture', 45.00, 'LED desk lamp with dimmer');
select*from Products
--22
SELECT *
INTO Products_Backup
FROM Products;
--23
EXEC sp_rename 'Products', 'Inventory';
select*from inventory
--24
ALTER TABLE Inventory
ALTER COLUMN Price FLOAT;
--25
CREATE TABLE Inventory_New (
    ProductCode INT IDENTITY(1000, 5) PRIMARY KEY,
    ProductID INT,
    ProductName VARCHAR(100),
    ProductCategory VARCHAR(50),
    Price FLOAT,
    Description VARCHAR(255),
    StockQuantity INT
);
INSERT INTO Inventory_New (ProductID, ProductName, ProductCategory, Price, Description, StockQuantity)
SELECT ProductID, ProductName, ProductCategory, Price, Description, StockQuantity
FROM Inventory;
DROP TABLE Inventory;
EXEC sp_rename 'Inventory_New', 'Inventory';
