<?php
extract($_REQUEST); 
if (isset($_POST['registrar'])) {
    $nombre = strtoupper($nombre);
    $email = strtoupper($email);
    $direccion = strtoupper($direccion);
    
    $mysql = "SELECT DNI FROM proveedores WHERE DNI = '".$dni."' ";
    $consultaci = mysqli_query($conexion,$mysql);
    $resutcedula = mysqli_num_rows($consultaci);

    $sql = "SELECT CORREO FROM proveedores WHERE CORREO = '$email' ";
    $consultaem = mysqli_query($conexion,$sql);
    $resutemail = mysqli_num_rows($consultaem);

    $ysql = "SELECT TELEFONO FROM usuarios WHERE TELEFONO = '$phone'";
    $consultatel= mysqli_query($conexion,$ysql);
    $resulttelefono=mysqli_num_rows($consultatel);

    if ($resutcedula==1) {
        echo '
            <br>
            <div class="alert danger">
                <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                <strong>Lo sentimos!</strong> Ya este RIF esta registrado
                <br>             
            </div>';
    } elseif ($resutemail==1) {
        echo '<br><div class="alert danger">
                <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                <strong>Lo sentimos!</strong> Ya existe este email asociado a otro proveedor
                <br>
            </div>';  
    } elseif ($resulttelefono==1) {
        echo '<br><div class="alert danger">
                <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                <strong>Lo sentimos!</strong> Ya existe este telefono asociado a otro proveedor
                <br>
               </div>'; 
    } else{
        if ($nombre != "") {
            if(filter_var($email, FILTER_VALIDATE_EMAIL)){
                if (strlen($email) <= 64) {
                    $inser="INSERT INTO proveedores(DNI, NOMBRE, CORREO, TELEFONO, DIRECCION) VALUES ('$dni','$nombre','$email','$phone','$direccion')";
                    $ejecutar=mysqli_query($conexion,$inser);
                    
                    if ($ejecutar) {
                        $fecha=date('Y-m-d g:i:s-a');
                        $auditoria="INSERT INTO auditoria_usuarios(CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('".$_SESSION['CI_RIF']."','Registro','Registro de proveedor $nombre','$fecha')";
                        mysqli_query($conexion, $auditoria);
        
                        echo '<br><div class="alert"><span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span><strong>Felicidades!</strong> El Proveedor ha sido registrado satisfactoriamente<br></div>';
                    } else {
                        echo '<br><div class="alert info">
                        <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                        <strong>Lo sentimos!</strong> El proveedor no pudo registrarse
                        </div>  ';
                    }
                } else{
                    echo '<br><div class="alert danger"><span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span><strong>Lo sentimos!</strong> Supero el limite permitido de caracteres por email<br></div>';
                }
            } else {
                echo '<br><div class="alert danger"><span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span><strong>Lo sentimos!</strong> Solo aceptamos formato de email valido<br>por ejemplo: nombrecorreo@dominio.com</div>';
            }
        } else {
            echo '<br><div class="alert danger"><span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span><strong>Estimado usuario!</strong> El campo nombre es obligatorio </div>';
        }        
    }
}
mysqli_close($conexion);