<?php

trait Utilizades{
    public function mostrarNombres(){
        echo "<h1>El nombre es " .$this->nombre."</h1>";
    }
}

class Coche{
    public $nombre;
    public $modelo;

    use Utilizades;
}

class Persona{
    public $nombre;
    public $apellidos;

    use Utilizades;
}

class Videojuegos{
    public $nombres;
    public $anio;

    use Utilizades;
}

//$coche = new Coche();
$coche->nombre= "ferrary";
$coche->mostrarNombres();

$persona = new Persona();
$persona->nombre= "antonio";
$persona->mostrarNombres();

$videojuego = new Videojuegos();
$videojuego->nombre= "gta5";
$videojuego->mostrarNombres();


?>