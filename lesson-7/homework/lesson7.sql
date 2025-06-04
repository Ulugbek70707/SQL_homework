--1
Select min(price)  as minprice from Products

--2
Select max(salary)  as maxsalary from Employees

--3
Select count(*) as Sum_of_rows from Customers

--4
Select count(distinct Category) as UniqueCategories from Products

--5
Select sum(SaleAmount) as TotalSales from Sales
where ProductID=7

--6
Select avg(Age) as Average_age_emp from Employees

--7
Select DepartmentName, Count(*) as Number_of_emp from Employees
group by DepartmentName

--8
Select Category, min(Price) as min_price, max(Price) as max_price from Products
group by Category;

--9
Select CustomerID, sum(SaleAmount) as Total_sales_per_customer from Sales
group by CustomerID

--10
Select DepartmentName,count(*) as EmployeeNum from Employees
group by DepartmentName
having count(*)>5;

--11
SELECT
    p.Category AS ProductCategory,
    SUM(s.SaleAmount) AS TotalSales,
    AVG(s.SaleAmount) AS AverageSales
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.Category;

--12
Select count(*) as Emp_HR from Employees
Where DepartmentName='HR'

--13
Select DepartmentName, min(Salary) as min_Salary, max(Salary) as max_Salary from Employees
group by DepartmentName


--14
Select DepartmentName, avg(Salary) as avg_Salary from Employees
group by DepartmentName

--15
Select DepartmentName, avg(Salary) as avg_Salary, COUNT(*) as num_of_Emp from Employees
group by DepartmentName

--16
Select Category, Avg(Price) as Avg_price from Products
group by Category
having Avg(Price)>400

--17
Select Month(SaleDate) as SaleYear, Sum(Saleamount) as TotalSales from Sales
group by Month(SaleDate)
order by SaleYear;
Select*from Sales

--18
Select CustomerID, sum(quantity) as Quantity_of_orders from Orders
group by CustomerID
having sum(quantity)>3
order by  Quantity_of_orders DESC;

--19
Select DepartmentName, Avg(Salary) as Avg_Salary from Employees
group by DepartmentName
having Avg(Salary)>60000;

--20
Select Category, Avg(Price) as Avg_Price from Products
group by Category
having Avg(Price)>150

--21
Select CustomerID, sum(SaleAmount) as Total_Sales from Sales
group by CustomerID
having sum(SaleAmount)>1500

--22
Select DepartmentName, Sum(salary) as Total_Salary, Avg(salary) as Avg_Salary from Employees
group by DepartmentName
having Avg(salary)>65000

--23
--Write a query to find total amount for the orders which weights more than $50 for each customer along with their least purchases.(least amount might be lower than 50, use tsql2012.sales.orders table,freight col, ask ur assistant to give the TSQL2012 database).
Select*from Orders


--24
Select  year(OrderDate) as orderyear, month(OrderDate) as ordermonth, sum(totalamount) as Total_Amount_month, count(distinct ProductID) as unique_products_sold from Orders
group by year(OrderDate), month(OrderDate)
having count(distinct ProductID)>=2
order by orderyear, ordermonth;

--25
Select Year(OrderDate) as Year_, Min(Quantity) as min_quantity, max(Quantity)as max_quantity from Orders
group by Year(OrderDate)
