<?php require 'php/conexion.php';?>
<!DOCTYPE html>
<?php include 'include/head.html';?>
<body>
<?php include 'include/menu.php';?>

<?php 
$consulta="SELECT usuarios.NOMBRE_USUARIOS 
            FROM usuarios INNER JOIN pedidos 
                    WHERE pedidos.CI_RIF=usuarios.CI_RIF 
                        AND pedidos.ID_ESTADO = 'POR ENTREGAR' 
                            AND pedidos.ID_PEDIDO ='".$_REQUEST['id']."'";
$resultado=mysqli_query($conexion, $consulta);
if (!mysqli_num_rows($resultado)) {
?>   
<h1 class="text-center">ESTE PEDIDO YA FUE PROCESADO</h1>
<?php 
}
while ($row=mysqli_fetch_array($resultado)) {  
?>

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
                    $consulta="SELECT * FROM estado";
                    $resultado=mysqli_query($conexion, $consulta);
                    while ($row=mysqli_fetch_array($resultado)) {
                ?>
                <option><?php echo $row['DESCRIPCION_ESTADO']; ?></option>
                <?php  } ?>
            </select>
        </div>
    </div>
</div>
    <div class="row"></div>
    <button type="submit" class="btn btn-primary btn-sm" name="procesar">
        Procesar
    </button>
    <a href="actdetallespedido.php?id=<?php echo $_REQUEST['id']; ?>"><button type="button" class="btn btn-primary btn-sm" name="modificar">Modificar</button></a>
    <a href="consultarestadopedido.php"><button type="button" class="btn btn-danger btn-sm">Atras</button></a>                                                                                 
</form>      
<br>
<form method="POST" action="reportes/notadeentrega.php?nope=<?php echo $_REQUEST['id']; ?>">
<a href="reportes/notapedidos.php?nope=<?php echo $_REQUEST['id']; ?>" class="btn btn-primary btn-sm" style="position: relative; left: 45%; right: 45%;" name="imprimir" target="_blank">Exportar PDF</a>  

<?php }?>

<?php include "php/actualizarestatus.php"; ?>
</form>

<hr>
<?php include'include/piedepagina.php'; ?>
</div>  
<?php include'include/script.html';?>
</body>
</html>