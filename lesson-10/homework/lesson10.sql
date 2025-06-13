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

--11
Select P.ProductID, P.ProductName from Products P
left join Sales S
on P.ProductID=S.ProductID
where S.ProductID is null

--12
Select C.FirstName,C.LastName, Count(O.OrderID) as Totalorders from Customers C
inner join Orders O
on C.CustomerID=O.CustomerID
group by C.FirstName, C.LastName
order by Totalorders desc;

--13
Select E.Name as EmployeeName, D.DepartmentName from Employees E
inner join Departments D
on E.DepartmentID=D.DepartmentID

--14
Select E1.Name as Emp1, E2.Name as Emp2, E1.ManagerID from Employees E1
join Employees E2
on E1.ManagerID=E2.ManagerID
and E1.EmployeeID<E2.EmployeeID
where E1.ManagerID is not null
order by E1.ManagerID

--15
Select C.FirstName, C.LastName, O.OrderID, O.OrderDate from Orders O
join Customers C
on C.CustomerID=O.CustomerID
Where year(O.OrderDate)=2022;

--16
Select E.Name, E.Salary, D.DepartmentName from Employees E
join Departments D
on E.DepartmentID=D.DepartmentID
where D.DepartmentName='Sales' and E.Salary>=60000

--17
Select O.OrderID, O.OrderDate, P.PaymentDate, P.Amount from Orders O
inner join Payments P
on O.OrderID=P.OrderID

--18
Select P.ProductID, P.ProductName from Products P
left join Orders O
on P.ProductID=O.ProductID
where O.ProductID is null

--19
SELECT 
    E.Name AS EmployeeName,
    E.Salary
FROM 
    Employees E
INNER JOIN (
    SELECT 
        DepartmentID, 
        AVG(Salary) AS AvgSalary
    FROM 
        Employees
    GROUP BY 
        DepartmentID
) AS DAvg ON E.DepartmentID = DAvg.DepartmentID
WHERE 
    E.Salary > DAvg.AvgSalary;

--20
Select O.OrderID,O.OrderDate from Orders O
left join Payments P
on O.OrderID=P.OrderID
where O.OrderDate<'2020-01-01' and P.OrderID is null

--21
Select P.ProductID, P.ProductName from Products P
left join Categories C
on P.Category=C.CategoryID
where C.CategoryID is null

--22
SELECT 
    E1.Name AS Employee1, 
    E2.Name AS Employee2, 
    E1.ManagerID, 
    E1.Salary
FROM 
    Employees E1
JOIN 
    Employees E2 
    ON E1.ManagerID = E2.ManagerID 
    AND E1.EmployeeID < E2.EmployeeID 
WHERE 
    E1.Salary > 60000 
    AND E2.Salary > 60000;

--23
Select E.Name, D.DepartmentName from Employees E
join Departments D
on E.DepartmentID=D.DepartmentID
where D.DepartmentName like 'M%'

--24
Select S.SaleID, P.ProductName, S.SaleAmount from Products P
join Sales S
on P.ProductID=S.ProductID
where S.SaleAmount>500

--25
SELECT 
    S.StudentID, 
    S.Name
FROM 
    Students S
LEFT JOIN Enrollments E ON S.StudentID = E.StudentID
LEFT JOIN Courses C ON E.CourseID = C.CourseID AND C.CourseName = 'Math 101'
WHERE 
    C.CourseID IS NULL;

--26
Select O.OrderID,O.OrderDate,P.PaymentID from Orders O
left join Payments P
on O.OrderID=P.OrderID
where P.PaymentID is null

--27
Select P.ProductID, P.ProductName, C.CategoryName from Products P
inner join Categories C
on P.Category=C.CategoryID
where C.CategoryName in ('Electronics','Furniture')
