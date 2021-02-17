/*
CONSULTA MULTITABLA
SON CONSULTAS QUE SIRVEN PARA CONSULTAR VARIAS TABLAS EN UNA SOLA SENTENSIA
*/

# MOSTRAR LAS ENTRADAS CON EL NOMBRE DEL AUTOR Y EL NOMBRE DE LA CATEGORIA#
SELECT entradas.titulo, usuarios.nombre,categorias.
 FROM entradas, usuarios,categorias;

# INNER JOIN#
SELECT e.id,e.titulo,u.nombre AS 'autor', c.nombre as 'categorias'
from entradas e
inner join usuarios u on e.usuarios_id = u.id
inner join categorias c on e.categoria_id = c.id;

# parte dos#
SELECT e.id, e.titulo, u.nombre AS 'autor', c.nombre AS 'categoria'
 FROM entradas e, usuarios u,categorias c
WHERE e.usuarios_id = u.id AND e.categoria_id = c.id;




# mostrar el nombre de las categorias y al lado cuentas entradas tiene#
select c.nombre,count(e.id)from categorias c,  entradas e
where e.categoria_id = c.id group by e.categoria_id;

# left y right join#

select c.nombre,count(e.id)from categorias c  
left join entradas e on e.categoria_id = c.id
group by e.categoria_id;



select c.nombre,count(e.id)from categorias c  
right join categorias c on e.categoria_id = c.id
group by e.categoria_id;









# mostrar el email de los usuarios y al lado cuantas entradas tiene#
SELECT u.email, COUNT(titulo)titulo from  usuarios u,entradas e
where e.usuarios_id = u.id group by e.usuarios_id;

