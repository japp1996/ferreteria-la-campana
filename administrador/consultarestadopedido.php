<?php require'php/conexion.php';?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php include 'include/menu.php'; ?>  

<div class="container">
    <div class="row">
        <div class="col-md-12">
        <h3><p align="center">ESTATUS PEDIDO</p></h3>
            <form action="" method="POST" class="datagrid">
                <table id="listado">
                    <thead>
                        <tr>
                            <th class="noped">N&deg;</th>
                            <th class="noped">Fecha pedido</th>
                            <th class="noped">Fecha vence</th>
                            <th class="noped">Solicitante</th>
                            <th class="noped">Estatus</th>                            
                            <th class="noped">Acciones</th>                            
                        </tr>
                    </thead>
                    <?php
                    $sql="SELECT * FROM pedidos inner join usuarios on pedidos.CI_RIF=usuarios.CI_RIF order by pedidos.ID_PEDIDO ASC";
                    $consulta=mysqli_query($conexion,$sql);

                    while($resgistros=mysqli_fetch_array($consulta)) {
                        $id = $resgistros["ID_PEDIDO"];
                        echo'<tr>';
                            if ($resgistros["ID_ESTADO"] == 'POR ENTREGAR') {
                                echo '<td class="noped"><a class="btn btn-primary btn-xs" href="estatus.php?id='.$id.'">'.$id.'</a></td>';
                            } else {
                                echo '<td class="noped">'.$id.'</td>';
                            }
                        
                            echo'<td class="noped">'.$resgistros["FECHA_PEDIDO"].'</td> 
                                <td class="noped">'.$resgistros["FECHA_EXPIRACION"].'</td> 
                                <td class="noped">'.$resgistros["NOMBRE_USUARIOS"].'</td>
                                <td class="noped">'.$resgistros["ID_ESTADO"].'</td>';
                            $estado = $resgistros["ID_ESTADO"];
                            if ($estado == 'ANULADO') {
                                echo '<td class="noped">
                                    <i onclick="changePurchase('.$id.', "POR ENTREGAR")" class="fa fa-window-restore fa-2x text-primary" aria-hidden="true"> </i>
                                </td>';
                            } elseif ($estado == 'POR ENTREGAR') {
                                echo '<td class="noped">
                                    <i onclick="changePurchase('.$id.', "ANULAR")" class="fa fa-ban fa-2x text-danger" aria-hidden="true"> </i>
                                    <i onclick="changePurchase('.$id.', "ENTREGADO")" class="fa fa-external-link-square text-success fa-2x" aria-hidden="true"> </i>
                                </td>';
                            } elseif ($estado == 'ENTREGADO') {
                                echo '<td class="noped">
                                    <i onclick="changePurchase('.$id.', "POR ENTREGAR")" class="fa fa-window-restore fa-2x text-primary" aria-hidden="true"> </i>
                                    
                                </td>';
                            }
                            echo '
                        </tr>';
                    }
                    ?>
                </table>
                <br>
            </form>
        </div>
    </div>
    <hr> 
<?php include 'include/piedepagina.php';?>
</div>
<?php include'include/script.html';?>
</body>
</html>