<!DOCTYPE html>
<?php include 'include/head.html';?>

<body>

<?php
require 'php/conexion.php';

if (isset($_POST['categ'])) {
    $categori=$_POST['categ'];  
}
else{
    $categori="";
}
?>

<?php include 'include/menu.php'; ?>

<div class="container">
        <div class="row">
            <div class="col-md-12">
                <form action=""  method="POST">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="categ">Filtrar por:</label>
                            <select name="categ" id="categ" class="form-control">
                            <option value="">--Todos--</option>
                             <?php 
                                        $categorias="SELECT * FROM categorias";
                                        $resultado=mysqli_query($conexion, $categorias);
                                        while ($row=mysqli_fetch_array($resultado)) {     ?>

                                           <option value="<?php echo $row['ID']; ?>"><?php echo $row['DESCRIPCION_CATEGORIAS']; ?></option>
                                       
                                    <?php  } ?>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary btn-sm" name="Buscar">Buscar</button>
                        <a href="reportes/reportestock.php"><button type="button" class="btn btn-primary btn-sm" name="exportarpdf">Exportar PDF</button></a>

                     </div>
                </form>

                <div class="datagrid">
                    <h3><p align="center">Articulos</p></h3>
                    <table>
                        <thead>
                            <tr>
                                <th>Codigo Producto</th>
                                <th>Descripcion de Productos</th>
                                <th>Categoria</th>
                                <th>Precio</th>
                                <th>Existencia</th>
                                <th>Observaciones</th>
                            </tr>
                        </thead>
                            <?php        
                            $sql="SELECT productos.ID_PRODUCTO, productos.PRECIO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, productos.STOCK_MIN, categorias.DESCRIPCION_CATEGORIAS 
                                    FROM productos INNER JOIN categorias ON productos.ID_CATEGORIAS=categorias.ID 
                                        WHERE 1 
                                            ORDER BY productos.ID_CATEGORIAS ASC";
                
                            if (!empty($categori)) {
                                $sql="SELECT productos.ID_PRODUCTO, productos.PRECIO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, productos.STOCK_MIN, categorias.DESCRIPCION_CATEGORIAS 
                                            FROM productos INNER JOIN categorias ON productos.ID_CATEGORIAS=categorias.ID 
                                                WHERE 1 "; 
                                $sql.="AND categorias.ID = '$categori'";
                            }
                
                            $consult=mysqli_query($conexion,$sql);
                            if (!mysqli_num_rows($consult)) {
                                echo '
                                <td colspan="6" style="text-align: center;font-size: 20px;">
                                    NO HAY REGISTROS
                                </td>
                                ';
                            }
                            while($resgistros=mysqli_fetch_assoc($consult)) {
                                echo'<tr>
                                    <td>'.$resgistros["ID_PRODUCTO"].'</td>
                                    <td>'.utf8_decode($resgistros["DESCRIPCION_PRODUCTO"]).'</td>
                                    <td>'.utf8_decode($resgistros["DESCRIPCION_CATEGORIAS"]).'</td>
                                    <td>'.utf8_decode($resgistros["PRECIO"]).'</td>
                                    <td>'.$resgistros["EXISTENCIA_PRODUCTO"].'</td>
                                    <td>';
                                    if ($resgistros['EXISTENCIA_PRODUCTO'] <= $resgistros['STOCK_MIN']) {
                                        echo "REPONER STOCK <div class='stock-min-true'></div>";
                                    }
                                    echo '</td>
                                </tr>';
                            }
                            ?>

                    </table>
                </div>
            </div>
        </div>
<hr>
<?php include'include/piedepagina.php'; ?>

</div>
<?php include'include/script.html';?>
</body>
</html>