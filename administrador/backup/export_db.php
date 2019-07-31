<?php
require'../php/conexion.php';


		$host="localhost";
		$bd="ferreteria_la_campana"; 
		$usuario="root"; 
		$contrasena="";   
		$formatobd=".sql";

		$fechaderespaldo=date("d-m-Y_His");

		$archivosql = $bd.'_'.$fechaderespaldo.$formatobd;  
		 
	//	header("Pragma: no-cache"); 
	//	header("Expires: 0"); 
	//	header("Content-Transfer-Encoding: binary"); 
	//	header("Content-type: application/force-download"); 
	//	header("Content-Disposition: attachment; filename=$archivosql"); 

			$respaldo = "c:\\xampp\\mysql\\bin\\mysqldump.exe -u $usuario --password=$contrasena --opt $bd > $archivosql"; 
			system($respaldo, $resultado); 

			$fecha=date('Y-m-d g:i:s-a');
 
						if ($resultado) { 
								echo '<script language="JavaScript">Swal.fire("Respaldo Fallido"); window.location="../respaldarbasededatos.php";</script>';

							$auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CI_RIF']."','Respaldo','Respaldo de Base de datos','$fecha')";
							mysqli_query($conexion, $auditoria);

						 }
						 else{
								echo '<script language="JavaScript">Swal.fire("Respaldo Exitoso"); window.location="../respaldarbasededatos.php";</script>';
				
						}

?>