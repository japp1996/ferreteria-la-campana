<?php require"php/conexion.php";?>
<!DOCTYPE html>
<?php include'include/head.php';?>
<body>
    <?php include 'include/menu.php';?>
    <div class="container">
        <div class="row">
            <div class="col-xs-15">
                <h3><p align="center">PEDIDO N° <?php echo $_REQUEST['id'] ?></p></h3>
                <form action="reportes/notapedidos.php?nope=<?php echo $_REQUEST['id']; ?>" method="POST" class="datagrid">
                    <table>
                        <thead>
                            <tr>
                                <th>Codigo Articulo</th>
                                <th>Descripcion del articulo</th>
                                <th>Categoria</th>
                                <th>Cantidad Solicitada</th>
                            </tr>
                        </thead>
                        <?php
                        $sql="SELECT detalles_pedido.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS, detalles_pedido.CANTIDAD_PRODUCTO FROM detalles_pedido INNER JOIN (productos INNER JOIN categorias ON productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS)  ON detalles_pedido.ID_PRODUCTO = productos.ID_PRODUCTO WHERE detalles_pedido.ID_PEDIDO=".$_REQUEST['id'];
                        $consulta=mysqli_query($conexion,$sql);

                        while($resgistros=mysqli_fetch_array($consulta)) {
                            echo'<tr>
                            <td>'.$resgistros["ID_PRODUCTO"].'</td>
                            <td>'.$resgistros["DESCRIPCION_PRODUCTO"].'</td>
                            <td>'.$resgistros["DESCRIPCION_CATEGORIAS"].'</td>
                            <td>'.$resgistros["CANTIDAD_PRODUCTO"].'</td>
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
        <?php include'include/piedepagina.php';?>
    </div>
    <?php include'include/script.php';?>
</body>
</html>