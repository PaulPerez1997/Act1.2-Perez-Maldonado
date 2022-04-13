use Act1aN
go
create table Planeta(
IDPlaneta bigint not null primary key check (IDPlaneta > 0),
SuperficieEnMillon bigint not null check (SuperficieEnMillon > 1000)
)
go

create table Humano(
IDHumano bigint not null primary key check (IDHumano>0),
IDPlaneta bigint not null foreign key references Planeta(IDPlaneta),
Nombre varchar (50) not null, 
Apellido varchar (50) not null,
Sexo varchar (10) not null check ( (Sexo='hombre') or (Sexo='mujer'))
)
go
