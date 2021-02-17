/* 
25. obtener una lista de los nombres de los clientes con el importe 
de sus encargos acumulado
 */

SELECT cl.nombre, SUM(precio*cantidad) AS 'IMPORTE' 
FROM clientes cl  
INNER JOIN encargos en ON cl.id=en.cliente_id
INNER JOIN coches co ON en.coche_id = co.id
GROUP BY cl.nombre
ORDER BY 2 ASC;