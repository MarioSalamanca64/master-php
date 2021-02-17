/*
int(numero de caractares)     ENTERO
integer(numero de caractares) ENTERO (MAXIMO 4294967295)
varchar(numero de caractares) string/alfanumerico (maxico 255)
char(numero de caracteres)    string/alfanumerico
float(numero de cifras,desimales) decimal/coma flotante
date.time,timestamp

//STRING MAS GRANDES
TEXT 65535 CARATERES
MEDIUMTEXT  16MILLONES DE CARACTERES
LONGTEXT 4 BILLONES DE CARACTERES

//ENTEROS MAS GRANDES
MEDIUMINT
BIGINT
*/

/*
CREAR TABLA
*/
CREATE TABLE usuarios(
id        int(11)auto_increment,
nombre    varchar(100)not null,    
apellidos varchar(255)default'hola que tal',
email     varchar(100)not null,
password  varchar(255),
CONSTRAINT pk_usuarios PRIMARY KEY(id)
);
