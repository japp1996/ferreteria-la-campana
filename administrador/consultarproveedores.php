<?php require"php/conexion.php";?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php include 'include/menu.php'; ?>  
<div class="container">
<div class="container">
        <div class="row">
            <div class="col-xs-15">
            <h3><p align="center">PROVEEDORES</p></h3>
                <form action="reportes/notapedidos.php?nope=<?php echo $_REQUEST['id']; ?>" method="POST" class="datagrid">
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>DNI</th>
                                <th>Nombre</th>
                                <th>Correo</th>
                                <th>Telefono</th>
                                <th>Direccion</th>
                            </tr>
                        </thead>                  
                        <?php
                            $sql = "SELECT * FROM proveedores";
                            $consulta = mysqli_query($conexion, $sql);
                            if (mysqli_num_rows($consulta) == 0){
                                echo '<tr>
                                    <td colspan="7" class="text-center">NO HAY PROVEEDORES</td>
                                </tr>';
                            }
                            
                            while ($resgistros = mysqli_fetch_array($consulta)) {
                                
                                echo'<tr>
                                    <td>'.$resgistros["ID"].'</td>
                                    <td>'.$resgistros["DNI"].'</td>
                                    <td>'.$resgistros["NOMBRE"].'</td>
                                    <td>'.$resgistros["CORREO"].'</td>    
                                    <td>'.$resgistros["TELEFONO"].'</td>
                                    <td>'.$resgistros["DIRECCION"].'</td>';

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