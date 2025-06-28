--RETO 24 EJERCICIOS CONSULTAS
select * from
usuario us, cuentas cu

select * from plataformas
select * from registros_entrada


select us.nombre, cu.numero_cuenta from
usuario us, cuentas cu 
where cu.saldo between money(100) and  money(1000)


select cu.numero_cuenta, cu.fecha_creacion, cu.saldo, us.cedula from 
cuentas cu, usuario us
where 
us.cedula = cu.cedula_propietario 
and cu.fecha_creacion between '21/09/2022' and  '21/09/2023'


select cl.nombre, cl.apellido
from Clientes cl
where cl.cedula like '%7%'


select *
from Clientes cl
where cl.cedula = (
Select cl.cedula
where nombre = 'Monica') 


select pr.codigo, es.nombre, es.apellido
from estudiantes es, profesores pr
where es.apellido like '%n%'


select es.*, pr.codigo
from estudiantes es
JOIN profesores pr on es.codigo_profesor =  pr.codigo
where es.codigo_profesor = (Select es.codigo_profesor  
where pr.nombre = 'Francisco')



Select p.cantidad_ahorrada, pt.monto, pt.garante
from personas p, prestamo pt
where pt.monto between money(100) and money(1000)



Select *
from personas p
where p.cedula = (select p.cedula
where p.nombre = 'Sean')



select pd.nombre, pd.stock, v.cantidad
from productos pd, ventas v
where pd.nombre like '%m%' or pd.descripcion = null



select pd.nombre, pd.stock
from productos pd
where pd.codigo in (Select pd.codigo
from ventas v
where v.cantidad = 5)



select t.*, b.codigo_banco
from transacciones t
JOIN banco b on t.codigo = b.codigo_banco
where numero_cuenta between '22001' and '22004'



select t.*, b.codigo_banco
from transacciones t
JOIN banco b on t.codigo = b.codigo_banco
where t.codigo = (select t.codigo
where t.codigo = 1)



select vd.*, pl.* 
from videojuegos vd, plataformas pl
where vd.descripcion = 'Guerra' and (valoracion > 7 and nombre like 'C%')
or (valoracion > 8 and nombre like 'D%')


select pl.* 
from plataformas pl 
where pl.codigo_videojuego = ( select pl.codigo_videojuego
from videojuegos vd
where vd.nombre = 'God of war')



select re.cedula_empleado, re.fecha, e.nombre 
from registros_entrada re, empleado e
where (re.fecha between '01/08/2023' and '31/08/2023'
and re.cedula_empleado like '17%'
and re.hora between '08:00' and '12:00')
or (re.fecha between '16/10/2023' and '20/10/2023'
and re.cedula_empleado like '08%'
and re.hora between '09:00' and '13:00')


select re.codigo_registro, e.nombre 
from registros_entrada re, empleado e
where re.codigo_registro = (select re.codigo_registro
where re.cedula_empleado = '2201')