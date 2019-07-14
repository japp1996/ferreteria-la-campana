<?php require'php/conexion.php' ?>
<!DOCTYPE html>
<?php include'include/head.php';?>
<body>
    <?php include'include/menu.php';?>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3><p align="center">MIS PEDIDOS</p></h3>
                <form action="procesopedido.php" method="POST" class="datagrid">
                    <table>
                        <thead>
                            <tr>
                                <th>N° </th>
                                <th>Descripcion Articulo</th>
                                <th>Cantidad</th>
                                <th>Existencia</th>
                            </tr>
                        </thead>
                        <?php
                        $sql="SELECT detalles_pedido.ID_PEDIDO, detalles_pedido.CANTIDAD_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.STOCK FROM detalles_pedido inner join productos on detalles_pedido.ID_PRODUCTO=productos.ID_PRODUCTO";
                        $consulta=mysqli_query($conexion,$sql);
                        while($resgistros=mysqli_fetch_array($consulta)) {
                            echo'<tr>
                            <td>'.$resgistros["ID_PEDIDO"].'</td>
                            <td>'.$resgistros["DESCRIPCION_PRODUCTO"].'</td>
                            <td>'.$resgistros["CANTIDAD_PRODUCTO"].'</td>
                            <td>'.$resgistros["STOCK"].'</td>
                            </tr>';
                        }
                        ?>
                    </table>
                </form>
            </div>
        </div>
        <hr>
        <?php include'include/piedepagina.php';?>
    </div>
    <?php include'include/script.php';?>
</body>
</html>