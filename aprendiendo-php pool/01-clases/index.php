<?php
//programacion orientada a objetos en php (POO)

//Definir una clase (molde para creas mas objetos de tipo de coche con caracteristicas)

class Coche{
    //Atributos o propiedades (variables)
    public $color = "Rojo";
    public $marca = "Ferrari";
    public $modelo = "Aventador";
    public $velocidad = 300;
    public $caballaje = 500;
    public $plazas = 2;

    // Metodos son acciones que hace el objeto (antes de funciones)
    public function getColor(){
        //busca en esta clase la propiedad x
        return $this ->color;
    }

    public function setColor($color){
        $this->color = $color;
    }

    public function setModelo($modelo){
        $this->modelo = $modelo;
    }

    public function acelerar(){
        $this->velocidad++;
    }

    public function frenar(){
        $this->velocidad--;
    }
    //muestra
    public function getVelocidad(){
        return $this->velocidad;
    }
   

    
} //fin definicion de la clase
//Crear un objeto / instanciar la clase
$coche = new Coche(); 
// usar los metodos
$coche->setColor("amarillo");
echo "El color del coche es:".$coche->getcolor().'<br>';

$coche->acelerar();
$coche->acelerar();
$coche->acelerar();
$coche->frenar();
echo "velocidad del coche ".$coche->getVelocidad();



$coche2 = new Coche();
$coche2->setColor("verde");
$coche2->setModelo("mustang");
var_dump($coche);
var_dump($coche2);
?>