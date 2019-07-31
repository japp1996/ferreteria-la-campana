<?php 
  session_start();
  include 'conexion.php';
  $request_body = file_get_contents('php://input');
  $request = json_decode($request_body);
  
  $sql = "SELECT DESCRIPCION_PRODUCTO FROM productos WHERE DESCRIPCION_PRODUCTO = '$request->descartin' ";
  $consultaem= mysqli_query($conexion,$sql);
  $resutemail=mysqli_num_rows($consultaem);

  if ($request->stock_min > $request->stock_max) {
    die(json_encode(array('result' => false, 'msg' => 'El stock minimo no puede ser mayor que el maximo')));
  }

  if ($resutemail==1) {
    echo json_encode(array('result' => false, 'msg' => 'Ya existe este nombre asignado a un codigo'));
  } else {
    $productos = mysqli_fetch_object(mysqli_query($conexion, "SELECT * FROM productos WHERE ID_CATEGORIAS = '$request->categ' ORDER BY ID DESC LIMIT 1"));
    $categorias = mysqli_fetch_object(mysqli_query($conexion, "SELECT * FROM categorias WHERE ID = '$request->categ'"));
    
    $correlativo = $productos == NULL || $productos->ID == NULL ? 1 : $productos->ID + 1;
    $newcode = $categorias->ID_CATEGORIAS . $correlativo;
    $sql = "INSERT INTO productos(ID_PRODUCTO, DESCRIPCION_PRODUCTO, ID_CATEGORIAS, EXISTENCIA_PRODUCTO, UNIDAD, STOCK_MIN, STOCK_MAX) VALUES ('$newcode','$request->descartin','$request->categ','0','$request->unidad','$request->stock_min','$request->stock_max')";
    $ejecutar = mysqli_query($conexion, $sql);
    $id = mysqli_insert_id($conexion);

    $fecha=date('Y-m-d g:i:s-a');
    $auditoria="INSERT INTO auditoria_usuarios(CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES(".$_SESSION['CI_RIF']."','Registro','Registro de articulo','$fecha')";
    mysqli_query($conexion, $auditoria);

    if ($ejecutar) {
      echo json_encode(array('result' => true, 'msg' => 'El articulo ha sido registrado satisfactoriamente'));
    } else {
      echo json_encode(array('result' => false, 'msg' => 'El articulo no pudo registrarse'));
    }
  }