/* 
23.listar todos los encargos realizados con la marca del coche y el nombre
 del cliente 
 */

SELECT e.id,co.marca,cl.nombre FROM encargos e
INNER JOIN  coches co ON co.id = e.coche_id
INNER JOIN  clientes cl ON cl.id = e.cliente_id;

