<?php
interface Ordenador{
    //si no cumple los parametros no se imprime nada o aparece un error 
    public function encender();
    public function apagar();
    public function reiniciar();
    public function desfracmentar();
}

class iMac implements Ordenador{
    private $modelo;

    public function getmodelo(){
        return $this->modelo;
    }
    public function setmodelo($modelo){
        $this->modelo = $modelo; 
    }

    public function encender(){}
    public function apagar(){}
    public function reiniciar(){}
    public function desfracmentar(){}


}

$maquintos = new iMac();
$maquintos->setmodelo('Macbook pro 2019');
echo $maquintos->getmodelo();
?>