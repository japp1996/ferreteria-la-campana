<?php require'php/conexion.php';?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php include'include/menu.php';?>

<div class="container">
        <form  action="estado.php" method="POST"  class="contacto">
      <h2>Buscar Tipo de Estado</h2>   
        <div class="row">
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="cedula">&nbsp; </label>
                </div> 
        
             </div>
             <div class="col-xs-4">
                <div class="form-group">
                    <label for="codart" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Introduzca Código</label>
                    <input type="text" class="form-control" id="idped" name="idpedbuscar" placeholder="">              
                </div> 
                 <button type="submit" class="btn btn-primary btn-md" id="buscar" name="buscares">Buscar</button> 
                 <br>
                 <br>
                  <button type="button" class="btn btn-info" id="buscar" data-toggle="modal" data-target="#registrodeEstado">Nuevo Estado</button>
             </div>
             
        </div>     

   <div id="registrodeEstado" class="modal fade" role="dialog">
    <div class="modal-dialog">    
        <div class="modal-content">
          <div class="modal-header">

        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Nuevo Estado</h4>
      </div>

       <div class="modal-body">
        <div class="row">
            <div class="col-xs-3">
                <div class="form-group">
                    <label for="codart">Codigo Estado</label>
                    <input type="text" class="form-control" id="idped" name="idped" >
                </div>
            </div>
        </div>
        <div class="row">
             <div class="col-xs-4">
                <div class="form-group">
                    <label for="descart">Descripcion de Estado</label>
                    <input type="text" class="form-control" id="nameped" name="nameped">
                </div>
            </div>
        </div>    
         <button type="submit" class="btn btn-primary btn-sm" name="registrarestped">Registrar</button>
         <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Cerrar</button>     
  </div>
    </form>     
     </div>
            </div>
                </div>
<?php 
require"include/actualizarestadoped.php"; 
require"php/inserestadoped.php"; 
include'include/piedepagina.php';
include'include/script.html';
?>
</body>
</html>