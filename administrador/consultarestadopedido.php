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
                <table>
                    <thead>
                        <tr>
                            <th class="noped">N&deg;</th>
                            <th class="noped">Fecha pedido</th>
                            <th class="noped">Solicitante</th>
                            <th class="noped">Estatus</th>                            
                        </tr>
                    </thead>
                    <?php
                    $sql="SELECT * FROM pedidos inner join usuarios on pedidos.CI_RIF=usuarios.CI_RIF order by pedidos.ID_PEDIDO ASC";
                    $consulta=mysqli_query($conexion,$sql);

                    while($resgistros=mysqli_fetch_array($consulta)) {
                        echo'<tr>';
                        if ($resgistros["ID_ESTADO"] == 'POR ENTREGAR') {
                            echo '<td class="noped"><a class="btn btn-primary btn-xs" href="estatus.php?id='.$resgistros["ID_PEDIDO"].'">'.$resgistros["ID_PEDIDO"].'</a></td>';
                        } else {
                            echo '<td class="noped">'.$resgistros["ID_PEDIDO"].'</td>';
                        }
                        
                        echo'<td class="noped">'.$resgistros["FECHA_PEDIDO"].'</td> 
                        <td class="noped">'.$resgistros["NOMBRE_USUARIOS"].'</td>
                        <td class="noped">'.$resgistros["ID_ESTADO"].'</td>
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