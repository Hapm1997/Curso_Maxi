--use master
--go
--create database MundoPokemon_DB1
use MundoPokemon_DB1
go 
create table Pokemons(
	Id int
);
go
create table Entrenadores(
	Id int not null,
	Nombre varchar(50),
	Apellido varchar(50),
	NickName varchar(50),
	Email varchar(100),
	Clave varchar(25),
	FechaNacimiento date
);

