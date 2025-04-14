show databases;
drop database if exists tienda_de_ropa;
create database tienda_de_ropa;
use tienda_de_ropa;
create table Prendas(
id_Prenda int primary key auto_increment,
Descripcion varchar(50),
Talla char(2),
Precio decimal(4,2));

create table Clientes(
Id_cliente int primary key auto_increment,
Nombre varchar(100),
email varchar(200),
Fecha_nac date);

create table Compras( 
id_compra int primary key auto_increment, 
id_cliente int,
id_prenda int,
fecha_compra date,
foreign key (Id_Cliente) references Clientes(Id_cliente),
foreign key (id_Prenda) references Prendas(id_Prenda));

INSERT INTO Prendas(Descripcion, Talla, Precio) VALUES ('Camiseta Roja', 'M', 15.00); 
INSERT INTO Prendas(Descripcion, Talla, Precio) VALUES ('Jeans Azules', 'L', 40.00); 
INSERT INTO Prendas(Descripcion, Talla, Precio) VALUES ('Blusa Floral', 'S', 25.00); 
INSERT INTO Prendas(Descripcion, Talla, Precio) VALUES ('Vestido Negro', 'M', 50.00); 
INSERT INTO Prendas(Descripcion, Talla, Precio) VALUES ('Zapatos Deportivos', '42', 60.00); 
INSERT INTO Prendas(Descripcion, Talla, Precio) VALUES ('Gorra Negra', 'U', 10.00); 
INSERT INTO Prendas(Descripcion, Talla, Precio) VALUES ('Bufanda a Rayas', 'U', 12.00); 
INSERT INTO Prendas(Descripcion, Talla, Precio) VALUES ('Pantalones de Vestir', 'M', 35.00); 
INSERT INTO Prendas(Descripcion, Talla, Precio) VALUES ('Chaqueta de Cuero', 'L', 90.00); 
INSERT INTO Prendas(Descripcion, Talla, Precio) VALUES ('Sudadera Gris', 'M', 30.00);

INSERT INTO Clientes (Nombre, email, Fecha_nac) VALUES ('Juan Pérez', 'juan.perez@email.com', '1990-05-10'); 
INSERT INTO Clientes (Nombre, email, Fecha_nac) VALUES ('Ana González', 'ana.gonzalez@email.com', '1985-04-15');
INSERT INTO Clientes (Nombre, email, Fecha_nac) VALUES ('Luis Torres', 'luis.torres@email.com', '1998-02-20'); 
INSERT INTO Clientes (Nombre, email, Fecha_nac) VALUES ('Marta Rodríguez', 'marta.rodriguez@email.com', '2000-06-30'); 
INSERT INTO Clientes (Nombre, email, Fecha_nac) VALUES ('David Ruiz', 'david.ruiz@email.com', '1975-10-15'); 
INSERT INTO Clientes (Nombre, email, Fecha_nac) VALUES ('Sara López', 'sara.lopez@email.com', '2002-12-12'); 
INSERT INTO Clientes (Nombre, email, Fecha_nac) VALUES ('Miguel Fernández', 'miguel.fernandez@email.com', '1989-03-01'); 
INSERT INTO Clientes (Nombre, email, Fecha_nac) VALUES ('Lucía Morales', 'lucia.morales@email.com', '1992-09-05'); 
INSERT INTO Clientes (Nombre, email, Fecha_nac) VALUES ('Daniel Ortega', 'daniel.ortega@email.com', '1982-01-25'); 
INSERT INTO Clientes (Nombre, email, Fecha_nac) VALUES ('María Castro', 'maria.castro@email.com', '2001-08-17'); 

INSERT INTO Compras (Id_Cliente, Id_Prenda, Fecha_Compra) VALUES (1, 1, '2023-10-10'); 
INSERT INTO Compras (Id_Cliente, Id_Prenda, Fecha_Compra) VALUES (2, 3, '2023-10-15'); 
INSERT INTO Compras (Id_Cliente, Id_Prenda, Fecha_Compra) VALUES (3, 2, '2023-10-20'); 
INSERT INTO Compras (Id_Cliente, Id_Prenda, Fecha_Compra) VALUES (4, 4, '2023-10-22'); 
INSERT INTO Compras (Id_Cliente, Id_Prenda, Fecha_Compra) VALUES (5, 5, '2023-10-25'); 
INSERT INTO Compras (Id_Cliente, Id_Prenda, Fecha_Compra) VALUES (6, 6, '2023-10-26'); 
INSERT INTO Compras (Id_Cliente, Id_Prenda, Fecha_Compra) VALUES (7, 7, '2023-10-27'); 
INSERT INTO Compras (Id_Cliente, Id_Prenda, Fecha_Compra) VALUES (8, 8, '2023-10-28'); 
INSERT INTO Compras (Id_Cliente, Id_Prenda, Fecha_Compra) VALUES (9, 9, '2023-10-29'); 
INSERT INTO Compras (Id_Cliente, Id_Prenda, Fecha_Compra) VALUES (10, 10, '2023-10-30');

select * from Clientes; 
select * from Prendas; 
select * from Compras;
-- Ejercicio nivel inicial
select Nombre from Clientes;
select * from Prendas where Precio > 30;
select * from Compras where year (fecha_compra) = 2023 and month (fecha_compra) = 2023;
select * from Prendas where Descripcion like '%Camiseta Roja%';
select * from Prendas where Talla = 'M';
-- Ejercico nivel medio
select Count(*) from Prendas order by Talla;
select Avg(Precio) from Prendas;
-- Ejercicio nivel avanzado
select cl.nombre, p.descripcion
from compras co
join clientes cl
on co.Id_cliente=cl.Id_Cliente
join prendas p
on co.id_prenda=p.id_prenda;

select cl.nombre, co.fecha_compra, p.descripcion
from compras co
join clientes cl
on co.Id_cliente=cl.Id_Cliente
join prendas p
on co.id_prenda=p.id_prenda;


















