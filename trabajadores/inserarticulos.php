<?php require"php/conexion.php";?>
<!DOCTYPE html>
<?php include'include/head.php';?>
<body>
  <?php include'include/menu.php';?>

  <div class="container">
    <form  action="inserarticulos.php" method="POST"  class="">
      <div class="row">
        <h2 class="text-center">Registrar Articulo</h2>
        <div class="col-xs-4"></div>
        <div class="col-xs-4">
          
          <button type="button" class="btn btn-info form-control" id="buscar" data-toggle="modal" data-target="#registrodeProducto">Nuevo Producto</button>
        </div>
        
      </div>   

      <div id="registrodeProducto" class="modal fade" role="dialog">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">

              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Nuevo Articulo</h4>
            </div>

            <div class="modal-body">
              <div class="row">
                <div class="col-xs-4">
                  <div class="form-group">
                    <label for="codart">Codigo Articulo</label>
                    <input type="text" class="form-control" id="" name="codartin" >
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-xs-4">
                  <div class="form-group">
                    <label for="descart">Descripcion de Articulo</label>
                    <input type="text" class="form-control" id="descart" name="descartin">
                  </div>
                </div>

                <div class="col-xs-4">
                  <div class="form-group">
                    <label for="categ">Categoria</label>
                    <select name="categ" id="categ" class="form-control"> 
                      <option value="categ">--Seleccione--</option>
                      <?php 
                      $consulta="SELECT * FROM categorias";
                      $resultado=mysqli_query($conexion, $consulta);
                      while ($row=mysqli_fetch_array($resultado)) {   ?>

                       <option value="<?php echo $row['ID_CATEGORIAS']; ?>"><?php echo $row['DESCRIPCION_CATEGORIAS']; ?></option>

                     <?php  } ?>
                   </select>
                 </div>
               </div>
             </div>   

             <div class="row">
              <div class="col-xs-4">
                <div class="form-group">
                  <label for="EXISTENCIA_PRODUCTO">Existencia</label>
                  <input type="text" class="form-control" id="EXISTENCIA_PRODUCTO"  name="EXISTENCIA_PRODUCTO" >
                </div>
              </div>

              <div class="col-xs-4">
                <div class="form-group">
                  <label for="unidad">Unidad</label>
                  <input type="text" class="form-control" id="unidad"  name="unidad" >
                </div>
              </div>
            </div>

            <input type="submit" class="btn btn-primary btn-sm" name="registrarart" value="Registrar">
            <input type="button" class="btn btn-danger btn-sm" data-dismiss="modal" value="Cerrar">

          </div>
        </div>
      </div>

    </div>
  </form>
  
  <?php require"php/insertarart.php"; ?>
  <?php include'include/piedepagina.php'; ?>
</div>
<?php include'include/script.php';?>
</body>
</html>