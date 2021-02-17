/* 
22. mostar listado de clientes (numero de cliente y el nombre)
mostrar tambien numero de vendedor y su nombre
 */

SELECT c.id,c.nombre,v.id,CONCAT(v.nombre,' ',v.apellidos) as 'vendedor'
FROM clientes c, vendedores v 
WHERE c.vendedor_id = v.id; 
