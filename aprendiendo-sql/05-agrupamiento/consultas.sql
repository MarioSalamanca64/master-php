# CONSULTAS DE AGRUPAMIENTO#
SELECT titulo, from entradas; # devuelve todos los titulos#
 
SELECT titulo, categoria_id FROM entradas GROUP BY categoria_id; # agrupar consultas#

SELECT COUNT(titulo) AS 'numero de entradas',categoria_id FROM entradas GROUP BY categoria_id; # nuimero de agrupamientos#
 
# CONSULTA DE AGRUPAMIENTO CON CONDICIONES#
SELECT COUNT(titulo) AS 'numero de entradas',categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(titulo) >=3;

/*
AVG sacar la media 
COUNT contar el nuemro de elemntos
MAX valor maximo del grupo 
MIN valor minimo del grupo 
SUM sumar todo el contenido del grupo 
*/

SELECT AVG(ID) AS 'media de entradas' from entradas; 
SELECT MAX(ID) AS 'maximo id',titulo from entradas; 
SELECT MIN(ID) AS 'maximo id',titulo from entradas; 
SELECT SUM(ID) AS 'suma de id',titulo from entradas;