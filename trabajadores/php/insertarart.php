<?php 
if (isset($_POST['registrarart'])) {
  $codartin=$_POST['codartin'];
  $descartin=$_POST['descartin'];
  $categ=$_POST['categ'];
  $EXISTENCIA_PRODUCTO=$_POST['EXISTENCIA_PRODUCTO'];
  $unidad=$_POST['unidad'];
  $mysql = "SELECT ID_PRODUCTO FROM productos WHERE ID_PRODUCTO = '$codartin' ";
  $consultaci= mysqli_query($conexion,$mysql);
  $resutcedula=mysqli_num_rows($consultaci);
  $sql = "SELECT DESCRIPCION_PRODUCTO FROM productos WHERE DESCRIPCION_PRODUCTO = '$descartin' ";
  $consultaem= mysqli_query($conexion,$sql);
  $resutemail=mysqli_num_rows($consultaem);
  if ($resutcedula==1) {
    echo '<br><div class="alert danger">
    <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
    <strong>Lo sentimos!</strong> Ya esta registrado este codigo
    <br>

    </div>  
    ';  
  } elseif ($resutemail==1) {
    echo '<br><div class="alert danger">
    <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
    <strong>Lo sentimos!</strong> Ya existe este nombre asignado a un codigo
    <br>
    Consulte en <strong>Listado</strong>    > <strong>Articulo</strong> 

    </div>  
    ';  
  } else {
    $sql="INSERT INTO productos(ID_PRODUCTO, DESCRIPCION_PRODUCTO, ID_CATEGORIAS, EXISTENCIA_PRODUCTO, UNIDAD) VALUES ('$codartin','$descartin','$categ','$EXISTENCIA_PRODUCTO','$unidad')";
    $ejecutar=mysqli_query($conexion, $sql);

    $fecha=date('Y-m-d g:i:s-a');
    $auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CEDULA']."','Registro','Registro de articulo','$fecha')";
    mysqli_query($conexion, $auditoria);

    if ($ejecutar) {
      echo '<br><div class="alert"><span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span><strong>Felicidades!</strong> El articulo ha sido registrado satisfactoriamente<br></div>';
    } else{
      echo '<br><div class="alert info">
      <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
      <strong>Lo sentimos!</strong> El articulo no pudo registrarse
      </div>  ';
    }
  }
} else{
  $codartin="";
  $descartin="";
  $categ="";
  $EXISTENCIA_PRODUCTO="";
  $unidad="";
}