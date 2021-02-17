/* 
5. mostrar todos los vendedores con su nombre y numero de dias que llevan 
en el concesionario.
 */
SELECT nombre, DATEDIFF(CURDATE(),FECHA) AS'Dias trabajados' FROM vendedores;
