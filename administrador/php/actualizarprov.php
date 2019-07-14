<?php 
	include "conexion.php";
    extract($_REQUEST);
    if (isset($_POST['actualizar'])) {
        
        $sql="UPDATE proveedores SET NOMBRE='$nombre', CORREO='$correover', TELEFONO='$telefonover', DIRECCION='$direccionver' WHERE DNI='$dni'";
        mysqli_query($conexion,$sql);

        echo '<br>
                <div class="alert">
                    <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                    <strong>Felicidades!</strong> Los datos fueron modificados exitosamente
                    <br>
                </div>';
        $fecha=date('Y-m-d g:i:s-a');
        $auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CI_RIF']."','Modificacion','Modificacion de datos de Proveedor','$fecha')";
        mysqli_query($conexion, $auditoria);
    }
            
    if (isset($_POST['eliminar'])) {
        $sql="DELETE FROM proveedores WHERE DNI='$dni'";
        mysqli_query($conexion,$sql);

        $fecha=date('Y-m-d g:i:s-a');
        $auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CI_RIF']."','Eliminacion','Eliminacion de proveedor','$fecha')";
        mysqli_query($conexion, $auditoria);
        
        echo '<br>
            <div class="alert">
                <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                <strong>Felicidades!</strong> Los datos fueron eliminados exitosamente
                <br>
            </div>';
    }
?>