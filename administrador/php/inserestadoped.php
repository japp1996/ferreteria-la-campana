<?php 

include "conexion.php";

if (isset($_POST['registrarestped'])) {
	
	$idped=$_POST['idped'];

	$idnameped=$_POST['nameped'];

	$sql="INSERT INTO estado (ID_ESTADO, DESCRIPCION_ESTADO) VALUES ('$idped','$idnameped')";
	$insercion=mysqli_query($conexion,$sql);

	$fecha=date('Y-m-d g:i:s-a');
    $auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CEDULA']."','Registro','Registro de Estado de pedido','$fecha')";
    mysqli_query($conexion, $auditoria);

    if ($insercion) {    	
	echo '<br><div class="alert ">
                                    <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                                       <strong>Felicidades!</strong>  El estado ha sido registrado satisfactoriamente
                                       <br>
                                      
                                       </div>  
                                      '; 
    }

    else{
    	echo '<br><div class="alert danger ">
                                    <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                                       <strong>Lo sentimos!</strong>  Es posible que exista un estado con ese codigo
                                       <br>
                                      
                                       </div>  
                                      '; 

    }

}


mysqli_close($conexion);

 ?>