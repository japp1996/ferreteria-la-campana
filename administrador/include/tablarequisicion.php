<?php 
$sql = "SELECT * FROM `categorias` ORDER BY categorias.ID_CATEGORIAS ASC";
$query = mysqli_query($conexion, $sql);
if (mysqli_num_rows($query) == 0) {

}
    $sql="SELECT productos.ID, productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, productos.STOCK_MIN, categorias.DESCRIPCION_CATEGORIAS FROM productos INNER JOIN categorias ON productos.ID_CATEGORIAS=categorias.ID";
    $consulta=mysqli_query($conexion,$sql);
?>
    
        <table id="listado" class="tabla-justificada">
            <thead>
                <tr>
                    <th>Seleccione Articulo</th>
                    <th>Nombre de Articulo</th>
                    <th>Categoria</th>
                    <th>Existencia</th>
                    <th>Cantidad</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    while($registros=mysqli_fetch_array($consulta)) {
                        //if (!$registros["EXISTENCIA_PRODUCTO"] && $registros["EXISTENCIA_PRODUCTO"] <= $registros["STOCK_MIN"]) {
                            $table = '
                            
                                <tr>
                                    <td>
                                        <input type="checkbox" id="check_'.$registros["ID"].'" class="codigo" value="'.$registros["ID"].'" /> 
                                        <label for="check_'.$registros["ID"].'">'.utf8_decode($registros["ID_PRODUCTO"]).'</label>
                                    </td>

                                    <td id="product_name">'.$registros["DESCRIPCION_PRODUCTO"].'</td>
                                    
                                    <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>';
                                   
                                    $table.='<td>
                                                <b>'.$registros["EXISTENCIA_PRODUCTO"].'</b>';
                                        if ($registros['EXISTENCIA_PRODUCTO'] <= $registros['STOCK_MIN']) {
                                            $table.="  ___ REPONER STOCK <div class='stock-min-true'></div>";
                                        }
                                    $table.='</td>';
                                    
                                    $id = $registros["ID"];
                                    $sql = "SELECT prv_prd.ID_PRODUCTO AS ID, prv.NOMBRE FROM proveedor_producto AS prv_prd 
                                                INNER JOIN proveedores as prv
                                                    ON prv.ID = prv_prd.ID_PROVEEDOR
                                                        WHERE prv_prd.ID_PRODUCTO = '$id'";
                                    $query = mysqli_query($conexion, $sql);
                                    
                                    $table.='<td class="">
                                                <input type="text" class="cantidad" maxlength="4" onkeypress="return solonumero(event)">
                                            </td>
                                </tr>';
                                echo $table;
                        //}
                    }                    
                ?>
            </tbody>
        </table>