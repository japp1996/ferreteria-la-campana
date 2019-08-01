<?php require"php/conexion.php";?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php include 'include/menu.php'; ?>  
<div class="container">
<div class="container">
        <div class="row">
            <div class="col-xs-15">
            <h3><p align="center">ESTADOS</p></h3>
                <form action="reportes/notapedidos.php?nope=<?php echo $_REQUEST['id']; ?>" method="POST" class="datagrid">
                    <table id="listado">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>DNI</th>
                            </tr>
                        </thead>                  
                        <?php
                            $sql = "SELECT * FROM estado";
                            $consulta = mysqli_query($conexion, $sql);
                            if (mysqli_num_rows($consulta) == 0){
                                echo '<tr>
                                    <td colspan="7" class="text-center">NO HAY ESTADOS</td>
                                </tr>';
                            }
                            
                            while ($resgistros = mysqli_fetch_array($consulta)) {
                                
                                echo'<tr>
                                    <td>'.$resgistros["ID_ESTADO"].'</td>
                                    <td>'.$resgistros["DESCRIPCION_ESTADO"].'</td>';
                                    echo '</tr>';
                            }
                        ?>
                    </table>
                    <br>
                    <button style="position: relative; left: 45%; right: 45%;" type="submit" name="imprimir" class="btn btn-primary btn-sm">Exportar PDF</button>
                </form>
            </div>
        </div>
        <hr>
    
</div>
<?php include 'include/piedepagina.php';?>
<?php include 'include/script.html';?>
</body>
</html>