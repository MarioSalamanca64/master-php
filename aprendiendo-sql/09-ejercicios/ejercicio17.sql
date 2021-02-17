/* 
17. obtener un listado de los encargos relizados por el cliente 'fruteria Antonia inc'
 */

SELECT e.id as 'Nº ENCARGO', cantidad, c.nombre, co.modelo, e.fecha
FROM encargos e
INNER JOIN clientes c ON c.id = e.cliente_id
INNER JOIN coches co on co.id = e.coche_id
 WHERE e.cliente_id in 
(SELECT id FROM clientes WHERE nombre = 'Fruteria Antonia inc');


