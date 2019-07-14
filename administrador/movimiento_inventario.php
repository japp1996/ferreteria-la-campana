<?php require"php/conexion.php";?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php include 'include/menu.php'; ?>  
<div class="container">
<div class="container">
        <div class="row">
            <div class="col-xs-15">
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
                                <th>Stock</th>
                            </tr>
                        </thead>                  
                        <?php
                        $sql = "SELECT movimiento_inventario.FECHA, movimiento_inventario.TIPO, movimiento_inventario.CANTIDAD, productos.DESCRIPCION_PRODUCTO, productos.ID_PRODUCTO 
                                    FROM movimiento_inventario
                                        INNER JOIN productos ON movimiento_inventario.ID_PRODUCTO = productos.ID ";

                        $consulta = mysqli_query($conexion, $sql);
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
                                $stock = $entrada-$salida;
                                
                                echo '<td>'.$stock.'</td>
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
    <?php include 'include/piedepagina.php';?>
</div>
<?php include'include/script.html';?>
</body>
</html>