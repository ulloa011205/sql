--Primeros 10 INNER JOIN
--1)obtener los nombres de los clientes y las fechas de sus pedidos
SELECT CustomerName,OrderDate
FROM Customers
 INNER JOIN Orders on Orders.CustomerID=Customers.CustomerID
 
--2)Lista los productos y sus respectivas categorias
SELECT ProductName,Products.CategoryID
FROM Products 
INNER JOIN Categories on Categories.CategoryID=Products.CategoryID

--3)Mostrar los nombres de los empleados y las ordenes que gestionaron
SELECT FirstName as Nombre_de_empleados,count(OrderID)
FROM Employees
INNER JOIN Orders on Orders.EmployeeID=Employees.EmployeeID
GROUP by OrderID

--4)Obtener los nombres los productos y de sus proveedores
SELECT ProductName,SupplierName
FROM Products
INNER JOIN Suppliers on Suppliers.SupplierID=Products.SupplierID

--5)Lista de pedidos y los metodos de envio usados
SELECT OrderID, ShipperName
FROM Orders
INNER JOIN Shippers on Shippers.ShipperID=Orders.ShipperID

--6)Mostrar los detalles de cada pedidos y los porductos correspondientes
SELECT OrderDetailID,Quantity, ProductName
FROM OrderDetails
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID

--7)Lista los nombres de los clientes juntos con los empleados que atendieron sus pedidos
SELECT CustomerName as Nombres_de_clientes, OrderID,FirstName as Nombres_de_empleados
FROM Customers
INNER JOIN Orders on Orders.CustomerID=Customers.CustomerID
inner JOIN Employees on Employees.EmployeeID=Orders.EmployeeID

--8)Obtener los nombres de los empleados y las ordenes que han atendido
SELECT FirstName as nombres_de_empleados,OrderID
FROM Employees
INNER JOIN Orders on Orders.EmployeeID=Employees.EmployeeID

--9)Mostrar los productos y sus respectiva unidades de medidas
SELECT ProductName,ProductID,Unit as unidades
FROM Products

--10)Lista los proveedores y los productos que suministran
SELECT SupplierName,ProductName
FROM Suppliers
INNER JOIN Products on Products.SupplierID=Suppliers.SupplierID

--Segundos 10 INNER JOIN
--1)Obtener los nombres de los clientes, los pedidos y las fechas en la que se realizaron
SELECT CustomerName,OrderID,OrderDate
FROM Customers
INNER JOIN Orders on Orders.CustomerID=Customers.CustomerID

--2)Listar los  productos,sus categorias y los proveedores
SELECT ProductName,Products.CategoryID,SupplierName
FROM  Products
INNER JOIN Categories on Categories.CategoryID=Products.CategoryID
INNER JOIN Suppliers on Suppliers.SupplierID=Products.SupplierID

--3)Mostrar los emnpleados, los pedidos gestionados y los clientes correspondientes
SELECT FirstName as nombres_de_empleados, count(OrderID), CustomerName
FROM Employees
INNER JOIN Orders on Orders.EmployeeID=Employees.EmployeeID
INNER JOIN Customers on Customers.CustomerID=Orders.CustomerID
GROUP by OrderID

--4)Obtener los detalles de los productos, los productos y sus categorias
SELECT OrderDetailID,ProductName,Products.CategoryID
FROM OrderDetails
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN categories on Categories.CategoryID=Products.CategoryID

--5)listar los pedidos, los clientes  y los empleados involucrados
SELECT OrderID,CustomerName, FirstName as nombres_de_empleados
FROM Orders
INNER JOIN Customers on Customers.CustomerID=Orders.CustomerID
INNER JOIN Employees on Employees.EmployeeID=Orders.EmployeeID

--6)Mostrar los productos , sus precios y los proveedores que los venden
SELECT ProductName, Price as precios, SupplierName
FROM Products
INNER JOIN  Suppliers on Suppliers.SupplierID=Products.SupplierID

