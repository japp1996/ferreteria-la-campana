<?php
	session_start();
	require_once ("conexion.php");
	$request_body = file_get_contents('php://input');
	$request = json_decode($request_body);

	//recibiendo lo que selecciono el usuario (producto seleccionado y cantidad)
	$productos= explode("+", $request->pedido);
	$cantidades= explode("+", $request->cantidades);
	$tipomovimiento= explode("+", $request->tipomovimiento);

	//si los productos seleccionados son mayor a uno
	if (count($productos) > 1) {
		if (count($cantidades) > 1) {
			$insert = 0;
			//repetir el siguiente proceso
				
				for ($i=0; $i < count($productos); $i++) {
					$sql = "SELECT EXISTENCIA_PRODUCTO, DESCRIPCION_PRODUCTO, STOCK_MAX FROM productos WHERE ID = '$productos[$i]'";
					$query = mysqli_query($conexion, $sql);
					$producto = mysqli_fetch_assoc($query);
					
					if ($producto["EXISTENCIA_PRODUCTO"] <= $producto["STOCK_MAX"] && $cantidades[$i]+$producto["EXISTENCIA_PRODUCTO"] <= $producto["STOCK_MAX"]) {
						//si esta seleccionado un checkbox
						if (!(empty($productos[$i])) && !(empty($cantidades[$i]))) {
							//y aparte si esta definida una cantidad
							if ($insert == 0) {
								//inserta el pedido
								$sql = "INSERT INTO requisicion(OBSERVACION_REQUISICION, FECHA_REQUISICION, CI_RIF, ID_PROVEEDOR)
									VALUES ('','".date("Y-m-d")."','".$_SESSION["CI_RIF"]."', '$request->id_proveedor')";
								$query = mysqli_query($conexion, $sql);
								$id = mysqli_insert_id($conexion);
								$insert = 1;
							}
							//aparte inserta productos y sus cantidades asociados a un solo pedido
							$sql = "INSERT INTO detalles_requisicion(ID_REQUISICION, ID_PRODUCTO, CANTIDAD_REQUISICION) VALUES ($id,'".$productos[$i]."','".$cantidades[$i]."')";
							
							$query = mysqli_query($conexion, $sql);
												
							$fecha=date('Y-m-d g:i:s-a');
							$auditoria="INSERT INTO auditoria_usuarios(CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('".$_SESSION['CI_RIF']."','Requisicion','Requisicion de Mercancia','$fecha')";
							mysqli_query($conexion, $auditoria);
						}
					} else {
						$data = ["result" => false, 'msg' => 'Es stock maximo de '.$producto["DESCRIPCION_PRODUCTO"].' es de '.$producto["STOCK_MAX"]];
						die(json_encode($data));						
					}
				}
			// si se inserto el pedido correctamente enviar variable de exito
			if ($insert > 0) {
				$data = ["result" => true, 'msg' => 'Felicidades. Requisición creada con éxito.', 'id' => $id];
			} else {
				$data = ["result" => false, 'msg' => 'Lo sentimos el registro no se pudo completar. Pedimos que intente nuevamente.', 'error' => error_get_last()];
			}
			//sino enviar variable de error
		} else {
			$data = ["result" => false, 'msg' => 'No ha seleccionado cantidades'];
		}
	} else {
		$data = ["result" => false, 'msg' => 'No ha seleccionado productos'];
	}

	die(json_encode($data));