<?php 
	include"conexion.php";


			if (isset($_POST['actualizar'])) 
			{

                	$codestped=$_POST['codestped'];
                	$descestped=$_POST['descestped'];
                	
                	$sql="UPDATE estado SET DESCRIPCION_ESTADO='$descestped' WHERE ID_ESTADO='$codestped'";
                	mysqli_query($conexion,$sql);

                    $fecha=date('Y-m-d g:i:s-a');
                    $auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CI_RIF']."','Modificacion','Modificacion de Estado de pedido','$fecha')";
                    mysqli_query($conexion, $auditoria);


                	 echo '<br><div class="alert">
                      <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                          <strong>Felicidades!</strong>  El estado ha sido modificado satisfactoriamente
                          <br>
                         
                          </div>  
                        ';        


            } 

            else{

            }


            if (isset($_POST['eliminar'])) 
            {

                    $codestped=$_POST['codestped'];
                   
                    $sql="DELETE FROM estado WHERE ID_ESTADO='$codestped'";
                    mysqli_query($conexion,$sql);

                     $fecha=date('Y-m-d g:i:s-a');
                    $auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CI_RIF']."','Eliminacion','Eliminacion de Estado de pedido','$fecha')";
                    mysqli_query($conexion, $auditoria);

echo '<br><div class="alert">
                      <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                          <strong>Felicidades!</strong>  El estado ha sido eliminado satisfactoriamente
                          <br>
                         
                          </div>  
                        ';       
            } 

            else{

            }

mysqli_close($conexion);


?>