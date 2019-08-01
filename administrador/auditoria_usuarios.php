<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php
require'php/conexion.php';

if (isset($_POST['tipoaccion'])) {
  $filtro=$_POST['tipoaccion'];  
}
else{
$filtro="";
}
include 'include/menu.php'; 
?>

<div class="container">
        <div class="row">
            <div class="col-md-12">

                 <form action=""  method="POST">
                    <div class="col-md-2">

                        <div class="form-group">
                            <label for="tipoaccion">Filtrar por:</label>
                            <select name="tipoaccion" id="tipoaccion" class="form-control">
                            
                            <option value="">--Todos--</option>
                             <option value="Entrada">     Entrada</option>
                             <option value="Registro">    Registro</option>
                             <option value="Modificacion">Modificacion</option>
                             <option value="Eliminacion"> Eliminacion</option>
                             <option value="Pedido">      Pedido</option>
                             <option value="Requisicion"> Requisicion</option>
                             <option value="Recepcion">   Recepcion</option>
                             <option value="Respaldo">    Respaldo</option>
                             <option value="Restauracion">Restauracion</option>
                             <option value="Salida">      Salida</option>
                                       
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
                            <th>Fecha y Hora</th>
                            <th>Cedula/Rif</th>
                            <th>Nombres y Apellidos</th>
                            <th>Tipo de Accion</th>
                            <th>Descripcion de la accion</th>
                            
                        </tr>
                            </thead>
           <?php        

           $sql="SELECT auditoria_usuarios.CI_RIF, auditoria_usuarios.OPERACION, auditoria_usuarios.DETALLES_OPERACION, auditoria_usuarios.FECHA, usuarios.NOMBRE_USUARIOS FROM auditoria_usuarios inner join usuarios on auditoria_usuarios.CI_RIF=usuarios.CI_RIF WHERE 1  "; 
            
            if (!empty($filtro)) {
              $sql.="AND auditoria_usuarios.OPERACION = '$filtro' ORDER BY auditoria_usuarios.FECHA DESC " ;
            }
            else{
              $sql.="ORDER BY auditoria_usuarios.FECHA DESC " ;
            }
          
            $consult=mysqli_query($conexion,$sql);
            while($resgistros=mysqli_fetch_assoc($consult)) {

            $fecha=$resgistros["FECHA"];
            $fecha= strtotime($fecha);
            $fecha = date('d-m-Y H:i:s',$fecha);

                echo '
                <tr>

                <td>'.$fecha.'</td>
                <td>'.utf8_decode($resgistros["CI_RIF"]).'</td>
                <td>'.utf8_decode($resgistros["NOMBRE_USUARIOS"]).'</td>
                <td>'.$resgistros["OPERACION"].'</td>
                <td>'.$resgistros["DETALLES_OPERACION"].'</td>

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