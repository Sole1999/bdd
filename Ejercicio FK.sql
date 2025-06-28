create table Personas(
cedula char(10) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
estatura decimal,
fecha_nacimiento date,
hora_nacimiento time,
cantidad_ahorrada money,
numero_hijos int,
constraint presonas_pk primary key (cedula)
)

alter table personas
add column estado_civil_codigo char(1) not null


create table estado_civil(
codigo char(1) not null,
descripcion varchar(10) not null,
constraint estado_civil_pk primary key(codigo)
)

--update table estado_civil from descriopcion to descripcion

alter table personas
add constraint personas_estado_civil_fk
foreign key (estado_civil_codigo)
references estado_civil(codigo)


insert into personas(cedula, nombre, apellido, estado_civil_codigo)
values ('1714616123','Santiago','Mosquera','U')
insert into personas(cedula, nombre, apellido, estado_civil_codigo)
values ('1714616122','Santiago2','Mosquera2','U')

select * from personas
select * from estado_civil

insert into estado_civil(codigo,descripcion)
values('U','UNION LIBRE');
insert into estado_civil(codigo,descripcion)
values('C','CASADO');
insert into estado_civil(codigo,descripcion)
values('S','SOLTERO');