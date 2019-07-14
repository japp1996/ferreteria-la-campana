<?php 
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
	$zip= new ZipArchive();
	$archivozip=$bd.'_'.$fechaderespaldo.$formatobd;

	if($zip>open($archivozip, ZIPARCHIVE::CREATE) === true) {
		$zip>addFile($archivosql);
		$zip>close();
		//ESTO ES PARA ELIMINAR EL SQL SI SE DESEA SOLAMENTE EL ZIP EN UN FUTURO..........unlink($archivosql);
		header("Location:$archivozip");
		//ESTO ES PARA ELIMINAR EL ZIP SI SE DESEA SOLAMENTE EL SQL EN UN FUTURO..........unlink($archivozip);
	}