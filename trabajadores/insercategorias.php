<?php require'php/conexion.php';?>
<!DOCTYPE html>
<?php include'include/head.php';?>
<body>
  <?php include'include/menu.php';?>
  <div class="container">
    <form  action="" method="POST"  class="contacto">
      <h2>Crear Categorias</h2>
      <div class="row">
        <div class="col-xs-4">
          <div class="form-group">
            <label for="cedula">&nbsp; </label>
          </div>
        </div>
        <div class="col-xs-4">
         <button type="button" class="btn btn-info" id="buscar" data-toggle="modal" data-target="#registrodeCateg">Nueva Categoria</button>
       </div>
     </div>     

     <div id="registrodeCateg" class="modal fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Nueva Categoria</h4>
          </div>

          <div class="modal-body">
            <div class="row">
              <div class="col-xs-3">
                <div class="form-group">
                  <label for="codart">Codigo Categoria</label>
                  <input type="text" class="form-control" id="codcat" name="codcat" >
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-xs-4">
                <div class="form-group">
                  <label for="categ">Descripcion de Categoria</label>
                  <input type="text" class="form-control" id="categ" name="categ">
                </div>
              </div>
            </div> 
            <input type="submit" class="btn btn-primary btn-sm" name="registrarcat" value="Registrar">
          </div>                                                                         
        </div>
      </div>
    </div>
    
  </form> 

  <?php require"php/insercategorias.php";?> 
  <?php include'include/piedepagina.php';?>
</div>
<?php include'include/script.php';?>    
</body>
</html>