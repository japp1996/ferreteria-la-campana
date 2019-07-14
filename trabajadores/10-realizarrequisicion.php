<?php require"php/conexion.php";?>
<!DOCTYPE html>
<?php include'include/head.php';?>
<body>
    <?php include'include/menu.php'; ?>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3><p align="center">REQUISICION DE MERCANCIA</p></h3>
                <form action="#" method="POST" class="datagrid" >
                    <?php require"include/tablarequisicion.php";?>
                    <br>
                    <input  id="boton" type="button" class="btn btn-primary btn-sm" name="btnrealizarpedido" value="Realizar">
                </form>
            </div>
        </div>
        <hr>
        <?php include'include/piedepagina.php';?>
    </div>
    <?php include'include/script.php';?>
    <script type="text/javascript"><?php include'js/script-req.js'; ?></script>
</body>
</html>