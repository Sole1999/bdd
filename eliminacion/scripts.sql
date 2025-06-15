--PRODUCTOS
select * from productos

delete from productos 
where descripcion is null

-----------------------------------------------

--CUENTAS

select * from cuentas

delete from cuentas 
where cedula_propietario like '10%'

-----------------------------------------------

--ESTUDIANTES

select * from estudiantes

delete from estudiantes
where cedula like '%05'

-----------------------------------------------

--registros_entrada

select * from registros_entrada

delete from registros_entrada
where fecha between '01/06/2025' and '31/06/2025'

-----------------------------------------------

--VIDEOJUEGOS

select * from videojuegos

delete from videojuegos
where valoracion < 7

-----------------------------------------------

--TRANSACCIONES

select * from transacciones

delete from transacciones
where hora between '14:00' and '18:00'
and fecha between '01/08/2025' and '31/08/2025'