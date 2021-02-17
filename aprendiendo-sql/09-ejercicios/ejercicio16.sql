/* 
16.obtener listado de clientes antendidos por el vendedor david lopez 
 */


SELECT * FROM clientes WHERE vendedor_id IN
(SELECT id FROM vendedores WHERE nombre = 'David' AND apellidos = 'Lopez');