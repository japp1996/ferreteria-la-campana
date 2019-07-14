<?php include 'php/conexion.php'; ?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php include 'include/menu.php'; ?>  

<div class="container">
    <div class="row">
        <div class="col-md-12">
        <h3><p align="center">IMPORTAR REQUISICION</p></h3>
        <form action="" method="POST" class="datagrid">

        <table>
            <thead>
                <tr>
                    <th class="noped">N&deg; de Requisición</th>
                    <th class="noped">Fecha Requisición</th>
                    <th class="noped">Solicitante</th>
                    <th class="noped">Observacion</th>
                </tr>
            </thead>
            
                <?php
                $sql="SELECT * FROM requisicion 
                        INNER JOIN usuarios ON requisicion.CI_RIF=usuarios.CI_RIF 
                            WHERE ESTATUS = '0' 
                                ORDER BY requisicion.ID_REQUISICION 
                                    ASC";

                $consulta=mysqli_query($conexion,$sql);
                while($resgistros=mysqli_fetch_array($consulta)) {
                    echo'<tr>
                    <td class="noped"><a href="9-realizarrecepcion.php?id='.$resgistros["ID_REQUISICION"].'">'.$resgistros["ID_REQUISICION"].'</a></td>
                    <td class="noped">'.$resgistros["FECHA_REQUISICION"].'</td> 
                    <td class="noped">'.$resgistros["NOMBRE_USUARIOS"].'</td>
                    <td class="noped">'.$resgistros["OBSERVACION_REQUISICION"].'</td>
                    </tr>';
                }
                ?>

        </table>
        <br>
        </form>
        </div>
    </div>
<hr>
<?php include'include/piedepagina.php';?>

</div>

<?php include'include/script.html';?>
</body>
</html>