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
        $sql="SELECT productos.ID, productos.ID_PRODUCTO, productos.PRECIO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos INNER JOIN categorias ON productos.ID_CATEGORIAS=categorias.ID WHERE productos.ID_CATEGORIAS = '$categoria->ID'";
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
                        <th>Precio</th>
                        <th>Cantidad</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        while($registros=mysqli_fetch_array($consulta)) {
                            if ($registros["EXISTENCIA_PRODUCTO"] > 0) {
                                $disponibilidad = $registros["EXISTENCIA_PRODUCTO"] > 1 ? "DISPONIBLE" : "NO DISPONIBLE";
                                echo '
                                <tr>
                                    <td><input type="checkbox" class="codigo" value="'.$registros["ID"].'" /></td>
                                    <td>'.$registros["ID_PRODUCTO"].'</td>
                                    <td id="product_name">'.utf8_decode($registros["DESCRIPCION_PRODUCTO"]).'</td>
                                    <td>'.utf8_decode($registros["DESCRIPCION_CATEGORIAS"]).'</td>
    
                                    <td>'.$disponibilidad.'</td>
                                    <td> Bs. '.number_format($registros["PRECIO"], 2, ',', ' ').'</td>
                                    <td>
                                        <button type="button" onclick="addQuanty('.$registros["ID"].','.$registros["EXISTENCIA_PRODUCTO"].')" class="btn btn-primary btn-xs">+</button>
                                        <input class="cantidad" disabled="disabled" id="'.$registros["ID"].'" value="0" type="text" placeholder="">
                                        <button type="button" onclick="restQuanty('.$registros["ID"].')" class="btn btn-danger btn-xs">-</button>
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