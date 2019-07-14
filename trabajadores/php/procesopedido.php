<?php
require_once ("conexion.php");
	// $productos= explode("+", "+");
	// $cantidades= explode("+", "+");
	//recibiendo lo que selecciono el usuario (producto seleccionado y cantidad)
$productos= explode("+", $_POST["pedido"]);
$cantidades= explode("+", $_POST["cantidades"]);
	//si los productos seleccionados son mayor a uno
if (count($productos)> 1) {
	$insert = 0;
	session_start();
		//repetir el siguiente proceso
	for ($i=0; $i < count($productos); $i++) {
			//si esta seleccionado un checkbox
		if (!(empty($productos[$i]))) {
				//y aparte si esta definida una cantidad
			if (!(empty($cantidades[$i]))) {
				if ($insert == 0) {
						//inserta el pedido
					$sql = "INSERT INTO pedidos(ID_PEDIDO, CI_RIF, FECHA_PEDIDO, ID_ESTADO)
					VALUES ('','".$_SESSION["CI_RIF"]."','".date("Y-m-d")."','POR ENTREGAR')";
					$query = mysqli_query($conexion, $sql);
					$id = mysqli_insert_id($conexion);
					$insert = 1;
				}
					//aparte inserta productos y sus cantidades asociados a un solo pedido
				$sql = "INSERT INTO detalles_pedido(ID, ID_PEDIDO, ID_PRODUCTO, CANTIDAD_PRODUCTO)VALUES ('','$id','$productos[$i]','".$cantidades[$i]."')";
				$query = mysqli_query($conexion, $sql);
					// y Resta la cantidad de la tabla productos
				$sql= "UPDATE productos SET EXISTENCIA_PRODUCTO=(EXISTENCIA_PRODUCTO-'".$cantidades[$i]."') WHERE ID_PRODUCTO='".$productos[$i]."'";
				$query=mysqli_query($conexion, $sql);
				$fecha=date('Y-m-d g:i:s-a');
				$auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CEDULA']."','Pedido','Creacion de Pedido','$fecha')";
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
	$data["error"]= 1;
}
die(json_encode($data));