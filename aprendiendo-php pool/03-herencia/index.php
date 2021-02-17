<?php
require_once 'clases.php';

$persona = new Persona();
//$persona->setNombre("Mario");
var_dump($persona);

$informatico = new informatico();
/*
$informatico->setAltura(1.90);
echo $informatico->sabeLenguajes("HTML,CSS.PHP,JS");
*/
var_dump($informatico);

$tecnico = new TecnicoRedes();
var_dump($tecnico);

?>