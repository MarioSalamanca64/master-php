/* 
28. Mostrar todos los vendedores y el numero de clientes tengan o no clientes
se debe mostrar tengan o no clientes 
 */


SELECT v.nombre, v.apellidos, COUNT(c.id) as 'numero de clientes' FROM vendedores v
LEFT JOIN clientes c ON c.vendedor_id = v.id
GROUP BY  v.id;
 
