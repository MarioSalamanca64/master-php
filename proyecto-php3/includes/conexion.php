<?php

$servidor = "localhost"; /*numero de ip de servidor*/ 
$usuario = "root"; /*nombre de arministrador de sql*/ 
$password = ""; /*contrase;a del adminitrador*/
$basededatos = "blog_master"; /*nombre de la base de datos*/ 
$db = new mysqli($servidor,$usuario,$password,$basededatos,3308); /*coneccion con la base de datos*/ 

mysqli_query($db,"SET NAMES 'UTF8'"); /*en caso que los datos dela base de datos vegan con ñ o tildes */

//inciar la sesion
session_start();
