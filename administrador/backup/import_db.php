<?php 

include "../php/conexion.php";
include "../php/validariniciodesesion.php";




$nombrearchivo=$_FILES['nombredebasededatos'] ['name'];
//echo $nombrearchivo;


$ejecutar=fopen($nombrearchivo,"r+");
$contenido=fread($ejecutar,filesize($nombrearchivo));

$sql=explode(';', $contenido);

foreach ($sql as $query) {
$resultado=mysqli_query($conexion,$query);

//MENSAJE QUE CONTIENE LOS DATOS IMPORTADOS DEL ARCHIVO SQL 

//if ($resultado) {
//	echo $query;
//}

}



fclose($ejecutar);
echo '<script language="JavaScript">Swal.fire("Restauracion Exitosa"); window.location="../restaurarbasededatos.php";</script>';
									$fecha=date('Y-m-d g:i:s-a');
									$auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CI_RIF']."','Restauracion','Restauracion de la Base de datos','$fecha')";
									mysqli_query($conexion, $auditoria);
									
?>