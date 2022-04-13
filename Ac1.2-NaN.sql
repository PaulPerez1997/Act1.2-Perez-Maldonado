create database ActNaN
use ActNaN
go
create table Pasteleros(
IDPasteleros bigint not null primary key identity (1,1),
DNI bigint not null unique check(DNI > 0),
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Nacimiento date not null check (Nacimiento < GETDATE())
)
go
create table TiposDePastelerias(
IDTipos bigint not null primary key check (IDTipos>0),
Tipo varchar(50) not null,
HorasXTurno bigint not null check (HorasXTurno > 3)
)
go
create table Categoria (
IDNivel bigint not null primary key check (IDNivel>0),
Nivel varchar(50) not null,
Sueldo money not null check (Sueldo > 0)
)
go
create table PastelerosYTipos(
IDReferencia bigint not null primary key check (IDReferencia > 0),
Pastelero bigint not null foreign key references Pasteleros(IDPasteleros),
Tipo bigint not null foreign key references TiposDePasteleriaS(IDTipos),
Nivel bigint not null foreign key references Categoria(IDNivel)
)
go
/*
Plantee un problema similar al del  ejemplo
la tabla (pasteleros y tipo) se relacionan con las tres tablas mediante
el ID de Pastelero, ID del tipo de pasteleria y el nivel de Experiencia
y agregue un id de referencia al puesto seria la idea en la suposicion
que un pastelero sepa mas de un tipo de pasteleria
*/
