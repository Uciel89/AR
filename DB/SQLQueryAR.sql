create database ar_2023

use ar_2023

create table Usuario (
	usuario nvarchar(30) primary key,
	password nvarchar(50),
	email nvarchar(50) 
)

create table Curso (
	id_curso int primary key,
	nombre nvarchar(50),
	cant_alumnos int,
	turno nvarchar(30),
)

create table DescripcionSalon (
	id int primary key,
	cant_ventanas int,
	alto int,
	largo int,
	ancho int
)

create table Salon(
	id_salon int primary key,
	id_descripcion_salon int foreign key references DescripcionSalon(id),
	id_curso int foreign key references Curso(id_curso)
)