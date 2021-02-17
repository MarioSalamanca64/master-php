# CONSULA CON UNA CONDICION#
SELECT * FROM usuario WHERE email = 'admin@admin.com';
/*
operadores de compracion
igual         =
distinto     !=
menor que     <
mayor que >
menor p igual <=
mayor o igual >=
entre between A and and B
en           in 
es nulo      is null
no es nulo   is not null 
como         like
no es como   not like 
*/
/*
OPERADORES LOGICOS:
O      OR
Y      AND
NO     NOT
*/
/*
COMODINES LIKE :
CUALQUIER CANTIDAD DE CARATERES: %
UN CARACTER DESCONOSIDO: _

*/



# ejemplos#

# 1. mostrar Nombre y apellidos de todos los usuarios registrados en 2020#
SELECT nombre, apellidos from usuarios where year(fecha) = 2019;

# 2. mostrar Nombre y apellidos de todos los usuarios que no se registrados en 2020#
SELECT nombre, apellidos from usuarios where year(fecha) != 2019;
SELECT nombre, apellidos from usuarios where year(fecha) != 2019 OR ISNULL(fecha); # aparece tanbien nulos en la busqueda#

# 3.MOSTRAR EL EMAIL CULLO EL APELLIDO CONTENGA LA LETRA E Y QUE SU CONTRASE;A SE 1234 #

SELECT email FROM usuarios WHERE apellidos LIKE '%E%' AND password=1234;

# 4. Sacar todas los registros de la tablas usuarios cual el a;o sea par #

SELECT * FROM usuarios WHERE (year(fecha) %2 = 0); # par#
                                             !=  # impar#
# 5. sacar todos los registro de la tabla usuarios cuyo nombre tengan mas de 5 letras 
# y antes de 2020 nombre en mayusculas #
SELECT UPPER(nombre)AS 'nombre',apellidos FROM usuarios WHERE (LENGTH(nombre) >5) AND YEAR (fecha) < 2020;

# ordenar filas#
SELECT * FROM usuario ORDER BY id; 
SELECT * FROM usuario ORDER BY id ASC;  # ASENDENTE#
SELECT * FROM usuario ORDER BY id DESC; # DESENDENTE#
SELECT * FROM usuario ORDER BY fecha DESC;
                      LIMIT 3,2;          # SACA ELEMENTOS QUE SALGAN ENTRE 3Y2#