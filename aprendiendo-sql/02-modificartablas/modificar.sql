# RENOMBRAR UNA TABLA #
ALTER TABLE usuarios RENAME TO usuarios_renom;

# CAMBIAR NOMBRE DE UNA COLUMNA #
ALTER TABLE usuarios_renom CHANGE apellidos apellido varchar (100) null;

# MODIFICAR COLUMNA SIN CAMBIAR NOMBRE#
ALTER TABLE usuarios_renom MODIFY apellido char(50);

# AñADIR COLUMNA #
ALTER TABLE usuarios_renom ADD website VARCHAR(50) NOT NULL;