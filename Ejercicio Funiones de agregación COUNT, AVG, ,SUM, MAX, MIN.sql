--AGREGACION
--OPERACIONES SOBRE UN CONJUNTO DE RESULTADOS
--COUNT

select count(apellido) 
from personas
where estado_civil_codigo = 'C'

select count(ec.codigo) 
from personas per, estado_civil ec
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo = 'C'

--AVG (AVERAGE) PROMEDIO
select AVG(estatura) from personas
select AVG(cast(cantidad_ahorrada as numeric)) --se ha hecho la conversion de money a numerico con cast para que pueda sarcarel promedio
from personas 

select AVG(cast(cantidad_ahorrada as numeric))
from personas per, estado_civil ec
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo = 'C'

--MAX  - MIN  - SUM

select SUM(estatura) from personas

select SUM(cast(cantidad_ahorrada as numeric))
from personas 

select MAX(cast(cantidad_ahorrada as numeric))
from personas 

select MIN(cast(cantidad_ahorrada as numeric))
from personas 

--GROUP BY

select estado_civil_codigo, count(*) from personas
group by estado_civil_codigo


select estado_civil_codigo, sum(numero_hijos) from personas
group by estado_civil_codigo