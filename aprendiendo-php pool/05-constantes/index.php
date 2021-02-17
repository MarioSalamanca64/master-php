<?php
class Usuario{
    const url_completa = "https://mariosalamanca";

    public $email;
    public $password;

    function getEmail(){
        /*modificar una constante con self::url_completa;*/ 
        return $this->email;
    }
    

    function getPassword(){
        return $this->password;
    }

    function setEmail($email){
        $this->email = $email;
    }
    function setPassword($password){
        $this->password = $password;
    }
}

$usuario = new Usuario();
echo $usuario::url_completa;
var_dump($usuario);
$hola = "hola mundo";
echo $hola;


?>