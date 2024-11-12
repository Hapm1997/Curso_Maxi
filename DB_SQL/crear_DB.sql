--use master
--go
--create database MundoPokemon_DB1
use MundoPokemon_DB1
go 
--create table Pokemons(
--	Id int
--);
--go
--create table Entrenadores(
--	Id int not null,
--	Nombre varchar(50),
--	Apellido varchar(50),
--	NickName varchar(50),
--	Email varchar(100),
--	Clave varchar(25),
--	FechaNacimiento date
--);

--Crear un primary key version corta
--primary key es un constraint(restriccion)
--create table Elementos(
--	Id int PRIMARY KEY,
--	Descripcion varchar(50)
--);
--Crear un primary key version larga
--create table Habilidades(
--	Id int not null,
--	Nombre varchar(50),
--	Descripcion varchar(250),
--	IdTipo int,
--	CONSTRAINT PK_HABILIDAD PRIMARY KEY(Id)
--);

--Crear clave foránea
--create table [Pokemons.Habilidades](
--	Id int not null,
--	IdPokemon int,
--	IdHabilidad int,
--	CONSTRAINT PK_POKEMON_HABILIDAD PRIMARY KEY(Id),
--	CONSTRAINT FK_POKEHABILIDAD_HABILIDADES FOREIGN KEY (IdHabilidad) REFERENCES Habilidades(Id)
--);
--Alter: add , alter , drop
--ALTER TABLE Pokemons
--ALTER COLUMN Id int not null

--ALTER TABLE Pokemons
--ADD Nombre varchar(50),
--	Numero int,
--	Bio varchar(250),
--	Altura float ;

--ALTER TABLE Pokemons
--add constraint PK_POKEMON primary key (Id)

ALTER TABLE [Pokemons.Habilidades]
add constraint FK_PokeHabilidad_Pokemons foreign key (IdPokemon) references Pokemons(Id)