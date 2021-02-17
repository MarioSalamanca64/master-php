/*
vistas:
las podemos definir como una consta almacenada en una base de datos que 
se utiliza como una tabla virtual.
no almacena datos sino que utiliza asociacion y los datos originales
de las tablas, de froma que siempre se mantienen actualizadas. 
*/

CREATE VIEW entradas_con_nombres AS
SELECT e.id,e.titulo,u.nombre AS 'autor', c.nombre as 'categorias'
FROM entradas e
INNER JOIN usuarios u on e.usuarios_id = u.id
INNER JOIN categorias c on e.categoria_id = c.id;


# ver la tabla select * from entrdas_con_nombres;#