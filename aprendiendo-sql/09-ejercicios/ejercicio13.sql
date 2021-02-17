/* 
13. sacar la media de sueldos entre todos los vendedores por grupo 
 */

SELECT CEIL(AVG(v.sueldo))AS'media salarial',g.nombre,g.ciudad FROM vendedores v 
INNER JOIN grupos g ON g.id = v.grupo_id
GROUP BY grupo_id ORDER BY COUNT(v.sueldo) ASC;
