<!DOCTYPE html>
<?php include'include/head.html';?>
<body>

<?php
require'php/conexion.php';

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

                                           <option value="<?php echo $row['ID_CATEGORIAS']; ?>"><?php echo $row['DESCRIPCION_CATEGORIAS']; ?></option>
                                       
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
                            <th>Existencia</th>
                            <th>Observaciones</th>
                        </tr>
                        
                            </thead>
                <?php        
                $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS WHERE 1 ORDER BY productos.ID_CATEGORIAS ASC";
          
                    if (!empty($categori)) {
                    $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS WHERE 1 "; 
                    $sql.="AND categorias.ID_CATEGORIAS = '$categori'  " ;
                }
          
                $consult=mysqli_query($conexion,$sql);
                while($resgistros=mysqli_fetch_assoc($consult)) {
                    echo'<tr';
                if ($resgistros['EXISTENCIA_PRODUCTO'] <= 5) {

                   echo ' class="resaltarstock"';
                }

                echo '>

                <td>'.$resgistros["ID_PRODUCTO"].'</td>
                <td>'.utf8_decode($resgistros["DESCRIPCION_PRODUCTO"]).'</td>
                <td>'.utf8_decode($resgistros["DESCRIPCION_CATEGORIAS"]).'</td>
                <td>'.$resgistros["EXISTENCIA_PRODUCTO"].'</td>

                <td>';


                if ($resgistros['EXISTENCIA_PRODUCTO'] <= 5) {

                   echo "REPONER STOCK";
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