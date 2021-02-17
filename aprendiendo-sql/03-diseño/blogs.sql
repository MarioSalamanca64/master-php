
# tabla 1#

CREATE TABLE usuarios(
id int(255) auto_increment not null,
nombre varchar(100) not null,
apellidos  varchar (100) not null,
email   varchar (100) not null,
password varchar (255) not null,
fecha date not null,
CONSTRAINT pk_usuarios PRIMARY KEY(id),
CONSTRAINT uq_email UNIQUE(email) # solo un email#
)ENGINE=InnoDb; # formato en la que haya claves foraneas#

# tabla 2#
CREATE TABLE categorias(
id int(255) auto_increment not null,
nombre varchar(100) not null,
CONSTRAINT pk_categoria PRIMARY KEY(id)
);


# tabla 3 con relacion a otras tablas#
CREATE TABLE entradas(
id           int(255) auto_increment not null,
usuarios_id  int(255) not null, 
categoria_id int(255) not null,
titulo       varchar(255) not null,
descripcion  MEDIUMTEXT,
fecha   date not null,
CONSTRAINT pk_entradas PRIMARY KEY(id),
CONSTRAINT fk_entrada_usuarios FOREIGN KEY (usuarios_id) REFERENCES usuarios(id),
CONSTRAINT fk_entrada_categoria FOREIGN KEY (categoria_id) REFERENCES categorias(id) 
# ON DELETE CASCADE  BORRAS LOS DATOS SI BORRAS EL CAMPO # 
# ON UPDATE CASCADE  ACTUALIZA TODAS LOS CAMPOS SI HAY UN CAMBIO#
# ON DELATE SET NULL  DAFAULT  ELOMINA Y HACER COSAS#
);

# select * fron usuarios;# datos de las tablas 
# desc usuarios ver los campos de la tabla#