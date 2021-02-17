<?php
//programacion orientada a objetos en php (POO)

//Definir una clase (molde para creas mas objetos de tipo de coche con caracteristicas)

class Coche{
    //Atributos o propiedades (variables)

    //PUBLIC: podemos acceder cualquier lugar,dentro de calse actual
    //dentro de clases que hereden esta clase o fuera de la clase
    public $color;

    //PROTECTED: podemos acceder desde la clase que los define desde clases 
    // que hereden esta clase 
    protected $marca;

    //PRIVATE unicamente se puede acceder desde esta clase 
    private $modelo;


    public $velocidad;
    public $caballaje;
    public $plazas;

    //constructor
    public function __construct($color,$marca,$modelo,$velocidad,$caballaje,$plazas)
    {
        $this->color = $color;
        $this->marca = $marca;
        $this->modelo = $modelo;
        $this->velocidad = $velocidad;
        $this->caballaje = $caballaje;
        $this->plazas = $plazas;
    }

    // Metodos son acciones que hace el objeto (antes de funciones)
    public function getColor(){
        //busca en esta clase la propiedad x
        return $this ->color;
    }

    public function setColor($color){
        $this->color = $color;
    }

    public function setMarca($marca){
        $this->marca = $marca;
    }

    public function setModelo($modelo){
        $this->modelo = $modelo;
    }
    public function getModelo(){
        return $this->modelo;
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

    public function mostrarInformacion(Coche $miobjeto){
        if(is_object($miobjeto)){
        $informacion = "<h1>Informacion del coche</h1>";
        $informacion .= "Color ".$miobjeto->color;
        $informacion .= "<br>Modelo ".$miobjeto->modelo;
        $informacion .= "<br>Velocidad ".$miobjeto->velocidad;
        }else{
            $informacion = "tu dato es este:$miobjeto";
        }
        

        return $informacion;

    }
   

    
}

?>