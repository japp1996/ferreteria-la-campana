<?php
require_once ("conexion.php");
	// $productos= explode("+", "+");
	// $cantidades= explode("+", "+");
$productos= explode("+", $_POST["pedido"]);
$cantidades= explode("+", $_POST["cantidades"]);
$idpedido=$_REQUEST["id"];
if (count($productos)> 1) {
	$insert = 0;
	session_start();
	for ($i=0; $i < count($productos); $i++) {
		if (!(empty($productos[$i]))) {
			if (!(empty($cantidades[$i]))) {
				if ($insert == 0) {
					$sql="UPDATE productos INNER JOIN detalles_pedido ON productos.ID_PRODUCTO = detalles_pedido.ID_PRODUCTO SET productos.EXISTENCIA_PRODUCTO = (detalles_pedido.CANTIDAD_PRODUCTO+productos.EXISTENCIA_PRODUCTO) WHERE productos.ID_PRODUCTO = detalles_pedido.ID_PRODUCTO AND detalles_pedido.ID_PEDIDO='$idpedido'";
					$query=mysqli_query($conexion,$sql);
					$sql="UPDATE productos SET EXISTENCIA_PRODUCTO=(EXISTENCIA_PRODUCTO-".$cantidades[$i].")";
					$query=mysqli_query($conexion,$sql);
					$sql = "UPDATE detalles_pedido SET CANTIDAD_PRODUCTO=".$cantidades[$i]." WHERE ID_PRODUCTO = '".$productos[$i]."'";
					$query=mysqli_query($conexion, $sql);
					$insert = 1;
					$fecha=date('Y-m-d g:i:s-a');
					$auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CEDULA']."','Modificacion','Modificacion de datos de Pedido','$fecha')";
					mysqli_query($conexion, $auditoria);
				}

			}
		}
	}
	if ($insert > 0) {
		$data["exito"]= 1;
	} else {
		$data["error"] = 2;
	}
} else {
	$data["error"]= 1;
}
die(json_encode($data));