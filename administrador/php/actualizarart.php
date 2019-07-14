<?php 
  session_start();
  require "conexion.php";
  $request_body = file_get_contents('php://input');
  $request = json_decode($request_body);

  switch ($request->accion) {
    case 'update':
      $sql="UPDATE productos 
              SET DESCRIPCION_PRODUCTO='$request->descart_up', 
                    STOCK_MIN='$request->stock_min_up', 
                      STOCK_MAX='$request->stock_max_up', 
                        UNIDAD='$request->unidad_up', 
                          ID_CATEGORIAS='$request->categ_up' 
                            WHERE ID='$request->id'";
      mysqli_query($conexion,$sql);
    
      $fecha=date('Y-m-d g:i:s-a');
      $auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CI_RIF']."','Modificacion','Modificacion de datos de Articulo','$fecha')";
      mysqli_query($conexion, $auditoria);

      echo json_encode(array('result' => true, 'msg' => 'Los datos fueron modificados exitosamente'));

      break;
    case 'delete':
      $sql="DELETE FROM productos WHERE ID='$request->id'";
      mysqli_query($conexion,$sql);

      $fecha=date('Y-m-d g:i:s-a');
      $auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CI_RIF']."','Eliminacion','Eliminacion de Articulo','$fecha')";
      mysqli_query($conexion, $auditoria);

      echo json_encode(array('result' => true, 'msg' => 'Los datos fueron eliminados exitosamente'));
      break;
    default:
      # code...
      break;
  }