<?php
session_start();
require_once ("conexion.php");
	
	$productos= explode("+", $_POST["pedido"]);
	$cantidades= explode("+", $_POST["cantidades"]);

	if (count($productos)> 1) {
		$insert = 0;
		//repetir el siguiente proceso
		for ($i=0; $i < count($productos); $i++) {
			//si esta seleccionado un checkbox
			if (!(empty($productos[$i]))) {
				//y si la cantidad es igual a cero
				if ($insert == 0) {
					
					//inserta el pedido

					$sql = "INSERT INTO recepcion(ID_RECEPCION, FECHA_RECEPCION, CI_RIF)
						VALUES ('','".date("Y-m-d")."','".$_SESSION["CI_RIF"]."')";
					$query = mysqli_query($conexion, $sql);
					$id = mysqli_insert_id($conexion);

					$insert = 1;
				}

				$sql= "UPDATE requisicion SET ESTATUS='1' WHERE ID_REQUISICION='".$_GET["id"]."'";
				$query = mysqli_query($conexion, $sql);

				//aparte inserta productos y sus cantidades asociados a un solo pedido
				$sql = "INSERT INTO detalles_recepcion(ID_DETALLES_RECEPCION, ID_RECEPCION, ID_PRODUCTO, CANTIDAD_RECEPCIONADA)VALUES ('','$id','$productos[$i]','".$cantidades[$i]."')";

				$query = mysqli_query($conexion, $sql);
				// y Resta la cantidad de la tabla productos

				$sql= "UPDATE productos SET EXISTENCIA_PRODUCTO=(EXISTENCIA_PRODUCTO+'".$cantidades[$i]."') WHERE ID='".$productos[$i]."'";
				$query=mysqli_query($conexion, $sql);

				$fecha=date('Y-m-d');
				$sql = "INSERT INTO movimiento_inventario (ID_PRODUCTO, CANTIDAD, TIPO, FECHA) VALUES ('".$productos[$i]."', '".$cantidades[$i]."', '4', '$fecha')";
				$query = mysqli_query($conexion, $sql);

				$fecha=date('Y-m-d g:i:s-a');
				$auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CI_RIF']."','Recepcion','Recepcion de Mercancia','$fecha')";
				mysqli_query($conexion, $auditoria);
			}
		}
		// si se inserto el pedido correctamente enviar variable de exito
		if ($insert > 0) {
			$data["exito"]= 1;
		} else {
			$data["error"] = 2;
		}
		//sino enviar variable de error
	} else {
		$data["error"]= 1;
	}

die(json_encode($data));