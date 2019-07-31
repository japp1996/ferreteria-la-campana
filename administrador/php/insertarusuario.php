<?php 
  if (isset($_POST['registraruser'])) {
    $tipodedoc = $_POST['tipodedoc'];
    $cedula = $_POST["cedulain"];
    $combinado=$tipodedoc+$cedula;
    $nombre = $_POST["nombre"];
    $nombre = strtoupper($nombre);
    $contrasena = md5($_POST['contrasena']);
    $repcontrasena = md5($_POST['repcontrasena']);
    $email = $_POST['email'];
    $email = strtoupper($email);
    $telefono = $_POST['telefono'];
    $direccion = $_POST["direccion"];
    $direccion = strtoupper($direccion);
    $fechanac = $_POST["fechanac"];
    $tipouser = $_POST["tipouser"];                                        

    $mysql = "SELECT CI_RIF FROM usuarios WHERE CI_RIF = '".$tipodedoc."-".$cedula."' ";
    $consultaci = mysqli_query($conexion,$mysql);
    $resutcedula = mysqli_num_rows($consultaci);

    $sql = "SELECT CORREO FROM usuarios WHERE CORREO = '$email' ";
    $consultaem = mysqli_query($conexion,$sql);
    $resutemail = mysqli_num_rows($consultaem);

    $ysql = "SELECT TELEFONO FROM usuarios WHERE TELEFONO = '$telefono' ";
    $consultatel = mysqli_query($conexion,$ysql);
    $resulttelefono = mysqli_num_rows($consultatel);

    if ($resutcedula == 1) {
      echo '<br><div class="alert danger">
          <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
              <strong>Lo sentimos!</strong> Ya esta registrada esta cedula
              <br>
  
              </div>  
                      ';  
    } elseif ($resutemail==1) {
      echo '<br><div class="alert danger">
      <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
      <strong>Lo sentimos!</strong> Ya existe este email asociado a otra cuenta
      <br>
      </div>';
    } elseif ($resulttelefono==1) {
      echo '<br><div class="alert danger">
            <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
              <strong>Lo sentimos!</strong> Ya existe este telefono asociado a otra cuenta
            <br>
            </div>'; 
    } else{

      if ($contrasena==$repcontrasena) {
        if(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
          if (strlen($email) <= 64) {

            $inser="INSERT INTO usuarios(CI_RIF, NOMBRE_USUARIOS, CONTRASENA, CORREO, TELEFONO, DIRECCION, FECHA_NACIMIENTO, ID_USUARIOS) VALUES ('".$tipodedoc."-".$cedula."','$nombre','$contrasena','$email','$telefono','$direccion','$fechanac','$tipouser')";
            $ejecutar=mysqli_query($conexion,$inser);

            $fecha=date('Y-m-d g:i:s-a');
            $auditoria="INSERT INTO auditoria_usuarios(CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES(".$_SESSION['CEDULA']."','Registro','Registro de usuario','$fecha')";
              mysqli_query($conexion, $auditoria);

            if ($ejecutar) {
              echo '<br><div class="alert"><span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span><strong>Felicidades!</strong> El usuario ha sido registrado satisfactoriamente<br></div>';
            } else{
              echo '<br><div class="alert info">
                <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                <strong>Lo sentimos!</strong> El usuario no pudo registrarse
                </div>  ';
            }
          } else{
            echo '<br><div class="alert danger"><span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span><strong>Lo sentimos!</strong> Supero el limite permitido de caracteres por email<br></div>';
          }
        } else {
          echo '<br><div class="alert danger"><span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span><strong>Lo sentimos!</strong> Solo aceptamos formato de email valido<br>por ejemplo: nombrecorreo@dominio.com</div>';} 
        } else{
          echo '<br><div class="alert danger">
          <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
          <strong>Atencion!</strong> Las contrasenas no cohinciden
          <br>
          Por favor intente de nuevo
          </div> ';
        }
      }

  }
mysqli_close($conexion);