 <?php require_once 'includes/helpers.php'; ?>
 <!--barra lateral-->
 <aside id="sidebar">
     <?php if (isset($_SESSION['usuario'])) : /*comprobar si existe session usuario*/ ?>
         <div id="usuario-logueado" class="bloque">
             <h3>Bienvenido,<?= $_SESSION['usuario']['nombre'] . ' ' . $_SESSION['usuario']['apellidos']; /*mostar los objetos de un array de la base de datos apellidos y nombre*/ ?></h3>
             <!--botones-->
             <a href="cerrar.php" class="boton boton-verde">Crear entradas</a>
             <a href="cerrar.php" class="boton">Crear una categoria</a>
             <a href="cerrar.php" class="boton boton-naranja">Mis datos</a>
             <a href="cerrar.php" class="boton boton">Cerrar sesion</a>
         </div>
     <?php endif; ?>


     <div id="login" class="bloque">
         <h3>Identificate</h3>


         <?php if (isset($_SESSION['error_login'])) : /*comprobar si existe session usuario*/ ?>
             <div  class="alerta">
                 <?php echo $_SESSION['error_login']; ?>
             </div>
         <?php endif;?>


         
         <form action="login.php" method="POST">
             <label for="email">Email</label>
             <input type="email" name="email" />
             <label for="password">Contraseña</label>
             <input type="password" name="password" />
             <input type="submit" value="entrar" />
         </form>
     </div>
     <div id="login" class="bloque">
         <h3>Registrate</h3>
         <!--mostrar errores-->
         <?php
            /*si existe $_SESSION que muestre completado*/
            if (isset($_SESSION['completado'])) : ?>
             <div class="alerta alerta-exito">
                 <?php echo $_SESSION['completado'] ?>
             </div>
         <?php elseif (isset($_SESSION['errores']['general'])) : ?>
             <div class="alerta alerta-exito">
                 <?php echo $_SESSION['errores']['general'] ?>
             </div>
         <?php endif; ?>

         <form action="registro.php" method="POST">
             <label for="nombre">Nombre</label>
             <input type="text" name="nombre" />
             <?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'], 'nombre') : ''; /*validacion de form*/ ?>

             <label for="apellidos">Apellidos</label>
             <input type="apellidos" name="apellidos" />
             <?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'], 'apellidos') : ''; ?>

             <label for="email">Email</label>
             <input type="email" name="email" />
             <?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'], 'email') : ''; ?>

             <label for="password">Contraseña</label>
             <input type="password" name="password" />
             <?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'], 'password') : ''; ?>

             <input type="submit" name="submit" value="registrar" />
         </form>
         <?php borrarErrores(); ?>
     </div>
 </aside>