<?php require'php/conexion.php'; ?>
<!DOCTYPE html>
<?php include'include/head.php';?>
<body>
    <?php include'include/menu.php';?>
    <?php 
    $consulta="SELECT usuarios.NOMBRE_USUARIOS FROM usuarios INNER JOIN pedidos WHERE pedidos.CI_RIF=usuarios.CI_RIF AND pedidos.ID_PEDIDO ='".$_REQUEST['id']."'";
    $resultado=mysqli_query($conexion, $consulta);
    while ($row=mysqli_fetch_array($resultado)) {  ?>

        <div class="container">
            <form action="" method="POST" class="contacto">
              <h2>ESTATUS DE PEDIDO N° <?php echo $_REQUEST['id']; ?></h2>
              <div class="row">
               <div class="col-xs-2">
                <div class="form-group">
                    <label for="noped">N° Pedido</label>
                    <input type="text" class="form-control" title="N° de pedido" id="noped" name="noped" value="<?php echo $_REQUEST['id']; ?>" readonly />
                </div>
            </div>

            <div class="col-xs-5">
                <div class="form-group">
                    <label for="noped">Nombre del Cliente</label>
                    <input type="text" class="form-control" id="noped" name="nameus" value="<?php echo $row['NOMBRE_USUARIOS']; ?>" readonly />
                </div>
            </div>

            <div class="col-xs-3">
                <div class="form-group">
                    <label for="estadoped">Estatus</label>
                    <select name="estadoped" id="estadoped" class="form-control">
                        <option >--Seleccione--</option>

                        <?php 
                        $consulta="SELECT * FROM estado WHERE DESCRIPCION_ESTADO='ENTREGADO' AND ID_ESTADO='ANULADO'  ";
                        $resultado=mysqli_query($conexion, $consulta);
                        while ($row=mysqli_fetch_array($resultado)) {     ?>


                            <option value="<?php echo $row['ID_ESTADO']; ?>"><?php echo $row['DESCRIPCION_ESTADO']; ?></option>
                            
                        <?php   } ?>

                    </select>
                    
                </div>
            </div>
        </div>
        <div class="row">
        </div>                    
        <button type="submit" class="btn btn-primary btn-sm" name="procesar">Procesar</button>
        <a href="actdetallespedido.php?id=<?php echo $_REQUEST['id']; ?>"><button type="button" class="btn btn-primary btn-sm" name="modificar">Modificar</button></a>
    </form>
    <br>

    <form method="POST" action="reportes/notadeentrega.php?nope=<?php echo $_REQUEST['id']; ?>">
     
    <?php }?>

    <button style="position: relative; left: 45%; right: 45%;" type="submit" class="btn btn-primary btn-sm" name="imprimir">Exportar PDF</button>
    <?php require "php/actualizarestatus.php"; ?>
</form>
<hr>
<?php include'include/piedepagina.php'; ?>
</div>  
<?php include'include/script.php';?>
</body>
</html>