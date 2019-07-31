<?php require"php/conexion.php";?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<body>

<?php
require 'php/conexion.php';

if (isset($_POST['id_producto'])) {
    $producto=$_POST['id_producto'];  
} else{
    $producto="";
}
?>
<?php include 'include/menu.php'; ?>  
<div class="container">
<div class="container">
        <div class="row">
            <div class="col-xs-15">
            <form action=""  method="POST">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="id_producto">Filtrar por:</label>
                            <select name="id_producto" id="id_producto" class="form-control">
                            <option value="">--Buscar--</option>
                             <?php 
                                        $categorias="SELECT * FROM productos";
                                        $resultado=mysqli_query($conexion, $categorias);
                                        while ($row=mysqli_fetch_array($resultado)) {     ?>

                                           <option value="<?php echo $row['ID']; ?>"><?php echo $row['DESCRIPCION_PRODUCTO']; ?></option>
                                       
                                    <?php  } ?>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary btn-sm" name="Buscar">Buscar</button>

                     </div>
                </form>
            <h3><p align="center">MOVIMIENTO DE INVENTARIO</p></h3>
                <form action="reportes/notapedidos.php?nope=<?php echo $_REQUEST['id']; ?>" method="POST" class="datagrid">
                    <table>
                        <thead>
                            <tr>
                                <th>Fecha</th>
                                <th>Tipo</th>
                                <th>Codigo Articulo</th>
                                <th>Nombre del articulo</th>
                                <th>Entrada</th>
                                <th>Salida</th>
                                <th>Existencia</th>
                            </tr>
                        </thead>                  
                        <?php
                        if (isset($_POST['id_producto'])) {
                            $producto=$_POST['id_producto'];  
                            $sql = "SELECT movimiento_inventario.FECHA, movimiento_inventario.TIPO, movimiento_inventario.CANTIDAD, productos.DESCRIPCION_PRODUCTO, productos.ID_PRODUCTO 
                                    FROM movimiento_inventario
                                        INNER JOIN productos ON movimiento_inventario.ID_PRODUCTO = productos.ID 
                                            WHERE productos.ID = '$producto' ";
                            $consulta = mysqli_query($conexion, $sql);
                            if (mysqli_num_rows($consulta) == 0){
                                echo'<tr>
                                    <td colspan="7" class="text-center">NO HAY MOVIMIENTOS</td>
                                </tr>';
                            }
                            $stock=0;
                            while ($resgistros = mysqli_fetch_array($consulta)) {
                                $entrada = 0;
                                $salida = 0;
                                switch ($resgistros["TIPO"]) {
                                    case '1':
                                        $tipo = "PED";
                                        $movido = "SALIDA";
                                        $salida = $resgistros["CANTIDAD"];
                                        break;
                                    case '2':
                                        $tipo = "OC";
                                        $movido = "ENTRADA";
                                        $entrada = $resgistros["CANTIDAD"];
                                        break;
                                    case '3':
                                        $tipo = "AJU";
                                        break;
                                    case '4':
                                        $tipo = "RECEP";                                    
                                        $movido = "ENTRADA";
                                        $entrada = $resgistros["CANTIDAD"];
                                        break;
                                    default:
                                        $tipo = "NONE";
                                        $movido = "NONE";
                                        break;
                                }
                                echo'<tr>
                                    <td>'.$resgistros["FECHA"].'</td>
                                    <td>'.$tipo.'</td>
                                    <td>'.$resgistros["ID_PRODUCTO"].'</td>
                                    <td>'.$resgistros["DESCRIPCION_PRODUCTO"].'</td>    
                                    <td>'.$entrada.'</td>
                                    <td>'.$salida.'</td>';

                                    $stock += $entrada-$salida;
                                    
                                    echo '<td>'.$stock.'</td>
                                </tr>';
                            }
                        } else{
                            $producto="";
                            echo'<tr>
                                    <td colspan="7" class="text-center">NO HA FILTRADO POR NINGUN PRODUCTO</td>
                                </tr>';
                        }
                        
                        
                        ?>
                    </table>
                    <br>
                    <button style="position: relative; left: 45%; right: 45%;" type="submit" name="imprimir" class="btn btn-primary btn-sm">Exportar PDF</button>
                </form>
            </div>
        </div>
        <hr>
    
</div>
<?php include 'include/piedepagina.php';?>
<?php include 'include/script.html';?>
</body>
</html>