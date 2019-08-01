<?php require "php/conexion.php";?>
<!DOCTYPE html>
<?php include 'include/head.html';?>
<body>
<?php include 'include/menu.php';?>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h3><p align="center">REALIZAR PEDIDO</p></h3>
                <form action="" method="POST" class="datagrid" >
                <?php include "include/tablapedido.php"; ?>
                    <br/>
                    <?php
                    if (mysqli_num_rows($query) > 0) {
                    ?>
                    <input id="boton" type="button" class="btn btn-primary btn-sm" name="btnrealizarpedido" value="Realizar">
                    <a  class="btn btn-danger btn-sm" href="consultarpedidos.php">Mis pedidos</a>
                    <?php } ?>
                </form>
            </div>
        </div>
        <hr>
<?php include 'include/piedepagina.php';?>
</div>
<?php include 'include/script.php';?>
<script type="text/javascript">
<?php require 'js/script-ped.js';?>
</script>
</body>
</html>