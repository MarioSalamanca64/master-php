# MOSTRAR TODOS LOS REGISTROS DE UNA TABLA#
SELECT email,nombre,apellidos FROM usuarios;

# MOSTRAR TODOS LOS CAMPOS#
SELECT * FROM usuarios;

# OPERADORES ARITMETICOS#
SELECT email,(4+7) AS 'OPERACION' FROM usuarios ORDER BY ID DESC; # DESENDENTE#
SELECT email,(4+7) AS 'OPERACION' FROM usuarios ORDER BY ID ASC; # ASENDENTE #
SELECT id, email,(id+7) AS 'OPERACION' FROM usuarios ; # suma de id mas 7 #

# FUNCIONES MATEMATICAS#

SELECT CEIL(7.34) AS 'OPERACION' FROM usuarios; # REDONDEAR#
       RAND                                     # ALEATORIO#
       ROUND                                    # ALEATORIO#
       SQRT                                     # RAIZ#
       TRUNCATE                                 # QUIETAR DESIMALES#
SELECT UPPER(nombres) FROM usuarios; # sacar los nombres en mayusculas#
       LOWER                         # MINUSCULAS #
       CONCAT (NUM1,'',NUM2)         # JUNTAR DOS CAMPOS#
SELECT CONCAT(nombre,'',apellidos) AS 'CONVERSION' FROM usuarios; # FUCIONAR LOS DOS CAMPOS)
       UPPER(CONCAT(nombre,'',apellidos))             # FUCIONAR LOS CONTENIDOS DE LOS CAMPOS#
       LENGTH                                       # CUANTOS CARACTERES TIENE#
       TRIM(CONCAT())                             # LIMPIA LOS ESPACIOS#

SELECT email,fecha,CURDATE() AS da'Fecha actual' FROM usuarios; # mostrar fecha actual#
SELECT email,DATEDIFF(fecha,CURDATE()) AS 'Fecha actual' FROM usuarios; # mostrar fecha EN QUE SE HIZO EL REGISTRO#
SELECT email,DAYNAME(fecha) AS 'Fecha actual' FROM usuarios; # NOMBRE DEL DIA#
             DAYFMONTH                                       # DIA DE MES#
             DAYOFWEEK                                       # DIA DE LA SEMANA# 
             DYAOFYEAR                                       # DIA DEL A;O#
             MONTH
             YEAR
             DAY
             HOUR
             CURTIME                                          # HORA ACTUAL#
             SYSDATE                                          # HORA DEL SERVIDOR#
SELECT email,DATE_FORMAT(fecha,'%d-%m-%y') FROM usuarios; # cambiar la psision del dia mes y a;o#

# FUNCIONES GENERALES#

SELECT email, ISNULL(apellidos) FROM usuarios; # SI EL CAMPO APELLIDOS ES NULO#
SELECT email, STRCMP('HOLA'.'HOLA') FROM usuarios;  # BUSCAR SI SON IGUALES#
SELECT email, STRCMP('HOLA'.'HO1LA') FROM usuarios; # BUSCAR SI SON DIFERENTES#
SELECT VERSION () FROM usuarios; # version de sql#
SELECT USER () FROM usuarios; # usuario#
SELECT DISTINCT USER () FROM usuarios; # EL NOMBRE DE UN USUARIO SOLO UNA VEZ#
SELECT IFNULL (apellidos,'este campo esta vacio') FROM usuarios; # LOS CAMPOS NULL O VACIOS SE VERA ESTE CAMPO ESTA VACIO#
