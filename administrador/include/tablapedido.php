<?php 
$sql = "SELECT ID, ID_CATEGORIAS, DESCRIPCION_CATEGORIAS FROM categorias 
            WHERE categorias.ID IN (
                SELECT ID_CATEGORIAS FROM productos WHERE productos.EXISTENCIA_PRODUCTO > 0
            )
                ORDER BY categorias.ID_CATEGORIAS ASC";
$query = mysqli_query($conexion, $sql);
if (mysqli_num_rows($query) == 0) {
?>
<table>
    <thead>
    
    </thead>
    <tbody>
        <tr>
            <td style="text-align: center;font-size: 36px;font-weight: 900;">
            NO HAY PRODUCTOS PARA LA VENTA
            </td>
        </tr>
    </tbody>
</table>
<?php 
} else {
    while ($categoria = mysqli_fetch_object($query)) {
        $sql="SELECT productos.ID, productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos INNER JOIN categorias ON productos.ID_CATEGORIAS=categorias.ID WHERE productos.ID_CATEGORIAS = '$categoria->ID'";
        $consulta=mysqli_query($conexion,$sql);
    ?>
        <button type="button" class="accordion"><?php echo $categoria->DESCRIPCION_CATEGORIAS; ?></button>
        <div class="panel">
            <table id="listado">
                <thead>
                    <tr>
                        <th></th>
                        <th>Código</th>
                        <th>Descripcion Articulo</th>
                        <th>Categoria</th>
                        <th>Existencia</th>
                        <th>Cantidad</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        while($registros=mysqli_fetch_array($consulta)) {
                            if ($registros["EXISTENCIA_PRODUCTO"] > 0) {
                                echo '
                                <tr>
                                    <td><input type="checkbox" class="codigo" value="'.$registros["ID"].'" /></td>
                                    <td>'.$registros["ID_PRODUCTO"].'</td>
                                    <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
                                    <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>
    
                                    <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
                                        <td>
                                        <select class="cantidad" >';
                                            for ($i=1; $i <= $registros["EXISTENCIA_PRODUCTO"] ; $i++) {
                                                # code...
                                                echo  "<option value='$i' >".$i."</option>";
                                            }
                                        echo '</select>
                                    </td>
    
                                </tr>
                            ';
                            }
                        }
                    ?>
                </tbody>
            </table>
        </div>
    <?php 
    }
}

?>