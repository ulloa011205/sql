--se necesita mostrar los clientes, con  cantidades compradas, entre 0 y 100, ademas se
-- necesita unicamente las ventas a partir de la fecha 1/1/19996.

SELECT  CustomerName,Quantity,OrderDate
FROM [Customers] C
INNER JOIN[orders] O on O.CustomerID=C.CustomerID
INNER JOIN[OrderDetails] Ord on Ord.OrderID=O.OrderID
WHERE Quantity BETWEEN 0 and 100
GROUP by Quantity
HAVING OrderDate>='1/1/19956%'

--se necesita  los medios de transporte de producto,con los productos
--categorias que cada uno de ellos trabaja

SELECT ShipperName,SupplierName,ProductID,pr.CategoryID
FROM [Shippers] ship
INNER JOIN[Suppliers] sup on sup.phone=ship.Phone
INNER JOIN[Products] pr on pr.SupplierID=sup.SupplierID
INNER JOIN[Categories] ca on ca.CategoryID=pr.CategoryID
--se necesitan los proveedores en los producto,categorias que cada uno provee
SELECT SupplierName,ProductName,Products.CategoryID
from Suppliers
INNER JOIN Products on Products.SupplierID=Suppliers.SupplierID
INNER JOIN Categories on Categories.CategoryID=Products.CategoryID 

-- se les pide  mostrar el nombre del empleado, las ordenes ,pais del pedido
-- y el transporte que lleva su pedido

SELECT FirstName as Nombre_empleado,OrderID,Country,ShipperName as transporte
FROM Employees
INNER JOIN orders on Orders.EmployeeID=Employees.EmployeeID
INNER JOIN Customers on Customers.CustomerID=Orders.CustomerID
INNER JOIN Shippers on Shippers.ShipperID=Orders.ShipperID

--se necesitan los nombres de los empleados, las ventas totales realizadas por ellos,
-- los productos con sus categorias , el medio de transporte de estos productos ,ademas
--del nombre  del proveedor de estos productos,su pais,ciudad,direccion y telefono de contacto
SELECT FirstName as nombres_empleados, count(OrderDetails.OrderID) as ordenes_realizadas,OrderDetailID,ProductName,Products.CategoryID,
ShipperName,SupplierName,Country,City,Address,ContactName
FROM  Employees
INNER JOIN Orders on Orders.EmployeeID=Employees.EmployeeID
INNER JOIN OrderDetails on OrderDetails.OrderID=Orders.OrderID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Categories on Categories.CategoryID=Products.CategoryID
INNER JOIN Shippers on Shippers.ShipperID=Orders.ShipperID
INNER JOIN Suppliers on  Suppliers.Phone=Shippers.Phone
group by OrderDetails.OrderID
order by OrderDetails.OrderID ASC

