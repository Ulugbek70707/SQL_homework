--1
Select E.Name, E.Salary, D.DepartmentName from Employees E
join Departments D
on E.DepartmentID=D.DepartmentID
where E.Salary>50000
order by D.DepartmentName

--2
Select C.FirstName, C.LastName, O.OrderDate from Customers C
join Orders O
on C.CustomerID=O.CustomerID
where year(OrderDate)=2023

--3
Select E.Name, D.DepartmentName from Employees E
left join Departments D
on E.DepartmentID=D.DepartmentID

--4
Select S.SupplierName, P.ProductName from Suppliers S
left join Products P
on S.SupplierID=P.SupplierID
order by S.SupplierName

--5
Select O.OrderID, O.OrderDate, P.PaymentDate, P.Amount from Orders O
full outer join Payments P
on O.OrderID=P.OrderID
order by O.OrderID

--6
Select M.Name as ManagerName, E.Name as EmployeeName from Employees E
left join Employees M
on M.EmployeeID=E.ManagerID
order by M.Name

--7
Select S.Name,C.CourseName from Students S
full join Enrollments E
on S.StudentID=E.StudentID
full join Courses C
on E.CourseID=C.CourseID
where C.CourseName='Math 101';	

--8
Select C.FirstName, C.LastName, O.Quantity from Customers C
join Orders O
on C.CustomerID=O.CustomerID
where O.Quantity>3

--9
Select E.Name, D.DepartmentName from Employees E
join Departments D
on E.DepartmentID=D.DepartmentID
where D.DepartmentName='Human Resources'

--10
Select D.DepartmentName, count(E.EmployeeID) as EmployeeCount from Employees E
join Departments D
on E.DepartmentID=D.DepartmentID
group by D.DepartmentName
having count(E.EmployeeID)>5
