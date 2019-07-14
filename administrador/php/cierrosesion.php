<?php
include "conexion.php";
if(isset($_GET['modo']) == 'desconectar')
                    {
                    	
                        $fecha=date('Y-m-d g:i:s-a');
                        $auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA)VALUES('','".$_SESSION['CI_RIF']."','Salida','Salida del Sistema','$fecha')";
                        mysqli_query($conexion, $auditoria);


                        session_destroy();
                        echo '<meta http-equiv="Refresh" content="2;url=../login.php"> ';
                        exit ('<h1 style="position:relative; right:30%; left:30%;">HASTA LUEGO 


                        	'.$_SESSION['NOMBRE_USUARIOS'].'...</h1>');

					

                    }


?>
