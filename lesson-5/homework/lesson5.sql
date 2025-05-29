
--1
SELECT ProductName AS Name, Price, Category, StockQuantity
FROM Products;

--2
SELECT * FROM Customers as Client;

--3
select ProductName from Products 
Union
Select ProductName from Products_Discounted

--4
select ProductName, Category from Products
intersect
select ProductName, Category from Products_Discounted;

--5 
Select distinct FirstName, LastName, Country from Customers;

--6 
Select*, 
case when Price>1000 then 'High'
else 'Low'
end as Value
from Products;

--7 
Select *, IIF(StockQuantity>100, 'Yes', 'No') as Status from Products_Discounted;

--8 
Select ProductName from Products
Union
Select ProductName from Products_Discounted;

--9 
Select ProductName from Products
Except
Select ProductName from Products_Discounted;

--10 
Select*, IIF(Price>1000, 'Expensive', 'Affordable') as Pricecategory from Products;

--11 
Select*from Employees
where Age<25 or Salary>60000

--12 
UPDATE Employees
SET Salary = Salary * 1.10
WHERE DepartmentName = 'HR' OR EmployeeID = 5;
Select*from Employees;

--13 
Select*, 
case when SaleAmount>500 then 'Top Tier'
when SaleAmount between 200 and 500 then 'Mid Tier'
else 'Low Tier'
end as Status
from Sales;

--14 
Select CustomerID from Orders
except
Select CustomerID from Sales;
 
--15 
Select CustomerID, Quantity,
Case when Quantity = 1 then '3%'
        when Quantity between 2 and 3 then '5%'
        else '7%'
    end as DiscountPercentage
from Orders;
