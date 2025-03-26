 SELECT e.EmployeeID,
 c. CategoryName,
 od. Quantity
 FROM [ Categories] C
 INNER JOIN [Products] P on c.CategoryID=p.CategoryID

SELECT c.CategoryName,
       p.ProductName
 FROM [Categories] c
 INNER JOIN[Products] p on c.CategoryID=p.CategoryID
 
SELECT CategoryName,
(SELECT ProductName from Products
WHERE Categories.CategoryID=CategoryID) as nombre_de_producto
 from Categories
 
SELECT ProductName,
        Quantity
FROM [Products] P
INNER JOIN [OrderDetails] O on P.ProductID= O.ProductID

SELECT ProductName,
(SELECT Quantity from OrderDetails
WHERE Products.ProductID=ProductID) as Cantidad_vendida
from Products

SELECT FirstName,
       LastName,
	   OrderDate,
	   OrderID
FROM [Employees] E
INNER JOIN [Orders] O on e.EmployeeID=o.EmployeeID


SELECT CustomerName,
       OrderID
FROM [Customers] C
INNER JOIN[orders] O on c.CustomerID=o.CustomerID

 