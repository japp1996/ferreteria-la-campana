<?php include 'php/conexion.php'; ?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php
  $sql="SELECT * FROM pedidos inner join usuarios on pedidos.CI_RIF=usuarios.CI_RIF order by ID_PEDIDO ASC";
$consulta=mysqli_query($conexion, $sql);
?>

<?php include 'include/menu.php'; ?>
   
    <div class="container">

        <div class="row">
            <div class="col-md-12">

            <h3><p align="center">Consulte su pedido</p></h3>
                <div class="datagrid">

                 <table>
                        <thead>
                        <tr>
                            <th class="noped">N°</th>
                            <th class="noped">Fecha de Pedido</th>
                            <th class="noped">Solicitante</th>
                            <th class="noped">Estatus</th>
                            
                            
                        </tr>
                        </thead>
                  
                       <?php
                       while($resgistros=mysqli_fetch_array($consulta)) {
        echo'<tr>
                <td class="noped"><a class="btn btn-primary btn-xs" href="consultardetallespedido.php?id='.$resgistros["ID_PEDIDO"].'">'.$resgistros["ID_PEDIDO"].'</a></td>
                <td class="noped">'.$resgistros["FECHA_PEDIDO"].'</td>
                <td class="noped">'.$resgistros["NOMBRE_USUARIOS"].'</td>
                <td class="noped">'.$resgistros["ID_ESTADO"].'</td>
               
                
            </tr>';
        }
                       ?>



                    </table>
                </div>
            </div>

        </div>


        <hr>

        <!-- Footer -->
<?php include 'include/piedepagina.php'; ?>
    </div>
<?php include'include/script.html'; ?>
</body>
</html>