<?php 
include "conexion.php";

if (isset($_POST['procesar'])) {
  $status=$_POST['estadoped'];
  $cancelado="ANULADO";
  $entregado="ENTREGADO";
  $noped=$_POST['noped'];

  if ($status==$cancelado) {
    $sql= "SELECT detalles_pedido.ID_PRODUCTO, detalles_pedido.CANTIDAD_PRODUCTO 
            FROM detalles_pedido 
              WHERE ID_PEDIDO='$noped'";
    $query= mysqli_query($conexion, $sql);
    while ($fetch= mysqli_fetch_assoc($query)) {
      $update="UPDATE productos 
                SET EXISTENCIA_PRODUCTO=(EXISTENCIA_PRODUCTO+".$fetch['CANTIDAD_PRODUCTO'].") 
                  WHERE ID_PRODUCTO='".$fetch['ID_PRODUCTO']."'";
      mysqli_query($conexion, $update);
    }

    $cambiostat="UPDATE pedidos SET ID_ESTADO='$status' WHERE ID_PEDIDO='$noped'";
    mysqli_query($conexion, $cambiostat);
    $fecha=date('Y-m-d g:i:s-a');
    $auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CEDULA']."','Modificacion','Anulacion de Pedido','$fecha')";
    mysqli_query($conexion, $auditoria);

    echo '<br><br><div class="alert danger">
    <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
    <strong>Importante!</strong> El pedido ha sido anulado, la cantidad ha sido regresada al stock.
    <br>

    </div>  
    ';  
  } elseif ($status == $entregado) {
    $update="UPDATE pedidos SET ID_ESTADO='$status' WHERE ID_PEDIDO='$noped'";
    mysqli_query($conexion, $update);
    $fecha=date('Y-m-d g:i:s-a');
    $auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CEDULA']."','Modificacion','Pedido Entregado','$fecha')";
    mysqli_query($conexion, $auditoria);
    echo '<br><br>
    <div class="alert">
    <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
    <strong>Felicidades!</strong> El pedido ha sido entregado, el estatus ha sido cambiado.
    <br>
    </div>  
    ';
  } else{
    $sql="UPDATE pedidos SET ID_ESTADO='$status' WHERE ID_PEDIDO='$noped'";
    mysqli_query($conexion, $sql);
    $fecha=date('Y-m-d g:i:s-a');
    $auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CEDULA']."','Modificacion','Procesamiento de estado de pedido','$fecha')";
    mysqli_query($conexion, $auditoria);
    echo '<br><br><div class="alert info">
    <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     >
    <strong>Importante!</strong> El estatus de pedido ha sido cambiado.
    <br>
    </div>';
  }

  echo '<meta http-equiv="Refresh" content="2;url=consultarpedidos.php"> ';
} else{
  $status="";
  $noped="";
}