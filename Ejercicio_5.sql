show databases;
drop database if exists Ejercicio_BaresMusicales;
create database Ejercicio_BaresMusicales;
use Ejercicio_BaresMusicales;

create table localidad (
Cod_provincia int primary key auto_increment,
Nombre varchar(200),
Calle varchar(200));

create table Pub (
Cod_pub int primary key auto_increment,
Nombre varchar(200),
Licencia varchar(200),
F_abertura date,
Horario enum ('HOR1', 'HOR2' , 'HOR3'),
Cod_provincia int,
foreign key (Cod_provincia) references localidad(Cod_provincia));

create table Titular (
DNI_titular varchar(200),
Nombre varchar(200),
Cod_pub int not null,
Primary key (DNI_titular),
foreign key (Cod_pub) references Pub(Cod_pub));

create table Empleado (
DNI_empleado varchar(200),
Nombre varchar(200),
Cargo enum( 'seguridad', 'limpieza', 'camarero'),
primary key(DNI_empleado));

create table Stock ( 
Cod_producto int primary key auto_increment,
Nombre varchar(200),
Cantidad int check(Cantidad>0),
Precio decimal(5,2),
Cod_pub int not null,
foreign key (Cod_pub) references Pub(Cod_pub));

create table pub_empleado (
Cargo enum ('seguridad', 'limpieza', 'camarero') ,
DNI_empleado varchar(200),
Cod_pub int not null,
primary key (DNI_empleado),
foreign key (DNI_empleado) references Empleado(DNI_empleado),
foreign key (Cod_pub) references Pub(Cod_pub));
