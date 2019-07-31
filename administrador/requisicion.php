<?php include "php/conexion.php";?>
<!DOCTYPE html>
<?php include 'include/head.html';?>
<body>
<?php include 'include/menu.php'; ?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
          <h3><p align="center">REQUISICION DE MERCANCIA</p></h3>
          <select name="proveedor_id" id="proveedor_id" data-name="Proveedor" class="selectpicker show-menu-arrow" data-style="form-control" data-live-search="true" title="-- Seleccione proveedor --">
            <option value="">--Seleccione--</option>                      
            <?php
              $consulta="SELECT * FROM proveedores";
              $resultado=mysqli_query($conexion, $consulta);
              while ($row=mysqli_fetch_array($resultado)) {   ?>
              <option value="<?php echo $row['ID']; ?>" data-tokens="<?php echo $row['NOMBRE']?>"><?php echo $row['NOMBRE']; ?></option>
            <?php  } ?>
          </select>
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#registrodeUsuario">Nuevo proveedor </button>
          <form action="#" method="POST" class="datagrid mt" >
            <?php include "include/tablarequisicion.php"; ?>
            <br />
            <input  id="boton" type="button" class="btn btn-primary btn-sm" name="btnrealizarpedido" value="Realizar">
            <a href="recepcion.php" id="ver" class="btn btn-danger btn-sm" name="btnverrpedido">Procesar recepción</a>
          </form>
        </div>
    </div>
    <hr/>

<?php include 'include/modalProveedor.php';?>  
<?php include 'include/piedepagina.php';?>
</div>
<?php include 'include/script.html';?>    
<script type="text/javascript">
  <?php require 'js/script-req.js';?>
</script>
</body>
</html>