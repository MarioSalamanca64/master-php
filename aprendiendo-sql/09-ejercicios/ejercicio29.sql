/* 
29. crear una lista llamada vendedores que incluira todos los vendedores
del grupo que se llamen vendedores A
 */

CREATE VIEW vendedoresa AS
SELECT * FROM vendedores WHERE grupo_id IN 
    (SELECT id FROM grupos WHERE nombre="Vendedores A");