--7)Obtener los pedidos, los productos involucrados y sus cantidades
SELECT OrderDetails.OrderID, ProductName, Quantity
FROM Orders
INNER JOIN OrderDetails on OrderDetails.OrderID=Orders.OrderID
INNER JOIN Products on OrderDetails.ProductID=OrderDetails.ProductID

--8)Lista los empleados, los pedidos y los metodos de envio
SELECT FirstName as nombre_de_empleados,OrderID,ShipperName
FROM Employees
INNER JOIN Orders on Orders.EmployeeID=Employees.EmployeeID
INNER JOIN Shippers on Shippers.ShipperID=Orders.ShipperID

--9)Mostrar los clientes, sus pedidos y los productos comprados
SELECT CustomerName,OrderDetails.OrderID,OrderDetails.ProductID,ProductName
FROM Customers
INNER JOIN Orders on Orders.CustomerID=Customers.CustomerID
INNER JOIN OrderDetails on OrderDetails.OrderID=Orders.OrderID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID

--10)Obtener los pedidos, los productos y la categorias de cada producto
SELECT OrderDetails.OrderID,OrderDetails.ProductID,ProductName,Products.CategoryID
FROM Orders
inner JOIN OrderDetails on OrderDetails.OrderID=Orders.OrderID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Categories on Categories.CategoryID=Products.CategoryID

--tercer INNER JOIN
--1)Listar los pedidos con la informacion del clientess,empleados,productos y cantidades
SELECT OrderDetails.OrderID,CustomerName,FirstName as nombres_de_empleados,ProductName,Quantity
FROM Orders
INNER JOIN Customers on Customers.CustomerID=Orders.CustomerID
INNER JOIN Employees on Employees.EmployeeID=Orders.EmployeeID
INNER JOIN OrderDetails on OrderDetails.OrderID=Orders.OrderID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID

--2)Obtener los nombres de los productos,sus categorias,proveedores y pedidos en los que se incluyen
SELECT OrderDetails.ProductID,ProductName,Categories.CategoryID, SupplierName, OrderDetails.OrderID
FROM OrderDetails
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Categories on Categories.CategoryID=Products.CategoryID
INNER JOIN Suppliers on Suppliers.SupplierID=Products.SupplierID
INNER JOIN Orders on Orders.OrderID=OrderDetails.OrderID

--3)Mostrar los pedidos con imformacion del cliente,empleados, transprotitas y detalles del pedido
SELECT OrderDetails.OrderID,OrderDetailID,CustomerName,Country,city,Address,PostalCode,
FirstName,LastName,BirthDate,Phone,
ShipperName,Phone
FROM Orders
INNER JOIN OrderDetails on OrderDetails.OrderID=Orders.OrderID
INNER JOIN Customers on Customers.CustomerID=orders.CustomerID
inner JOIN Employees on Employees.EmployeeID=orders.EmployeeID
INNER JOIN Shippers on Shippers.ShipperID=Orders.ShipperID

--4)Obtener una lista de pedidos con detalles completos de cliente, empleado y productos.
SELECT OrderDetailID,OrderDetails.OrderID,CustomerName,FirstName as empleados,ProductName
FROM OrderDetails
INNER JOIN Orders on orders.OrderID=OrderDetails.OrderID
INNER JOIN Customers on Orders.CustomerID=Customers.CustomerID
INNER JOIN Employees on Employees.EmployeeID=Orders.EmployeeID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID

--5)Mostrar información de pedidos incluyendo datos del producto y la categoría.
SELECT OrderID,OrderDetailID ,Quantity,OrderDetails.ProductID,ProductName,Unit,Price,
Products.CategoryID,CategoryName
FROM OrderDetails
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Categories on Categories.CategoryID=Products.CategoryID

