/* 
27. visualizar los nombres de los clientes y la cantidad de encargos realizados
inclullendo los que no hayan realizado encargados
 */

INSERT INTO clientes VALUE(NULL,1,'Tienda organica inc','Cd Mx',0, CURDATE());


SELECT c.nombre, COUNT(e.id) FROM clientes c
LEFT JOIN encargos e ON c.id = e.cliente_id
group by 1; 
