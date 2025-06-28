select * from 
personas pe, estado_civil ec
where
pe.estado_civil_codigo = ec.codigo


select pe.cedula, pe.nombre, pe.apellido, ec.descripcion from 
personas pe, estado_civil ec
where
pe.estado_civil_codigo = ec.codigo --donde las colummnas estan relacionadas


select pe.cedula, pe.nombre, pe.apellido, ec.descripcion from 
personas pe, estado_civil ec
where
pe.estado_civil_codigo = ec.codigo
and nombre like 'S%'

select pe.cedula, pe.nombre, pe.apellido, ec.descripcion from 
personas pe, estado_civil ec
where
pe.estado_civil_codigo = ec.codigo
and nombre like 'Santiago'