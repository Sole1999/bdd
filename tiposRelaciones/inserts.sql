--INSERTS

--TABLA USUARIO
select * from usuario
insert into usuario(cedula, nombre, apellido)
values('84598','Ana','Gutierrez');
insert into usuario(cedula, nombre, apellido)
values('24536','Jose','Perez');
insert into usuario(cedula, nombre, apellido)
values('54321','Sebastian','Gomez');
insert into usuario(cedula, nombre, apellido)
values('82145','Sara','Romo');
insert into usuario(cedula, nombre, apellido)
values('54786','Juana','Ramirez');
insert into usuario(cedula, nombre, apellido)
values('82458','Jessica','Martinez');
insert into usuario(cedula, nombre, apellido)
values('45851','Jordan','Mora');
insert into usuario(cedula, nombre, apellido)
values('12458','Jonathan','Andaluz');
insert into usuario(cedula, nombre, apellido)
values('12129','Peter','Tutiven');
insert into usuario(cedula, nombre, apellido)
values('63524','Carmen','Quiroz');

--TABLA CUENTAS
select * from cuentas
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('65748', '63524', '14/03/2021', 3654.21)

--TABLA CLIENTES
select * from clientes
insert into clientes (cedula, nombre, apellido, edad)
values('0124576893','Juan','Velasco',35);
insert into clientes (cedula, nombre, apellido, edad)
values('0952416375','Mario','Orozco',27);
insert into clientes (cedula, nombre, apellido, edad)
values('0321457896','Erika','Pino',43);
insert into clientes (cedula, nombre, apellido, edad)
values('0874563210','Amelia','Herrero',55);
insert into clientes (cedula, nombre, apellido, edad)
values('5241637895','Enrique','Ramos',30);
insert into clientes (cedula, nombre, apellido, edad)
values('0965324170','Fabricio','Quiroz',18);

--TABLA COMPRAS
select * from compras
insert into compras(id_compra,cedula,fecha_compra, monto)
values(1,'0965324170','23/04/2025', 14.20);
insert into compras(id_compra,cedula,fecha_compra, monto)
values(2,'0952416375','17/01/2025', 06.40);
insert into compras(id_compra,cedula,fecha_compra, monto)
values(3,'0321457896','30/05/2025', 43.50);
insert into compras(id_compra,cedula,fecha_compra, monto)
values(4,'5241637895','27/03/2025', 64.27);
insert into compras(id_compra,cedula,fecha_compra, monto)
values(5,'0124576893','06/01/2025', 35.68);
insert into compras(id_compra,cedula,fecha_compra, monto)
values(6,'5241637895','02/05/2025', 70.10);
insert into compras(id_compra,cedula,fecha_compra, monto)
values(7,'0952416375','15/04/2025', 21.05);
insert into compras(id_compra,cedula,fecha_compra, monto)
values(8,'0874563210','20/03/2025', 11.07);
insert into compras(id_compra,cedula,fecha_compra, monto)
values(9,'0965324170','12/02/2025', 63.89);
insert into compras(id_compra,cedula,fecha_compra, monto)
values(10,'0124576893','22/01/2025', 51.74);


--TABLA VENTAS 
select * from ventas
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(1, 1, '20/12/2024', 2);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(2, 3, '10/02/2025', 1);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(3, 5, '06/01/2025', 5);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(4, 2, '17/03/2025', 8);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(5, 1, '04/02/2025', 6);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(6, 4, '22/01/2025', 14);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(7, 3, '14/05/2025', 4);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(8, 2, '19/04/2025', 8);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(9, 4, '30/03/2025', 1);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(10, 1, '06/04/2025', 7);

--TABLA PLATAFORMAS
select * from videojuegos
select * from plataformas
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(1,'PlayStation', 6);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(2,'Nintendo', 4);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(3,'Epic Games Store', 7);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(4,'Xbox', 1);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(5,'Steam', 5);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(6,'GOG', 8);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(7,'Amazon Luna', 3);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(8,'Battle.net', 7);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(9,'Oculus/Meta Quest', 8);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(10,'Boosteroid', 1);

--TABLA PROFESORES
select * from profesores
insert into profesores(codigo,nombre)
values(1,'Alexandra Martinez');
insert into profesores(codigo,nombre)
values(2,'Patricio Barreras');
insert into profesores(codigo,nombre)
values(3,'Inés Mera');

--TABLA ESTUDIANTES
select * from estudiantes
insert into estudiantes (cedula, nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values('0124532010','Karen','Ramos','karer@email.com','10/10/2008',1);
insert into estudiantes (cedula, nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values('0985632041','Julio','Jaramillo','jjara@email.com','03/12/2008',3);
insert into estudiantes (cedula, nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values('0452103020','Kevin','Quiñonez','kevqu@email.com','04/07/2009',3);
insert into estudiantes (cedula, nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values('0852412030','Naya','Yepez','nayayp@email.com','03/11/2007',2);

--TABLA EMPLEADO
select * from empleado
insert into empleado (codigo_empleado, nombre, fecha, hora)
values(1, 'Joselyn Moran', '01/05/2025', '09:41');
insert into empleado (codigo_empleado, nombre, fecha, hora)
values(2, 'Edwin Vallejo', '11/03/2025', '08:55');
insert into empleado (codigo_empleado, nombre, fecha, hora)
values(3, 'Martha Diaires', '22/05/2025', '09:17');
insert into empleado (codigo_empleado, nombre, fecha, hora)
values(4, 'Fernando Ordoñez', '14/04/2025', '08:33');
insert into empleado (codigo_empleado, nombre, fecha, hora)
values(5, 'Walter Chavez', '12/03/2025', '07:58');

--TABLA REGISTRO_ENTRADA
select * from registros_entrada
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(6,'4175963210','11/06/2025','10:42',5)

--TABLA TRANSACCIONES
select * from transacciones
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(3,'36542',632.74,'C','10/04/2025','21:34')

--TABLA BANCO
select * from banco
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(1,9,'primer pago');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(2,4,'');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(3,3,'');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(4,1,'segundo pago');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(5,6,'');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(6,5,'primer pago');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(7,7,'');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(8,2,'tercer pago');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(9,10,'primer pago');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(10,1,'medicamentos');