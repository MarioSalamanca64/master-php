/* 
11.visualizar todos los cargos y el numero de vendedores que hay en cada cargo
 */

SELECT cargo, COUNT(id) FROM vendedores GROUP BY cargo ;

# desendente#

SELECT cargo, COUNT(id) FROM vendedores GROUP BY cargo ORDER BY COUNT(id) DESC;
