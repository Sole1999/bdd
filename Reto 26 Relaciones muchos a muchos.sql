-- USUARIOS Y GRUPO

create table usuarios(
id int,
nombre varchar(25) not null,
apellido varchar(25) not null,
fecha_nacimiento date,
constraint usuarios_pk primary key(id)
)

select * from grupo

create table grupo(
id int,
nombre varchar(25) not null,
descripcion varchar(75), 
fecha_creacion date,
constraint grupo_pk primary key (id)
)

create table usuario_grupo(
us_id int not null,
gr_id int not null,
constraint id_usuarios_fk foreign key (us_id) references usuarios(id),
constraint id_grupo_fk foreign key (gr_id) references grupo(id),
constraint usuario_grupo_pk primary key (us_id, gr_id)
)

-- HABITACIONES Y HUÉSPEDES
select * from  huespedes

create table habitaciones(
habitacion_numero int,
precio_por_noche decimal not null,
piso int not null,
max_personas int, 
constraint habitaciones_pk primary key (habitacion_numero)
)


create table huespedes(
id int,
nombres varchar(45) not null,
apellidos varchar(45) not null,
telefono char(10),
correo varchar(45),
direccion varchar(45),
ciudad varchar(45),
pais varchar(45),
constraint huespedes_pk primary key (id)
)


create table reservas(
inicio_fecha date,
fin_fecha date,
habitacion int not null,
huesped_id int not null,
constraint habitacion_fk foreign key (habitacion) references habitaciones(habitacion_numero),
constraint huesped_id_fk foreign key (huesped_id) references huespedes (id),
constraint reservas_pk primary key (habitacion, huesped_id)
)

-- MUNICIPIO Y PROYECTO
select * from  proyecto

create table ciudad(
id int,
nombre varchar(45) not null,
constraint ciudad_pk primary key (id)
)


create table municipio(
id int,
nombre varchar(45),
ciudad_id int,
constraint municipio_pk primary key (id),
constraint ciudad_id_fk foreign key (ciudad_id) references ciudad (id)
)

create table proyecto(
id int,
proyecto varchar(50) not null,
monto money not null,
fecha_inicio date,
fecha_entrega date,
constraint proyecto_pk primary key (id)
)

create table proyecto_municipio(
municipio_id int not null,
proyecto_id int not null,
constraint municipio_id_fk foreign key (municipio_id) references municipio (id),
constraint proyecto_id_fk foreign key (proyecto_id) references proyecto (id),
constraint proyecto_municipio_pk primary key (municipio_id, proyecto_id)
)

-- QUERYS (CONSULTAS)

-- USUARIOS Y GRUPOS

--CONSULTA 1
select usuarios.nombre, grupo.nombre
from usuarios, grupo , usuario_grupo 
where usuarios.id = usuario_grupo.us_id

select usuarios.nombre, grupo.nombre
from usuarios, grupo , usuario_grupo 
where grupo.id = usuario_grupo.gr_id

select nombre
from usuarios
where id in(select us_id from usuario_grupo where gr_id = 1)

select grupo.nombre, count(ug.us_id)
from grupo, usuarios, usuario_grupo ug
where grupo.id = ug.gr_id
group by grupo.nombre


-- CONSULTA 2

select usuarios.nombre, grupo.nombre
from usuarios, grupo , usuario_grupo ug
where usuarios.id = ug.us_id and grupo.id = ug.gr_id
and grupo.nombre like '%intensivo%'


select usuarios.nombre
from usuarios
where id in (select us_id from usuario_grupo where gr_id =2)


select grupo.nombre, MAX(ug.us_id), MIN(ug.us_id)
from grupo, usuario_grupo ug
where grupo.id = ug.gr_id
group by grupo.nombre

select * from grupo

select usuarios.nombre, grupo.fecha_creacion
from usuarios, usuario_grupo ug, grupo
where usuarios.id = ug.us_id and grupo.id = ug.gr_id
and grupo.fecha_creacion between '2020-03-08' and '2022-03-08'


select usuarios.nombre
from usuarios
where id in (select us_id from usuario_grupo where gr_id =3)


select grupo.descripcion, count(ug.us_id) as cantidad_usuarios
from grupo, usuario_grupo ug
where grupo.id = ug.gr_id 
and grupo.descripcion like '%matutino%'
group by grupo.descripcion


-- HABITACIONES Y HUÉSPEDES

-- CONSULTA 1
select hab.habitacion_numero, hues.nombres, hues.apellidos
from habitaciones hab, huespedes hues, reservas re
where hab.habitacion_numero = re.habitacion
and hues.id = re.huesped_id


select hues.nombres, hues.apellidos
from huespedes hues
where id in (select huesped_id  from reservas where habitacion =2)


select hab.habitacion_numero, count(re.huesped_id) as cantidas_huespedes
from habitaciones hab, reservas re
where hab.habitacion_numero = re.habitacion
group by hab.habitacion_numero

-- CONSULTA 2
select * from habitaciones

select hab.habitacion_numero, hab.piso, hues.nombres, hues.apellidos
from habitaciones hab, huespedes hues, reservas re
where hab.piso = 4 and hab.habitacion_numero = re.habitacion 
and hues.id = re.huesped_id


select hues.nombres, hues.apellidos
from huespedes hues
where id in (select hues.id from reservas where habitacion =3)


select hab.habitacion_numero, round(AVG(re.huesped_id),2) as promedio_huespedes
from habitaciones hab, reservas re
where hab.habitacion_numero = re.habitacion
group by hab.habitacion_numero


-- CONSULTA 3

select hab.habitacion_numero, hues.nombres, hues.apellidos
from habitaciones hab, huespedes hues, reservas re
where hab.habitacion_numero = re.habitacion
and hues.id = re.huesped_id


select hues.nombres, hues.apellidos
from huespedes hues
where id in (select hues.id from reservas where habitacion =4)


select hab.habitacion_numero, sum(hab.precio_por_noche) as total_noche
from habitaciones hab, reservas re
where hab.habitacion_numero = re.habitacion
group by hab.habitacion_numero


-- MUNICIPIO Y PROYECTO

-- CONSULTA 1

select m.nombre, p.proyecto
from proyecto_municipio mp, municipio m, proyecto p
where m.id = mp.municipio_id
and p.id = mp.proyecto_id


select p.proyecto
from proyecto p
where id in (select proyecto_id from proyecto_municipio where municipio_id=1)


select m.nombre, count(mp.proyecto_id) as cantidad_proyecto
from proyecto_municipio mp, municipio m
where m.id = mp.municipio_id
group by m.nombre


-- CONSULTA 2

select m.nombre, p.proyecto
from proyecto_municipio mp, municipio m, proyecto p
where m.id = mp.municipio_id
and p.id = mp.proyecto_id
and m.nombre like '%GAD%'


select m.nombre, min(mp.proyecto_id)
from proyecto_municipio mp, municipio m
where m.id = mp.municipio_id
group by m.nombre


-- CONSULTA 3

select m.nombre, c.nombre
from municipio m, ciudad c
where m.id = c.id


select p.proyecto
from proyecto p
where id in(select proyecto_id from proyecto_municipio where municipio_id = 3)


select m.nombre, max(mp.proyecto_id)
from municipio m, proyecto_municipio mp
where m.id = mp.municipio_id
group by m.nombre