/*
1. DISEñAR Y CREAR LA BASE DE DATOS DE UN CONCESIONARIO
*/

CREATE DATABASE IF NOT EXISTS concesionario;
USE concesionario;

CREATE TABLE coches(
id       int(10) auto_increment not null,
modelo   varchar(100) not null,
marca    varchar(50),
precio   int(20) not null,
stock    int(255) not null,
CONSTRAINT pk_coches PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE grupos(
id      int(10) auto_increment not null,
nombre  varchar(100) not null,
ciudad  varchar(100),
CONSTRAINT pk_grupos PRIMARY KEY(id) 
)ENGINE=InnoDB;



CREATE TABLE vendedores(
id   int(10) auto_increment not null,
grupo_id  int(10) not null,
jefe     int(10),
nombre   varchar(100) not null,
apellidos  varchar(100),
cargo      varchar(150),
fecha      DATE,
sueldo     float(20,2),
comision   float(10,2),
CONSTRAINT pk_vendedores PRIMARY KEY(id),
CONSTRAINT fk_vendedor_grupos FOREIGN KEY(grupo_id) REFERENCES grupos(id),
CONSTRAINT fk_vendedores_jefe FOREIGN KEY (jefe) REFERENCES vendedores(id) 
)ENGINE=InnoDB;

CREATE TABLE clientes(
id          int(10) auto_increment not null,
vendedor_id   int(10),
nombre         varchar(100) not null,
ciudad         varchar(50),
gastado          float(50,2),
fecha            date,
CONSTRAINT pk_clientes PRIMARY KEY (id),
CONSTRAINT fk_clientes_vendedores FOREIGN KEY (vendedor_id) REFERENCES vendedores(id)
)ENGINE=InnoDB;

CREATE TABLE encargos(
id           int(10) auto_increment not null,
cliente_id  int(10) not null, 
coche_id     int(10) not null,
cantidad     int(100),
fecha       date,
CONSTRAINT pk_encargos PRIMARY KEY (id),

CONSTRAINT fk_encargos_clientes FOREIGN KEY (cliente_id) REFERENCES clientes(id),

CONSTRAINT fk_encargos_coches FOREIGN KEY(coche_id) REFERENCES coches(id)

)ENGINE=InnoDB;

# RELLENAR LA BASE DE DATOS CON INFORMACION - INSERT #

# COCHES#
INSERT INTO coches VALUES (NULL,'Reanul clio','Renault',12000,13);
INSERT INTO coches VALUES (NULL,'Seat panda','Seat',10000,10);
INSERT INTO coches VALUES (NULL,'Mercesdes Ranchera','Mercedes Benz',32000,24);
INSERT INTO coches VALUES (NULL,'Porche Cayene','Porche',65000,5);
INSERT INTO coches VALUES (NULL,'Lambo Aventador','Lamborgini',170000,2);
INSERT INTO coches VALUES (NULL,'Ferrary Spider','Ferrari',245000,80);

# GRUPOS#
INSERT INTO grupos VALUES (NULL,'Vendedores A','Cd Mx');
INSERT INTO grupos VALUES (NULL,'Vendedores B','Cd Mx');
INSERT INTO grupos VALUES (NULL,'Vendedores Mecanicos','Cd Mx');
INSERT INTO grupos VALUES (NULL,'Vendedores A','Estado De Mexico');
INSERT INTO grupos VALUES (NULL,'Vendedores B','Estado De Mexico');
INSERT INTO grupos VALUES (NULL,'Vendedores C','Estado De Mexico');
INSERT INTO grupos VALUES (NULL,'Vendedores A','Veracruz');
INSERT INTO grupos VALUES (NULL,'Vendedores B','Veracruz');
INSERT INTO grupos VALUES (NULL,'Vendedores C','Veracruz');


# VENDEDORES#
INSERT INTO vendedores VALUE(NULL,1,NULL,'david','lopez','Responsable de tienda',CURDATE(),30000,4);
INSERT INTO vendedores VALUE(NULL,1,1,'Fran','Martinez','Ayudante de tienda',CURDATE(),23000,2);
INSERT INTO vendedores VALUE(NULL,2,NULL,'Nelson','Sanchez','Responsable de tienda',CURDATE(),38000,4);
INSERT INTO vendedores VALUE(NULL,2,3,'Jesus','lopez','Ayudante en tienda',CURDATE(),12000,6);
INSERT INTO vendedores VALUE(NULL,3,NULL,'victor','lopez','Mecanico jefe',CURDATE(),50000,2);
INSERT INTO vendedores VALUE(NULL,4,NULL,'Antonio','lopez','Vendedor de recambios',CURDATE(),13000,5);
INSERT INTO vendedores VALUE(NULL,5,NULL,'Joaquin','lopez','Ejecutivo de cuentas',CURDATE(),30000,4);
INSERT INTO vendedores VALUE(NULL,6,NULL,'Luis','lopez','Experto en ventas',CURDATE(),60000,7);
INSERT INTO vendedores VALUE(NULL,6,8,'Salvador','lopez','Ayudante de tienda',CURDATE(),10000,10);


# CLIENTES#

INSERT INTO clientes VALUE(NULL,1,'Construcciones diaz inc','Cd Mx',24000, CURDATE());
INSERT INTO clientes VALUE(NULL,1,'Fruteria Antonia inc','Michuacan',40000, CURDATE());
INSERT INTO clientes VALUE(NULL,1,'Imprenta martinez inc','Estado de Mexico',32000, CURDATE());
INSERT INTO clientes VALUE(NULL,1,'Jesus colchones inc','Cd Mx',96000, CURDATE());
INSERT INTO clientes VALUE(NULL,1,'Bar pepe inc','Cd Mx',17000, CURDATE());
INSERT INTO clientes VALUE(NULL,1,'Tienda pc inc','Estado de Mexico',24500, CURDATE());


# ENCARGOS#
INSERT INTO encargos VALUE(NULL,1,1,2,CURDATE());
INSERT INTO encargos VALUE(NULL,2,2,4,CURDATE());
INSERT INTO encargos VALUE(NULL,3,3,1,CURDATE());
INSERT INTO encargos VALUE(NULL,4,3,3,CURDATE());
INSERT INTO encargos VALUE(NULL,5,5,1,CURDATE());
INSERT INTO encargos VALUE(NULL,6,6,1,CURDATE());