--6)Listar los clientes, los empleados que gestionaron su pedido, los productos comprados y
--sus proveedores.
SELECT CustomerName,FirstName as empleados,OrderDetails.OrderID,OrderDetailID,ProductName,SupplierName
FROM Customers 
INNER JOIN Orders on Orders.CustomerID=Customers.CustomerID
INNER JOIN Employees on Employees.EmployeeID=orders.EmployeeID
INNER JOIN OrderDetails on OrderDetails.OrderID=Orders.OrderID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Suppliers on Suppliers.SupplierID=Products.SupplierID

--7)Obtener información de los pedidos con los clientes y los productos vendidos.
SELECT OrderDetails.OrderID,OrderDetailID,CustomerName,ProductName
FROM Orders
INNER JOIN OrderDetails on OrderDetails.OrderID=orders.OrderID
INNER JOIN Customers on Customers.CustomerID=orders.CustomerID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID

--8)Mostrar los pedidos, los clientes y los métodos de envío junto con los productos
--comprados.
SELECT OrderDetails.OrderID,OrderDetailID,CustomerName,ProductName,ShipperName
FROM Orders
INNER JOIN OrderDetails on OrderDetails.OrderID=orders.OrderID
INNER JOIN Customers on Customers.CustomerID=orders.CustomerID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Shippers on Shippers.ShipperID=Orders.ShipperID

--9)Obtener una lista de productos con sus categorías, proveedores y detalles en los pedidos.
SELECT OrderDetailID,ProductName,Products.CategoryID,SupplierName
FROM OrderDetails
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Categories on Categories.CategoryID=Products.CategoryID
INNER JOIN Suppliers on Suppliers.SupplierID=Products.SupplierID

--10)Mostrar los empleados, los pedidos, los clientes, los productos y los métodos de envío.
SELECT FirstName as empleados,OrderDetails.OrderID,OrderDetailID,CustomerName,ProductName,ShipperName
FROM Employees
INNER JOIN Orders on Orders.EmployeeID=Employees.EmployeeID
INNER JOIN OrderDetails on OrderDetails.OrderID=orders.OrderID
INNER JOIN Customers on Customers.CustomerID=orders.CustomerID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Shippers on Shippers.ShipperID=Orders.ShipperID


--cuarto INNER JOIN
--1) Obtener una lista de pedidos con información completa del cliente, empleado,
--transportista y productos involucrados.
SELECT OrderID,CustomerName,Country,City,Address,FirstName ,LastName,BirthDate
FROM Orders
INNER JOIN Customers on Customers.CustomerID=Orders.CustomerID
INNER JOIN Employees on Employees.EmployeeID=Orders.EmployeeID

--2)Mostrar los clientes con detalles de sus pedidos y los productos adquiridos, junto con los
--proveedores.
SELECT CustomerName,OrderDetails.OrderID,OrderDetailID,ProductName,SupplierName
FROM Customers 
INNER JOIN Orders on Orders.CustomerID=Customers.CustomerID
INNER JOIN OrderDetails on OrderDetails.OrderID=Orders.OrderID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Suppliers on Suppliers.SupplierID=Products.SupplierID


--3) Obtener una vista de los empleados y todos los pedidos que han atendido con detalles
--completos.
SELECT orders.EmployeeID,OrderDetails.OrderID,OrderDetailID
FROM Employees
INNER JOIN Orders on orders.EmployeeID=Employees.EmployeeID
INNER JOIN OrderDetails on OrderDetails.OrderID=Orders.OrderID



--4)Mostrar los detalles de pedidos incluyendo el cliente, empleado, productos y proveedores.
SELECT OrderDetailID,OrderDetails.OrderID,CustomerName, FirstName as nombre_de_empleados,
ProductName,SupplierName
FROM OrderDetails
INNER JOIN Orders on Orders.OrderID=OrderDetails.OrderID
INNER JOIN Customers on Orders.CustomerID=Customers.CustomerID
INNER JOIN Employees on Employees.EmployeeID=Orders.EmployeeID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Suppliers on Suppliers.SupplierID=Products.SupplierID

