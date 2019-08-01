<?php require"php/conexion.php";?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php include 'include/menu.php'; ?>  
<div class="container">
<div class="container">
        <div class="row">
            <div class="col-xs-15">
            <h3><p align="center">CLIENTES</p></h3>
                <form action="reportes/notapedidos.php?nope=<?php echo $_REQUEST['id']; ?>" method="POST" class="datagrid">
                    <table id="listado">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>DNI</th>
                                <th>NOMBRE</th>
                                <th>CORREO</th>
                                <th>TELEFONO</th>
                                <th>DIRECCION</th>
                                <th>FECHA NACIMIENTO</th>
                            </tr>
                        </thead>                  
                        <?php
                            $sql = "SELECT * FROM usuarios WHERE ID_USUARIOS = 'CLI'";
                            $consulta = mysqli_query($conexion, $sql);
                            if (mysqli_num_rows($consulta) == 0){
                                echo '<tr>
                                    <td colspan="7" class="text-center">NO HAY CLIENTES</td>
                                </tr>';
                            }
                            
                            while ($resgistros = mysqli_fetch_array($consulta)) {
                                
                                echo'<tr>
                                    <td>'.$resgistros["ID"].'</td>
                                    <td>'.$resgistros["CI_RIF"].'</td>
                                    <td>'.$resgistros["NOMBRE_USUARIOS"].'</td>
                                    <td>'.$resgistros["CORREO"].'</td>
                                    <td>'.$resgistros["TELEFONO"].'</td>
                                    <td>'.$resgistros["DIRECCION"].'</td>
                                    <td>'.$resgistros["FECHA_NACIMIENTO"].'</td>';
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