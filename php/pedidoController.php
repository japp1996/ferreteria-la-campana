<?php
namespace PHP\Pedido;
include 'conexion.php';

class Pedido
{
  public static function check_expired($conexion) {
    $fecha = date('Y-m-d g:i:s-a');
    $mysql = "SELECT * FROM pedidos WHERE ID_ESTADO = 'POR ENTREGAR' AND FECHA_EXPIRACION < '$fecha'";
    $consulta = mysqli_query($conexion, $mysql);
    $filas = mysqli_num_rows($consulta);

    while ($pedido = mysqli_fetch_object($consulta)) {
        $id = $pedido->ID_PEDIDO;
        $mysql = "UPDATE pedidos SET ID_ESTADO = 'ANULADO' WHERE ID_PEDIDO = '$id'";
        mysqli_query($conexion, $mysql);

        $auditoria="INSERT INTO auditoria_usuarios(CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('V-123456789','Anulacion','Anulacion de pedido $id por fecha de vencimiento superada.','$fecha')";
        mysqli_query($conexion, $auditoria);
    }
  }
}

$pedido = new Pedido;
$pedido->check_expired($conexion);