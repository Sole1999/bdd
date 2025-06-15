--PRODUCTOS
select * from productos 

update productos set stock = 0
where descripcion is null

-------------------------------------------------

--CUENTAS
select * from cuentas

update cuentas set saldo = 10
where cedula_propietario like '17%'

-------------------------------------------------

--ESTUDIANTES

select * from estudiantes

update estudiantes set apellido = 'Hernández'
where cedula like '9%'

-------------------------------------------------

--registros_entrada

select * from registros_entrada

update registros_entrada set cedula_empleado = '082345679'
where fecha between '01/08/2025' and '30/08/2025'

-------------------------------------------------

--videojuegos

select * from videojuegos

update videojuegos set descripcion = 'Mejor puntuado'
where valoracion > 9

-------------------------------------------------

--TRANSACCIONES

select * from transacciones

update transacciones set tipo = 'T'
where monto>money(100) and monto<money(500) 
and fecha between '01/09/2025' and '30/09/2025'
and hora between '14:00' and '20:00'