--5)Listar todos los pedidos con información detallada de clientes, empleados, productos y
--métodos de envío.
SELECT OrderDetails.OrderID,OrderDetailID,CustomerName,FirstName as empleados,ProductName,ShipperName
FROM Orders
INNER JOIN OrderDetails on OrderDetails.OrderID=orders.OrderID
INNER JOIN Customers on Customers.CustomerID=orders.CustomerID
INNER JOIN Employees on Employees.EmployeeID=orders.EmployeeID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Shippers on Shippers.ShipperID=Orders.ShipperID

--6)Obtener los detalles de pedidos con los productos, proveedores, clientes y empleados
--involucrados.
SELECT OrderDetailID,OrderDetails.OrderID,ProductName,SupplierName,CustomerName,FirstName as empleados
FROM OrderDetails
INNER JOIN Orders on orders.OrderID=orders.OrderID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Suppliers on Suppliers.SupplierID=Products.SupplierID
INNER JOIN Customers on Customers.CustomerID=orders.CustomerID
INNER JOIN Employees on Employees.EmployeeID=orders.EmployeeID

--7) Mostrar una lista completa de los pedidos con datos del cliente, empleado, producto,
--categoría y proveedor
SELECT OrderDetails.OrderID, OrderDetailID, CustomerName,FirstName as empleados , ProductName, Products.CategoryID,
SupplierName
FROM Orders
INNER JOIN OrderDetails on OrderDetails.OrderID=Orders.OrderID
INNER JOIN Customers on Customers.CustomerID=orders.CustomerID
INNER JOIN Employees on Employees.EmployeeID=orders.EmployeeID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Categories on Categories.CategoryID=Products.CategoryID
INNER JOIN Suppliers on Suppliers.SupplierID=Products.SupplierID
--8)Listar las órdenes con detalles completos de los clientes, empleados, transportistas,
--productos y sus categorías.
SELECT OrderDetailID,OrderDetails.OrderID, CustomerName,FirstName as empleados,
ShipperName,ProductName,Products.CategoryID
FROM OrderDetails
INNER JOIN Orders on Orders.OrderID=OrderDetails.OrderID
INNER JOIN Customers on Orders.CustomerID=Customers.CustomerID
INNER JOIN Employees on Employees.EmployeeID=orders.EmployeeID
INNER JOIN Shippers on Shippers.ShipperID=orders.ShipperID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Categories on Categories.CategoryID=Products.CategoryID

--9)Obtener una vista consolidada de la base de datos con pedidos, clientes, empleados,
--productos, proveedores y transportistas.
SELECT OrderDetails.OrderID,OrderDetailID,CustomerName,FirstName as empleados,ProductName,SupplierName,ShipperName
FROM Orders
INNER JOIN OrderDetails on OrderDetails.OrderID=orders.OrderID
INNER JOIN Customers on Customers.CustomerID=orders.CustomerID
INNER JOIN Employees on Employees.EmployeeID=orders.EmployeeID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Suppliers on Suppliers.SupplierID=Products.SupplierID
INNER JOIN Shippers on Shippers.ShipperID=Orders.ShipperID

--10)Mostrar la relación completa entre órdenes, clientes, empleados, productos,
--proveedores, transportistas y detalles del pedido.
SELECT OrderDetails.OrderID,OrderDetailID,orders.CustomerID,orders.EmployeeID,
OrderDetails.ProductID,Products.SupplierID,
orders.ShipperID
FROM Orders
INNER JOIN OrderDetails on OrderDetails.OrderID=orders.OrderID
INNER JOIN Customers on Customers.CustomerID=orders.CustomerID
INNER JOIN Employees on Employees.EmployeeID=orders.EmployeeID
INNER JOIN Products on Products.ProductID=OrderDetails.ProductID
INNER JOIN Suppliers on Suppliers.SupplierID=Products.SupplierID
INNER JOIN Shippers on Shippers.ShipperID=Orders.ShipperID