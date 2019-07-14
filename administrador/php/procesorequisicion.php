<?php
	session_start();
	require_once ("conexion.php");
	
	//recibiendo lo que selecciono el usuario (producto seleccionado y cantidad)
	$productos= explode("+", $_POST["pedido"]);
	$cantidades= explode("+", $_POST["cantidades"]);
	$tipomovimiento= explode("+", $_POST["tipomovimiento"]);

	//si los productos seleccionados son mayor a uno
	if (count($productos) > 1) {
		if (count($cantidades) > 1) {
			$insert = 0;
			//repetir el siguiente proceso
			for ($i=0; $i < count($productos); $i++) {
				//si esta seleccionado un checkbox
				if (!(empty($productos[$i]))) {
					//y aparte si esta definida una cantidad
					if (!(empty($cantidades[$i]))) {
						if ($insert == 0) {
							//inserta el pedido
							$sql = "INSERT INTO requisicion(ID_REQUISICION, OBSERVACION_REQUISICION, FECHA_REQUISICION, CI_RIF, ID_PROVEEDOR)
								VALUES ('','','".date("Y-m-d")."','".$_SESSION["CI_RIF"]."', '".$_POST["id_proveedor"]."')";
							$query = mysqli_query($conexion, $sql);
							$id = mysqli_insert_id($conexion);
							$insert = 1;
						}
						//aparte inserta productos y sus cantidades asociados a un solo pedido
						$sql = "INSERT INTO detalles_requisicion(ID_DETALLES_REQUISICION, ID_REQUISICION, ID_PRODUCTO,CANTIDAD_REQUISICION)VALUES ('','$id','$productos[$i]','".$cantidades[$i]."')";
						$query = mysqli_query($conexion, $sql);
											
						$fecha=date('Y-m-d g:i:s-a');
						$auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CI_RIF']."','Requisicion','Requisicion de Mercancia','$fecha')";
						mysqli_query($conexion, $auditoria);
					}
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
			$data["error"] = 3;
		}
	} else {
		$data["error"]= 1;
	}

	die(json_encode($data));