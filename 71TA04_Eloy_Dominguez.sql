show databases;
drop database ejercicio_productos;
create database Ejercicio4;
use Ejercicio4;
drop table if exists Productosinformatica;
create table Productosinformatica(
id int ,
producto varchar(50),
stock int unsigned,
precio decimal(5,3),
primary key (producto));
drop table if exists Proveedores;
create table Proveedores(
id int,
nombre varchar(50),
ubicacion varchar(50),
empresa varchar(50),
producto varchar(50),
telefono varchar(50),
primary key (id));
alter table Proveedores add constraint fk_producto foreign key (producto) references Productosinformatica(producto);
insert into Proveedores ( id,nombre,ubicacion,empresa,producto,telefono ) values ( 1,'Paco','Bilbao','SoftS.L.','HDD', 655432243);
insert into Proveedores ( id,nombre,ubicacion,empresa,producto,telefono ) values ( 2,'Maria','Madrid','HardS.L.','RAM', 67899193);
insert into Proveedores ( id,nombre,ubicacion,empresa,producto,telefono ) values ( 3,'Pablo','Barcelona','InfoS.L.','Placa Base', 644555789);
insert into Productosinformatica ( id,producto,stock,precio ) values ( 1,'HDD', 30 , 4.523 );
insert into Productosinformatica ( id,producto,stock,precio ) values ( 2,'RAM', 100 , 5.327);
insert into Productosinformatica ( id,producto,stock,precio ) values ( 2,'Placa Base', 500 , 3.450);
select producto,nombre from Proveedores








