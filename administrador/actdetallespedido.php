<?php require"php/conexion.php";?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php include 'include/menu.php'; ?>  

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h3><p align="center">PEDIDO N° <?php echo $_REQUEST['id'] ?></p></h3>
            <form action="" method="POST" class="datagrid">
                    <table id="listado">
                        <thead>
                        <tr>
                           <th></th>
                            <th>Codigo Articulo</th>
                            <th>Descripcion del articulo</th>
                            <th>Categoria</th>
                            <th>Existencia</th>
                            <th>Cantidad Solicitada</th>
                           <th>Cantidad</th>
                        </tr>
                        </thead>
                        
                        <tbody>                  
                       <?php
                       $sql="SELECT detalles_pedido.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS, productos.EXISTENCIA_PRODUCTO, detalles_pedido.CANTIDAD_PRODUCTO FROM detalles_pedido INNER JOIN (productos INNER JOIN categorias ON productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS)  ON detalles_pedido.ID_PRODUCTO = productos.ID_PRODUCTO WHERE detalles_pedido.ID_PEDIDO=".$_REQUEST['id'];
                       $consulta=mysqli_query($conexion,$sql);

                       while($resgistros=mysqli_fetch_array($consulta)) {
                        echo'<tr>
                        <td> <a href="estatus.php?codigoart='.$resgistros["ID_PRODUCTO"].'"><input type="checkbox" name="codartcheck" class="codigo" value="'.$resgistros["ID_PRODUCTO"].'" /></a></td>
                        <td>'.$resgistros["ID_PRODUCTO"].'</td>
                        <td>'.$resgistros["DESCRIPCION_PRODUCTO"].'</td>
                        <td>'.$resgistros["DESCRIPCION_CATEGORIAS"].'</td>
                        <td>'.$resgistros["EXISTENCIA_PRODUCTO"].'</td>
                        <td>'.$resgistros["CANTIDAD_PRODUCTO"].'</td>
                        <td>
                        <select class="cantidad" name="cantidad'.$resgistros["ID_PRODUCTO"].'">';
                        for ($i=1; $i <= $resgistros["EXISTENCIA_PRODUCTO"] ; $i++) { 
                            echo  "<option value='".$i."'>".$i."</option>";}
                            echo '</select>
                        </td>
                        </tr>';
                    }
                    ?>
                        
                    </tbody>
                    </table>
                    <br>
                    
                     <input type="button" class="btn btn-primary btn-sm" id="boton" name="btnactped" value="Modificar Pedido">
            </form>
        </div>
    </div>
<hr>
<?php include 'include/piedepagina.php';?>

</div>
<script src="js/script-ped-act.js"></script>
</body>
</html>