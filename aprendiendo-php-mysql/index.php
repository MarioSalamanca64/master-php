<?php
//conectar a la base de datos
$conexion = mysqli_connect("localhost", "root", "", "phpmysql",3308);
//comprobar si la conexion es correcta
if(mysqli_connect_errno()){
    echo"La conexion a la base de datos MySQL ha fallado:".mysqli_connect_error();
}else{
    echo "Conexion realizada correctamente";
}
//Consulta para configurar la codificacion de caracteres
mysqli_query($conexion, "SET NAMES'utf8'");

// consulta SELECT desde php
$query =mysqli_query($conexion, "SELECT * FROM notas");
//ver una nota y como esta compuesta
//$notas = mysqli_fetch_assoc($query);
//ver todas las notas
while($notas = mysqli_fetch_assoc($query)){
 //var_dump($notas);
    echo "<h2>".$notas['titulo']."</h2>";
    echo $notas['descripcion']."<br/>";
}

//Insertar en la base de datos desde php 
$sql = "INSERT INTO notas VALUES(null,'notas desde PHP','Esto es una nota de PHP','green')";
$insert = mysqli_query($conexion, $sql);

echo"<hr>";
if($insert){
    echo"DATOS INSERTADOS CORRECTAMENTE";
}else{
   echo "ERROR".mysqli_error($conexion);            
}



?>