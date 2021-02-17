/* 
24. listar los encargos con el nombre del coche, elnombre del cleinte
el nombre de la ciudad,pero unicamente que sean de cd mx
 */
SELECT e.id,co.modelo,cl.nombre,cl.ciudad FROM encargos e 
INNER JOIN coches co ON co.id = e.coche_id
INNER JOIN clientes cl ON cl.id = e.cliente_id
WHERE  cl.ciudad='CD Mx';

