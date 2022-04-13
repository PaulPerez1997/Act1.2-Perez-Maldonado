use Act1a1
go
/*Relacion de 1:1 - Se cumple ya que la ID de la tabla ciudad es la clave foranea
y primaria del ID de la tabla caracteristicas */
create table ciudad(
ID bigint not null primary key  identity (1,1),
Nombre varchar(50) not null , 
)
go

create table caracteristica(
IDCiudad bigint not null primary key foreign key references ciudad(ID), 
Habitantes bigint not null check ( Habitantes > 0),
Automoviles bigint not null check ( Automoviles >= 0),
RecaudacionMensual bigint not null check ( RecaudacionMensual > 0)
)

