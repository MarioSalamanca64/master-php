/* 
21. obtener los nombres y ciudades de los clientes con en cargos de 3 unidades 
en adelante 
 */
SELECT nombre,ciudad from clientes WHERE id in 
(SELECT cliente_id FROM encargos WHERE cantidad >= 3); 