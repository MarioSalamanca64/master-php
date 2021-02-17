<?php 
// HERENCIA: la posibilidad de compartir atributos y metodos entre classes

class Persona{

    public $nombre;
    public $apellidos;
    public $altura;
    public $edad;

    public function getNombre(){
        return $this->nombre;
    }
    public function getaPellidos(){
        return $this->apellido;
    }
    public function getAltura(){
        return $this->altura;
    }
    public function getEdad(){
        return $this->edad;
    }


    public function setNombre($nombre){
        $this->nombre = $nombre;
    }
    public function setApellidos($apellidos){
        $this->apellido = $apellidos;
    }
    public function setAltura($altura){
        $this->altura=$altura;
    }
    public function setEdad($edad){
        $this->edad = $edad;
    }
    //habilidades
    public function hablar(){
        return"Estoy hablando";
    }

    public function caminar(){
        return"Estoy caminando";
    }
}

class informatico extends Persona{

    public $lenguajes;
    public $experienciaprogramador;

    public function __construct()
    {
        $this->lenguajes;
        $this->experienciaprogramador = 10;
    }

    public function sabeLenguajes($lenguajes){
        $this->lenguajes = $lenguajes;
        
        return $this->lenguajes;
    }

    
    public function programar(){
        return"soyprogramdor";
    }
    public function repararOrdenador(){
        return"Reparar ordenador";
    }
    public function hacerOfimatica(){
        return"Estoy escribiendo en word";
    }
}

class TecnicoRedes extends informatico{
    public $AuditarRedes;
    public $experienciaRedes;

    public function __construct()
    {
        //toma elementos del padre para eredar al hijo de forma estatica
        parent::__construct();

        $this->AuditarRedes = 'experto';
        $this->experienciaprogramador = 5;
    }

    public function auditar(){
        return "Estoy auditando una red";
    }
}
?>