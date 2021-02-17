/* 
30.MOstrar los datos del vendedor con mas antiguedad en el concesionario
 */
SELECT * FROM vendedores ORDER BY fecha ASC LIMIT 1;

# 30 PLUS: obtener los coches con mas unidades vendidas

SELECT * FROM coches WHERE id =
 (SELECT coche_id FROM encargos ORDER BY cantidad DESC LIMIT 1);


