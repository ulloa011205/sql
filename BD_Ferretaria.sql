
--1)Tabla Empleados
CREATE TABLE Empleados (Id_Empleado INTEGER PRIMARY KEY AUTOINCREMENT,
Nombre_Empleado TEXT NOT NULL, Apellido_Empleado TEXT NOT NULL,
Cedula TEXT NOT NULL,Telefono TEXT,Direccion_empleado TEXT,
Id_Pedido INTEGER)


--2)Tabla Clientes
CREATE TABLE Clientes(Id_Cliente INTEGER PRIMARY KEY AUTOINCREMENT,
Nombre_Cliente TEXT not null,Apellido_Cliente TEXT not null,
Cedula_Cliente TEXT not null,Telefono TEXT not NULL,
Cod_Postal TEXT,Id_Pedido INTEGER)
	

--3)Tabla pedidos
create TABLE pedidos(Id_Pedido INTEGER PRIMARY KEY AUTOINCREMENT,
Id_Cliente INTEGER,Id_Empleado INTEGER,
Id_Transporte INTEGER,
FOREIGN KEY (Id_Empleado) REFERENCES Empleados(Id_Empleado) on DELETE CASCADE,
FOREIGN KEY (Id_Cliente) REFERENCES Clientes(Id_Cliente) on DELETE CASCADE) 


--4)Tabla detalle de pedidos
CREATE TABLE Detalles_Pedidos(Id_Detalles INTEGER PRIMARY KEY AUTOINCREMENT,
Fecha_Entrega date,Cantidad TEXT not null,Nombre_Producto TEXT,
Id_Pedido INTEGER,Id_Inventario,
FOREIGN KEY (Id_Pedido) REFERENCES Pedidos(Id_Pedido) on DELETE CASCADE,
FOREIGN KEY (Id_Inventario) REFERENCES Inventario(Id_Inventario) on DELETE CASCADE)

--5)Tabla Transporte
CREATE TABLE Transporte(Id_Transporte INTEGER PRIMARY KEY AUTOINCREMENT,
Nombre_Transporte TEXT,
Telefono_Transporte TEXT not null,
Fecha_Entrega date not null,
Id_Pedido INTEGER,
FOREIGN KEY (Id_Pedido) REFERENCES Pedidos(Id_Pedidos) on DELETE CASCADE )




--6)Tabla categoria
CREATE TABLE Categoria(Id_Categoria INTEGER PRIMARY KEY AUTOINCREMENT,
Nombre_Categoria TEXT,
Descripcion TEXT NOT NULL)

--7)tabla Proveedores
CREATE TABLE Proveedores(Id_Proveedor INTEGER PRIMARY KEY AUTOINCREMENT not null,
Nombre_Proveedor TEXT NOT NULL,
Telefono TEXT not null,
Cod_Postal TEXT)

--8)Tabla Inventario
CREATE TABLE Inventario(Id_Inventario INTEGER PRIMARY KEY AUTOINCREMENT,
Nombre_Producto TEXT,
Unidad TEXT,Precio REAL not null,
Id_Categoria INTEGER,
Id_Proveedor INTEGER,
FOREIGN KEY (Id_Categoria) REFERENCES Categoria(Id_Categoria) on DELETE CASCADE,
FOREIGN KEY (Id_Proveedor) REFERENCES Proveedores(Id_Proveedor) on DELETE CASCADE)
