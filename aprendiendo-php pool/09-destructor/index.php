<?php
class Usuarios{
    public $nombre;
    public $email;

    public function __construct()
    {
        $this->nombre = "Mario Salamanca";
        $this->email = "mario.com"; 
        echo "creando el objeto"."<br>";
    }

    //mostrar todo en un string sin error

    public function __toString()
    {
        return "hola, {$this->nombre}, estas registrado con {$this->email}";
    }

    public function __destruct()
    {
        echo "destruyendo el objeto"."<br>";
    }
}

$usuario = new Usuarios();

for($i = 1; $i <= 10 ; $i++){
    echo $i."<br/>";
}

echo $usuario."<br>";
?>