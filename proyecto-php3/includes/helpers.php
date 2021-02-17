<?php
function mostrarError ($errores, $campo){
$alerta = '';    
if(isset($errores[$campo])  && !empty($campo)){
    $alerta = "<div class='alerta-error'>".$errores[$campo].'</div>'; /*para modificar el texto del error*/ 
}
return $alerta;

}
function borrarErrores(){/*que borre los datos malos despues de actualizar */ 
$borrado = false;
if(isset($_SESSION['errores'])){
    $_SESSION['errores'] = null;
    unset($_SESSION['errores']);
}

if(isset($_SESSION['completado'])){
    $_SESSION['completado'] = null;
    unset($_SESSION['completado']);
  }

  return $borrado;
  
}

function conseguirCategoria($conexion, $id){
	$sql = "SELECT * FROM categorias WHERE id = $id;";
	$categorias = mysqli_query($conexion, $sql);
	
	$resultado = array();
	if($categorias && mysqli_num_rows($categorias) >= 1){
		$resultado = mysqli_fetch_assoc($categorias);
	}
	
	return $resultado;
}
?>