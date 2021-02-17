<?php  

abstract class Ordenador{
    public $encender;

    abstract public function encender();

    public function apagar(){
        $this->encender = false;
    }

}

class pcAsus extends Ordenador{
    public $sofwarer;
    
    public function arrancarsofwarer(){
        $this->sofwarer = true;
    }
    public function apagararrancarsofwarer(){
        $this->sofwarer = false;
    }

    public function encender()
    {
        $this->encendido = true;
    }
} 

$ordenador = new pcAsus;
$ordenador->arrancarsofwarer();
$ordenador->apagar();
var_dump($ordenador);


?>