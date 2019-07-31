<?php
	session_start();
	require_once ("conexion.php");
	$request_body = file_get_contents('php://input');
	$request = json_decode($request_body);
	
	//recibiendo lo que selecciono el usuario (producto seleccionado y cantidad)
	$productos= explode("+",$request->pedido);
	$cantidades= explode("+", $request->cantidades);

	//si los productos seleccionados son mayor a uno
	if (count($productos) > 1) {
		$insert = 0;
		//repetir el siguiente proceso
		for ($i=0; $i < count($productos); $i++) {
			//si esta seleccionado un checkbox
			if (!(empty($productos[$i]))) {
				//y aparte si esta definida una cantidad
				if (!(empty($cantidades[$i]))) {
					
					$sql = "SELECT EXISTENCIA_PRODUCTO, PRECIO FROM productos WHERE ID = '$productos[$i]'";
					$query = mysqli_query($conexion, $sql);
					$producto = mysqli_fetch_object($query);
					
					if ($producto->EXISTENCIA_PRODUCTO > $cantidades[$i]) {
						if ($insert == 0) {
							//inserta el pedido
							$date = date("Y-m-d");
							switch (date('N')) {
								case 5:
									$date_expiration = date("Y-m-d 23:59:59", strtotime(date("Y-m-d") . "+ 3 days"));
									break;
								case 6:
									$date_expiration = date("Y-m-d 23:59:59", strtotime(date("Y-m-d") . "+ 2 days"));
									break;
								case 7:
									$date_expiration = date("Y-m-d 23:59:59", strtotime(date("Y-m-d") . "+ 1 days"));
									break;
								default:
									$date_expiration = date("Y-m-d 23:59:59", strtotime(date("Y-m-d") . "+ 1 days"));
									break;
							}

							$sql = "INSERT INTO pedidos(CI_RIF, FECHA_PEDIDO, FECHA_EXPIRACION, ID_ESTADO)
								VALUES ('".$_SESSION["CI_RIF"]."','$date', '$date_expiration', 'POR ENTREGAR')";
							$query = mysqli_query($conexion, $sql);
							$id = mysqli_insert_id($conexion);
							$insert = 1;
						}
						//aparte inserta productos, precio y sus cantidades asociados a un solo pedido
						$precio = $producto->PRECIO * $cantidades[$i];
						$sql = "INSERT INTO detalles_pedido(ID_PEDIDO, ID_PRODUCTO, CANTIDAD_PRODUCTO, PRECIO) VALUES ('$id','$productos[$i]','".$cantidades[$i]."', '$precio')";
						$query = mysqli_query($conexion, $sql);

						// y Resta la cantidad de la tabla productos
						$sql = "UPDATE productos SET EXISTENCIA_PRODUCTO=(EXISTENCIA_PRODUCTO-'".$cantidades[$i]."') WHERE ID='".$productos[$i]."'";
						$query = mysqli_query($conexion, $sql);

						$fecha=date('Y-m-d');
						$sql = "INSERT INTO movimiento_inventario (ID_PRODUCTO, CANTIDAD, TIPO, FECHA) VALUES ('".$productos[$i]."', '".$cantidades[$i]."', '1', '$fecha')";
						$query = mysqli_query($conexion, $sql);
		
						$fecha = date('Y-m-d g:i:s-a');
						$auditoria = "INSERT INTO auditoria_usuarios(CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('".$_SESSION['CI_RIF']."','Pedido','Creacion de Pedido Nro $id','$fecha')";
						mysqli_query($conexion, $auditoria);
					} else {
						$data = ["result" => false, 'msg' => 'En uno de sus productos marcados no podemos crear la cantidad requerida'];
						die(json_encode($data));
					}
				}
			}
		}
		// si se inserto el pedido correctamente enviar variable de exito
		if ($insert > 0) {
			$data = ["result" => true, 'msg' => "Pedido se ha creado con exito", 'id' => $id];
		} else {
			$data = ["result" => false, 'msg' => "No se pudo crear el pedido"];
		}
		//sino enviar variable de error
	} else {
		$data = ["result" => false, 'msg' => "No ha seleccionado ningun producto"];
	}
	die(json_encode($data));