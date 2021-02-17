# insertar datos nuevos registros#
INSERT INTO usuarios VALUES(null,'mario','salamanca','mario@hotmail.com','1234','2020-05-25');
INSERT INTO usuarios VALUES(null,'juan','perez','pedro@hotmail.com','1234','2020-05-27');
INSERT INTO usuarios VALUES(null,'elizabeth','sanchez','sanches@hotmail.com','1234','2020-05-30');

# insertar filas solo con ciertas columnas#
INSERT INTO usuarios(email,password) VALUE ('admin@admin.com','admin');