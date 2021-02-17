<?php
require_once 'coche.php';

$coche = new Coche("Amarillo","Reanult","clio",150,200,5);
$coche2 = new Coche("rojo","ferrary","ferrary",120,230,5);
$coche3 = new Coche("verde","clio","ferrary",130,250,6);

//public
//$coche->color = "rosa";
//protected
//$coche->setMarca = ("mustag");

echo $coche->mostrarInformacion($coche3);
//private
//var_dump($coche->getModelo());

//var_dump($coche);
//var_dump($coche2);
//var_dump($coche3);


?>