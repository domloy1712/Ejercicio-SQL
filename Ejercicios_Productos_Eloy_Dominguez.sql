show databases;
create database Ejercicio_Productos;
use Ejercicio_Productos;
drop table if exists Productos;
create table Productos(
id int unsigned,
Nombre varchar(150),
Descripcion text,
Precio decimal(4,2),
Stock int unsigned);
alter table Productos
add Hay boolean;
alter table Productos
modify Nombre varchar(100);
alter table Productos
drop precio;
insert into Productos (id,Nombre,Descripcion,Stock) values ( 1,'Camiseta', 'Cosa Chula',50 );
insert into Productos (id,Nombre,Descripcion,Stock) values ( 1,'Pendrive', 'USB',20 );
select * from productos;
select Precio,Nombre from productos;
drop table productos





