<?php include"php/conexion.php";?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php include'include/menu.php'; ?>  

<div class="container">
    <div class="row">
        <div class="col-md-12">
        <h3><p align="center">RECEPCION DE MERCANCIA</p></h3>

            <form action="" method="POST" class="datagrid">
                <table id="listado">
                    <thead>
                        <tr>
                           <th></th>
                            <th>Codigo Articulo</th>
                            <th>Descripcion del articulo</th>
                            <th>Categoria</th>
                            <th>Existencia</th>
                            <th>Precio</th>
                            <th>Cantidad Solicitada</th>
                        </tr>
                    </thead>
                    
                    <tbody>                  
                       <?php
                        $sql="SELECT detalles_requisicion.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS, productos.EXISTENCIA_PRODUCTO, detalles_requisicion.CANTIDAD_REQUISICION 
                                FROM detalles_requisicion 
                                    INNER JOIN (
                                        productos INNER JOIN categorias ON productos.ID_CATEGORIAS=categorias.ID
                                    )  ON detalles_requisicion.ID_PRODUCTO = productos.ID 
                                        WHERE detalles_requisicion.ID_REQUISICION=".$_REQUEST['id'];
                            $consulta=mysqli_query($conexion,$sql);

                            while($resgistros=mysqli_fetch_array($consulta)) {

                            echo'<tr>
                            <td> <input type="checkbox" name="codartcheck" class="codigo" value="'.$resgistros["ID_PRODUCTO"].'" /></td>
                            <td>'.$resgistros["ID_PRODUCTO"].'</td>
                            <td id="product_name">'.$resgistros["DESCRIPCION_PRODUCTO"].'</td>    
                            <td>'.$resgistros["DESCRIPCION_CATEGORIAS"].'</td>
                            <td>'.$resgistros["EXISTENCIA_PRODUCTO"].'</td>

                            <td><input type="text" class="precio" value=""></td>

                            <td><input type="text" class="cantidad" value="'.$resgistros["CANTIDAD_REQUISICION"].'"></td>
                  
                             </tr>';
                         }
                       ?>
                    </tbody>
                </table>
                <br>
                <a href="recepcion.php"><input type="button" class="btn btn-danger btn-sm" name="btnatras" value="Atras"></a>
                <input type="button" class="btn btn-primary btn-sm" id="boton" name="btnactped" value="Guardar Recepcion">

            </form>
    </div>
</div>
<hr>
   
<?php include'include/piedepagina.php';?>
</div>
<?php include'include/script.html';?>
<script type="text/javascript"><?php require'js/script-rec.js';?></script>
</body>
</html>