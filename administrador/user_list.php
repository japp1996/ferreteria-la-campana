<?php require'php/conexion.php'; ?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<body>

<?php 
if (isset($_POST['tipous'])) {$tipouser=$_POST['tipous'];}
else{$tipouser="";}
  
$sql="SELECT * FROM usuarios inner join tipo_usuarios on usuarios.ID_USUARIOS=tipo_usuarios.ID_USUARIOS";
$consulta=mysqli_query($conexion, $sql);

include 'include/menu.php';?>

<div class="container">
    <div class="row">
        <div class="col-md-12">

            <form action=""  method="POST" class="">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="tipous">Filtrar por:</label>
                            <select name="tipous" id="tipous" class="form-control">
                            <option value="">--Todos--</option>
                             <?php 
                                  $tipous="SELECT * FROM tipo_usuarios";
                                  $resultado=mysqli_query($conexion, $tipous);
                                  while ($row=mysqli_fetch_array($resultado)) {
                              ?>
                                  
                                 <option value="<?php echo $row['ID_USUARIOS'];?>">
                                 <?php echo $row['DESCRIPCION_USUARIOS']; ?>
                                 </option>
                                  
                              <?php }?>

                             </select>
                        </div>
                        <button type="submit" class="btn btn-primary btn-sm" name="Buscar">Buscar</button>
                     </div>
            </form>

            <div class="datagrid">
                    <h3><p align="center">Usuarios</p></h3>
                    <table id="listado">
                        <thead>
                          <tr>
                            <th>Cédula</th>
                            <th>Nombre y Apellido</th>
                            <th>Correo</th>
                            <th>Telefono</th>
                            <th>Direccion</th>
                            <th>Nacimiento</th>
                            <th>Nivel</th>

                          </tr>
                        </thead>
                     <?php     
                       $sql="SELECT * FROM usuarios inner join tipo_usuarios on usuarios.ID_USUARIOS=tipo_usuarios.ID_USUARIOS WHERE 1 "; 
                        if (!empty($tipouser)) {
                         $sql.="AND tipo_usuarios.ID_USUARIOS = '$tipouser' " ;
                       }
                       $consult=mysqli_query($conexion,$sql);

                       while($resgistros=mysqli_fetch_array($consult)) {

                          echo'
                          <tr>
                            <td>'.$resgistros["CI_RIF"].'</td>
                            <td>'.$resgistros["NOMBRE_USUARIOS"].'</td>
                            <td>'.$resgistros["CORREO"].'</td>
                            <td>'.$resgistros["TELEFONO"].'</td>
                            <td>'.$resgistros["DIRECCION"].'</td>
                            <td>'.$resgistros["FECHA_NACIMIENTO"].'</td>
                            <td>'.$resgistros["DESCRIPCION_USUARIOS"].'</td>
                          </tr>';
                        }

                      ?>


                    </table>
            </div>
        </div>
    </div>
<hr>
<?php include'include/piedepagina.php'; ?>
</div>
<?php include'include/script.html';?>
</body>
</html>