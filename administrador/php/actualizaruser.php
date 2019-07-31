<?php 
	include "conexion.php";

    //RECIBIR DATOS
    //COMPARAR CON BASE DE DATOS
    //SI EXISTE EL PRODUCTO FINO
    //SINO MOSTRAR ALERTA
      if (isset($_POST['actualizar'])) {
          $cedulaver=$_POST['cedulaver'];
          $nombrever=$_POST['nombrever'];
          $correover=$_POST['correover'];
          $telefonover=$_POST['telefonover'];
          $direccionver=$_POST['direccionver'];
          $tipousver=$_POST['tipousver']; 
          $fechanacver=$_POST['fechanacver'];
                  
          $sql="UPDATE usuarios SET NOMBRE_USUARIOS='$nombrever', CORREO='$correover', TELEFONO='$telefonover', DIRECCION='$direccionver', ID_USUARIOS='$tipousver' WHERE CI_RIF='$cedulaver'";
          mysqli_query($conexion,$sql);

          echo '<br><div class="alert">
                    <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                        <strong>Felicidades!</strong> Los datos fueron modificados exitosamente
                        <br>
                        
                        </div>  
                      ';
          
          $fecha=date('Y-m-d g:i:s-a');
          $auditoria="INSERT INTO auditoria_usuarios(CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('".$_SESSION['CI_RIF']."','Modificacion','Modificacion de datos de usuario','$fecha')";
          mysqli_query($conexion, $auditoria);
      }
            
      if (isset($_POST['eliminar'])) {
        $cedulael=$_POST['cedulaver'];
        $sql="DELETE FROM usuarios WHERE CI_RIF='$cedulael'";
        mysqli_query($conexion,$sql);

        $fecha=date('Y-m-d g:i:s-a');
        $auditoria="INSERT INTO auditoria_usuarios(CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('".$_SESSION['CI_RIF']."','Eliminacion','Eliminacion de usuario','$fecha')";
        mysqli_query($conexion, $auditoria);

        echo '<br><div class="alert">
          <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
              <strong>Felicidades!</strong> Los datos fueron eliminados exitosamente
              <br>
              </div>  
            ';
      }


?>