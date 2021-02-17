/* 
SUBCONSULTAS
SON CONSULTAS QUE SE EJECUTAN DENTRO DE OTRAS
CONSISTE EN LOS RESULTADOS DE LA SUBCONSULTA PARA OPERAR 
EN LA CONSULTA PRINCIPAL.
JUGANDO CON LAS CLAVER AJENAS /FOREANAS
 */

select * from usuarios where id in (select usuario_id from entradas); # tiene entradas#

select * from usuarios where id not in (select usuarios_id from entradas); # No tienen entradas#

# sacar los usuarios que tegan alguna entrada que en su titulo hable de gta#
 SELECT nombre,apellidos FROM usuarios WHERE id IN (SELECT usuarios_id FROM entradas WHERE titulo LIKE '%GTA%');

# sacar todas las entradas de la categoria accion utilizando su nombre#
SELECT categoria_id,titulo FROM entradas WHERE categoria_id IN(SELECT id FROM categorias WHERE nombre='Accion');

# mostrar las categorias con mas de 3 o mas entradas#
SELECT * FROM categorias WHERE 
 id IN 
(SELECT categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(categoria_id)>=3) ;

# mostrar los usuarios que crearon una entrada un masrtes#
SELECT * FROM usuarios WHERE id IN 
(SELECT usuarios_id FROM entradas WHERE DAYOFWEEK(fecha)=3);
# mostrar el nombre del usuario que tenga mas entradas#
SELECT CONCAT(nombre,'',apellidos)AS'EL usuario con mas entradas' FROM usuarios WHERE id  =
(SELECT usuarios_id FROM entradas GROUP BY usuarios_id ORDER BY COUNT(id)DESC LIMIT 1);
# mostrar las categorias sin entradas#
SELECT * FROM categorias WHERE id 
NOT IN (SELECT categoria_id FROM entradas);
 