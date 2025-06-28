--CREACIONES

--CREACION DE TABLA USUARIO
create table usuario(
cedula char(5),
nombre varchar(25) not null,
apellido varchar(25) not null,
tipo_cuenta varchar(20),
limite_credito decimal,
constraint usuario_pk primary key(cedula)
)
--CREACION FOREIGN KEY RELACION ENTRE USUARIO (UNO) Y CUENTA (MUCHOS)
alter table cuentas
add constraint cuentas_usuario_fk
foreign key(cedula_propietario)
references usuario(cedula)
--
select * from cuentas
select * from usuario

--CREACION TABLA COMPRAS
create table compras(
id_compra int,
cedula char(10) not null,
fecha_compra date not null,
monto decimal not null,
constraint compras_pk primary key(id_compra)
)
--CREACION FOREIGN KEY RELACION ENTRE CLIENTES (UNO) Y COMPRAS (MUCHOS)
alter table compras
add constraint compras_clientes_fk
foreign key(cedula)
references clientes(cedula)

--CREACION TABLA VENTAS
create table ventas(
id_venta int,
codigo_producto int not null,
fecha_venta date not null,
cantidad int,
constraint ventas_pk primary key(id_venta)
)
--CREACION FOREIGN KEY RELACION ENTRE PRODUCTOS (UNO) Y VENTAS (MUCHOS)
alter table ventas
add constraint ventas_producto_fk
foreign key (codigo_producto)
references productos(codigo) 

select * from productos
select * from ventas

--CREACION PLATAFORMAS
create table plataformas(
id_plataforma int,
nombre_plataforma varchar(50),
codigo_videojuego int,
constraint plataformas_pk primary key (id_plataforma)
)
--CREACION FOREIGN KEY RELACION ENTRE VIDEOJUEGOS (UNO) Y PLATAFORMAS (MUCHOS)
alter table plataformas
add constraint plataformas_videojuegos_fk
foreign key (codigo_videojuego)
references videojuegos(codigo)

--CREACION PROFESORES
create table profesores(
codigo int,
nombre varchar(50) not null,
constraint profesores_pk primary key(codigo)
)

--CREACION FOREIGN KEY RELACION ENTRE VIDEOJUEGOS (UNO) Y PLATAFORMAS (MUCHOS)
alter table estudiantes
add constraint estudiantes_profesores_fk
foreign key (codigo_profesor)
references profesores(codigo)
--AÑADIENDO LA COLUMNA CODIGO_PROFESOR EN LA TABLA ESTUDIANTES
alter table estudiantes
add column codigo_profesor int


--CREACION EMPLEADO
create table empleado(
codigo_empleado int not null,
nombre varchar(25) not null,
fecha date not null,
hora time not null,
constraint empleado_pk primary key(codigo_empleado)
)
--AÑADIENDO LA COLUMNA CODIGO_EMPLEADO EN TABLA REGISTRO_ENTRADA
alter table registros_entrada
add column codigo_empleado int not null
--CREACION FOREIGN KEY RELACION ENTRE EMPLEADO (UNO) Y REGISTRO_ENTRADA (MUCHOS)
alter table registros_entrada
add constraint entrada_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)

select * from registros_entrada
select * from empleado


--CREACION PRESTAMO
create table prestamo(
cedula char(10),
monto money,
fecha_prestamo date,
hora_prestamo time,
garante varchar(40),
constraint prestamo_pk primary key (cedula)
)
--CREACION FOREIGN KEY RELACION ENTRE PERSONAS (UNO) Y PRESTAMO (MUCHOS)
alter table prestamo
add constraint prestamo_persona_fk
foreign key (cedula)
references personas(cedula)

select * from prestamo

--CREACION BANCO
create table banco(
codigo_banco int,
codigo_transaccion int,
detalle varchar(100),
constraint banco_pk primary key (codigo_banco)
)
--CREACION FOREIGN KEY RELACION ENTRE TRANSACCIONES (UNO) Y BANCO (MUCHOS)
alter table banco
add constraint banco_transacciones_fk
foreign key (codigo_transaccion)
references transacciones(codigo)

select * from banco
select * from transacciones