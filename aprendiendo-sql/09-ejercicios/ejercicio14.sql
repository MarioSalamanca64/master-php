/* 
14. visualisar las unidades totales vendias de cada coche a cada cliente
mostrando el nombre de producto el numero de cliente y de suma de unidades
 */
SELECT co.modelo AS 'COCHE',cl.nombre AS 'CLIENTE', SUM(e.cantidad) AS'Cantidad de coches vendidas' FROM encargos e
INNER JOIN coches co ON co.id = e.coche_id
INNER JOIN clientes cl ON cl.id = e.cliente_id
GROUP BY e.coche_id,e.cliente_id; 