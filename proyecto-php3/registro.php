<?php
if(isset($_POST)){

    //coneccion con la base de datos
    require_once 'includes/conexion.php';
    /*Depende de el archivo conexion.php*/
    /*iniciar la session aun que ya se */ 
    if(!isset($_SESSION)){
        session_start();
    }
   


    //recojer los valores del formulario de registro
    if(isset($_POST['nombre'])){
        $nombre = $_POST['nombre'];
    }else{
        $nombre = false;
    } /*forma larga*/ 
    $nombre = isset($_POST['nombre']) ? mysqli_real_escape_string($db,$_POST['nombre']) :false; /*forma corta ?verdadero:falso*/
    $apellidos = isset($_POST['apellidos']) ? mysqli_real_escape_string($db,$_POST['apellidos']) :false; /*mysqli_real_escape_string hace q puedas meter comillas o texto rraro como un string para la seguridad*/
    $email = isset($_POST['email']) ? mysqli_real_escape_string($db,trim($_POST['email'])): false;/*el $db tienes que hacer referencia ala bace de datos para que funcione trim es para quietarle los espacios al email*/ 
    $password = isset($_POST['password']) ? mysqli_real_escape_string($db,$_POST['password']):false;

    /*Array de errores*/ 
    $errores = array();

    /*validar los datos antes guardarlos en la base de datos*/
    //validar campo nombre
    if(!empty ($nombre) && !is_numeric($nombre) && !preg_match("/[0-9]/",$nombre)){
        $nombre_validado = true;
    }else{
        $nombre_validado = false;
        $errores['nombre'] = "El nombre no es valido";
    }
    //validar apellidos
    if(!empty ($apellidos) && !is_numeric($apellidos) && !preg_match("/[0-9]/",$apellidos)){
        $apellidos_validado = true;
    }else{
        $apellidos_validado = false;
        $errores['apellidos'] = "Los apellidos no son validos";
    }
    //validar email
    if(!empty ($email) && filter_var($email,FILTER_VALIDATE_EMAIL)){
        $email_validado = true;
    }else{
        $email_validado = false;
        $errores['email'] = "El email no es valido";
    }
    //validar password
    if(!empty ($password)  ){
        $password_validado = true;
    }else{
        $password_validado = false;
        $errores['password'] = "La contraseña esta vacia";
    }
    //falso cuando haya un error en la base de datos
    $guardar_usuario = false;
    if(count($errores) == 0){
        //cifrar la contraseña  CUATRO VECES
        $password_segura = password_hash($password,PASSWORD_BCRYPT,['COST'=>4]);

        /*como ver que funciona el cifrado*/ 
        /*var_dump($password);
        var_dump($password_segura);
        var_dump(password_verify("12345",$password_segura));
        die();*/

        //insertar usuario en la tabla usuario en la base de datos string deben de ir entre comillas y los passwor_segura
        $sql = "INSERT INTO usuarios VALUE(null,'$nombre','$apellidos','$email','$password_segura',CURDATE());";
        $guardar = mysqli_query($db,$sql);

        /*mostrar error al momento de enviar el formulario*/
        //var_dump(mysqli_error($db));
        //die;
        
        if($guardar){
           echo $_SESSION['completado'] = "El registro se ha completado con exito";
        }else{
           echo $_SESSION['errores']['general']= "Fallo al guardar el usuario!!!";
            
        }

        //insertar usuario en la base de datos
        $guardar_usuario = true; 
    }else{
        $_SESSION['errores']=$errores;
       
    }
    
}

header('Location:index.php'); /*redirege a index.php*/
