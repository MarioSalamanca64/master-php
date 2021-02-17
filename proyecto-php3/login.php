<?php
//iniciar la session y la conexion con la base de datos
require_once 'includes/conexion.php';

//recojer los datos del formulario
if(isset($_POST)){
     //borrar la session de error antiguo
     if(isset($_SESSION['error_login'])){
        unset($_SESSION['error_login']);   
    }

    //recojo datos de formulario
    $email = trim($_POST['email']);
    $password = $_POST['password'];
     //consulta para comprobar las credenciles del usuario
    $sql = "SELECT * FROM usuarios WHERE email = '$email'"; //consulta a base de datos
    $login = mysqli_query($db,$sql); //aplicar la consulta y la conexion

    if($login && mysqli_num_rows($login) == 1){
        $usuario = mysqli_fetch_assoc($login);

         
    $verify = password_verify($password,$usuario['password']);

        if($verify){
            $_SESSION['usuario']= $usuario;
           

        }else{
            $_SESSION['error_login'] = "Login incorrecto!!";
        }

    }else{
        //mensaje error
        $_SESSION['error_login'] = "Login incorrecto!!";
    }

    
}

header('Location: index.php');

   

    
    
       /*sacara un array asosiativo de la base de datos*/ 
    //comprobar la contraseña / cifrar otra vez
   
    //$verify = password_verify($password,$usuario['password']);/*password comprobar*/

       /*if($verify){
            //Utilizar una session para guardar los datos del usuario
            $_SESSION['usuarios'] = $usuario;

            if(isset($_SESSION['error_login'])){
                session_unset($_SESSION['error_login']); /*borrar error */ 
          //  }
        //}else{
             //mensaje de error
            //sialgo falla enviar una sesion con el fallo 
           // $_SESSION['error_login'] = "login incorrecto!!";
       // }
        
    //}else{
       
    //}

    


//header('Location:index.php');









//redirigir al index.php
