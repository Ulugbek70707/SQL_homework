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

--11
Select A.Name as Emp_Name, B.DepartmentName from Employees as A
cross join Departments as B
where A.DepartmentID<>B.DepartmentID;

--12
Select O.OrderID,P.ProductName,O.Quantity,P.StockQuantity from Orders O
join Products P
on O.ProductID=P.ProductID
where O.Quantity>P.StockQuantity

--13
Select C.FirstName,C.LastName,S.ProductID,S.SaleAmount from Customers1 C
Join Sales S
on C.CustomerID=S.CustomerID
where S.SaleAmount>=500

--14
Select S.Name, C.CourseName from Courses C
join Enrollments E
on C.CourseID=E.CourseID
join Students S
on E.StudentID=S.StudentID

--15
Select P.ProductName,S.SupplierName from Products P
Join Suppliers S
on P.SupplierID=S.SupplierID
where S.SupplierName like '%Tech%'

--16
Select O.OrderID, O.TotalAmount, P.Amount from Orders O
Join Payments P
on O.OrderID=P.OrderID
where P.Amount<O.TotalAmount

--17
Select E.Name,D.DepartmentName from Employees E
Join Departments D
on E.DepartmentID=D.DepartmentID

--18
Select P.ProductName,C.CategoryName from Products P
join Categories C
on P.Category=C.CategoryID
where C.CategoryName in ('Electronics','Furniture');

--19
Select*from Customers1 C
Join Sales S
on C.CustomerID=S.CustomerID
where  C.Country='USA'

--20
Select O.OrderID,
    C.FirstName,
	C.LastName,
    C.Country,
    O.TotalAmount from Customers1 C
join Orders O
on C.CustomerID=O.CustomerID
where C.Country='Germany' and O.TotalAmount>100

--21
Select 
E1.Name as Employee1,
E2.Name as Employee2,
E1.DepartmentID as Department1,
E2.DepartmentID as Department2
from Employees E1
join Employees E2 on E1.EmployeeID < E2.EmployeeID
where E1.DepartmentID <> E2.DepartmentID;

--22
Select P.PaymentID,P.OrderID,P.Amount,(O.Quantity*Pro.Price) as ExpectedAmount from Payments P
join Orders O
on P.OrderID=O.OrderID
join Products Pro
on O.ProductID=Pro.ProductID
where P.Amount<>(O.Quantity*Pro.Price);
