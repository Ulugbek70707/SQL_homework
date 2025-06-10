--1
SELECT P.ProductName, S.SupplierName FROM Products P
CROSS JOIN Suppliers S;

--2
Select A.DepartmentName, B.Name from Departments as A
Cross join Employees as B

--3
Select A.ProductName, B.SupplierName from Products as A 
inner join Suppliers as B
on A.SupplierID=B.SupplierID

--4
Select B.FirstName, B.LastName, A.OrderID from Orders as A
Join  Customers1 as B
on A.CustomerID=B.CustomerID

--5
Select B.Name, A.CourseName from Courses as A
Cross join Students as B

--6
Select A.ProductName, B.OrderID from Products as A
inner join Orders as B
on A.ProductID=B.ProductID

--7
Select A.Name, B.DepartmentName from Employees as A
join Departments as B
on A.DepartmentID=B.DepartmentID

--8
Select A.Name,B.EnrollmentID from Students as A
join Enrollments as B
on A.StudentID=B.StudentID

--9
Select*from Orders as A 
join Payments as B
on A.OrderId=B.OrderId

--10
Select*from Orders as A
join Products as B
on A.ProductID=B.ProductID
where Price>100
