--RETO 25 FUNCIONES DE AGREGACION

-- CUENTAS Y USUARIO
--AGREGACION 1
select * from usuario

select cedula_propietario ,  AVG(cast(saldo as numeric)) 
from cuentas 
where cedula_propietario = '84598'
group by cedula_propietario 

--AGREGACION 2

select count(tipo_cuenta), tipo_cuenta
from usuario
group by tipo_cuenta

--CLIENTES Y COMPRAS
--AGREGACION 1
select * from compras

select cedula, SUM(monto)
from compras
group by cedula

--AGREGACION 2

select COUNT(c.monto) AS total_compras, c.fecha_compra
from compras c
where c.fecha_compra = '2025/03/27'
group by c.fecha_compra


-- ESTUDIANTES Y PROFESORES
--AGREGACION 1

select es.codigo_profesor, count(nombre) as total_estudiantes
from estudiantes es
group by codigo_profesor

--AGREGACION 2
select * from estudiantes

select ROUND(AVG(extract (year from current_date) - extract (year from fecha_nacimiento))) as edad_promedio
from estudiantes


-- PERSONA Y PRESTAMO
select * from personas

--AGREGACION 1
select cedula, SUM(CAST(monto as numeric))
from prestamo
group by cedula

--AGREGACION 2

select count(numero_hijos)
from personas
where numero_hijos > 1


-- PRODUCTOS Y VENTAS
select * from ventas
--AGREGACION 1

select max(cast(precio as numeric)) as precio_maximo
from productos

--AGREGACION 2

select sum(v.cantidad) as cantidad_total_productos_vendidos
from ventas v


-- TRANSACCIONES Y BANCO
select * from TRANSACCIONES
--AGREGACION 1

select count(t.codigo) as total_transacciones_credito
from TRANSACCIONES t
where t.tipo = 'C'

--AGREGACION 2

select  t.numero_cuenta, round(avg(cast (t.monto as decimal)),2) as monto_promedio
from TRANSACCIONES t
group by t.numero_cuenta


-- VIDEOJUEGOS Y PLATAFORMAS
select * from videojuegos
--AGREGACION 1

select count(pl.id_plataforma),  pl.codigo_videojuego
from plataformas pl 
group by pl.codigo_videojuego

--AGREGACION 2

select round(avg(valoracion),2) as promedio_valoracion  --round(avg(cast(valoracion as decimal)),2) as promedio_valoracion
from videojuegos



-- REGISTROS_ENTRADA Y EMPLEADO
select * from REGISTROS_ENTRADA
--AGREGACION 1

select cedula_empleado, count(codigo_registro) as total_registros_entrada
from REGISTROS_ENTRADA
group by cedula_empleado

--AGREGACION 2

select MIN(fecha) as fecha_minima, MAX(fecha) as fecha_maxima
from REGISTROS_ENTRADA
