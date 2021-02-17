/* 
6.Visualizar el nombre y los apellidos en una misma columna
y su fecha de registro y el dia de la semana en la que se registraron
 */

SELECT CONCAT(nombre,' ',apellidos) AS 'nombre y apellidos',
fecha, DAYNAME(fecha)from vendedores;

