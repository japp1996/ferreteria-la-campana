<?php require'php/conexion.php';?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php include'include/menu.php';?>

<div class="container">
    <form  action="proveedores.php" method="POST" class="contacto">
        <h2>Buscar Proveedor</h2>
        <div class="row">
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="cedula">&nbsp; </label>
                </div>     
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <p class="center text-center">Introduzca R.I.F</p>
                    <input type="text" onkeypress="return solonumero(event);" class="form-control" id="cedula" name="cedula" placeholder="Numero" value="">              
                </div> 
                <button type="submit" class="btn btn-primary btn-md" id="buscar" name="buscarus">Buscar</button> 
                <br>
                <br>
                <button type="button" class="btn btn-info btn-md" id="buscar" name="nuevouser" data-toggle="modal" data-target="#registrodeUsuario" >Nuevo Proveedor</button>
            </div>                          
        </div>     
    </form>
    <?php 
    include 'include/modalProveedor.php';
    ?>  
<?php 
    require 'include/actualizarproveedor.php'; 
    require 'php/inserproveedores.php'; 
    include 'include/piedepagina.php'; 
    include 'include/script.html';
?>
</body>
</html>