--1
Select Category, count(*) as Total_Number from Products
group by Category

--2
Select Category, Avg(Price) as Avg_Price from Products
group by Category
having Category='Electronics'

--3
Select*from Customers
where City like 'L%'

--4
Select*from Products
where ProductName like '%er'

--5
Select*from Customers
where Country like '%A'

--6
Select Max(Price) as max_price from Products

--7
Select*, case when StockQuantity<30 then 'Low Stock' else
'Sufficient'
end 
as QuantityStatus
from Products

--8
Select Country, count(*) as Number_of_Customers from Customers
group by Country

--9
Select max(Quantity) as max_quantity, min(Quantity) as min_quantity from Orders

--10
Select CustomerID, Orderdate  from Orders
where Month(Orderdate)='01' and Year(Orderdate)='2023'
except
Select CustomerID, InvoiceDate from Invoices
where Month(InvoiceDate)='01' and Year(InvoiceDate)='2023'

--11
Select ProductName from Products
union all
Select ProductName from Products_Discounted

--12
Select ProductName from Products
union
Select ProductName from Products_Discounted
order by ProductName

--13
Select year(OrderDate) as Order_Year,Avg(TotalAmount) as Avg_Amount from Orders
group by year(OrderDate)

--14
Select ProductName, Price,
case when Price>=500 then 'High'
when Price between 100 and 500 then 'Mid'
else 'Low'
end as Pricegroup
from Products

--15
Select* INTO Population_Each_Year from (Select * from City_Population) as sourcetable
Pivot 
(Sum(population) for year in ([2012], [2013]))
as Pivottable;
Select*from Population_Each_Year

--16
Select ProductID, sum(SaleAmount) as total_sales_per_product from Sales
group by ProductID

--17
Select ProductName from Products
where ProductName like '%oo%'

--18
Select* INTO Population_Each_City from (Select * from City_Population) as sourcetable 
Pivot
(Sum(population) for district_name in ([Chilonzor], [Yakkasaroy], [Mirobod],[Yashnobod],[Bektemir]))
as Pivottable;
Select*from Population_Each_City

--19
	SELECT TOP 3  CustomerID, SUM(TotalAmount) AS TotalSpent
FROM 
    Invoices
GROUP BY 
    CustomerID
	ORDER BY 
    TotalSpent DESC;

--20
SELECT 
    City,
    Year,
    Population
INTO City_Population
FROM 
    Population_Each_Year
UNPIVOT (
    Population FOR Year IN ([2012], [2013])
) AS unpvt;


--21
Select P.ProductName, count(S.SaleId) as number_of_Sales from Products as P
inner join Sales as S
on S.ProductID=P.ProductID
group by ProductName
Order by number_of_Sales DESC

--22
SELECT 
    Year,
    City,
    Population
INTO City_Population
FROM 
    Population_Each_City
UNPIVOT (
    Population FOR City IN ([Chilonzor], [Yakkasaroy], [Mirobod],[Yashnobod],[Bektemir])
) AS unpvt;

