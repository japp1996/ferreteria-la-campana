<?php 
if (isset($_POST['buscarus'])) {
    
    $cedula=$_POST['cedula'];
    $tipodedoc=$_POST['tipodedoc'];

        if ($cedula=="") {

           echo '<br><div class="alert danger">
            <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
            No ha introducido ninguna cedula
            <br>
            </div>';
        }
    
    else{

        $sql="SELECT CI_RIF FROM usuarios  WHERE CI_RIF = '".$tipodedoc."-".$cedula."' ";
        $consulta=mysqli_query($conexion, $sql);
        $filas=mysqli_num_rows($consulta);
       
        if ($filas==0) {
            echo '<br><div class="alert danger">
            <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
            Esta cedula no está registrada
            <br>
            </div>';             
        }
        
        elseif ($filas==1){

        $sql="SELECT * FROM usuarios INNER JOIN tipo_usuarios ON usuarios.ID_USUARIOS=tipo_usuarios.ID_USUARIOS  WHERE CI_RIF = '".$tipodedoc."-".$cedula."' ";
        $consulta=mysqli_query($conexion, $sql);
                
        $resgistros=mysqli_fetch_assoc($consulta);

        $cedulab=$resgistros['CI_RIF'];
        $nombre=$resgistros["NOMBRE_USUARIOS"];
        $contrasena=$resgistros['CONTRASENA'];
        $correo=$resgistros['CORREO'];
        $telefono=$resgistros['TELEFONO'];
        $direccion=$resgistros['DIRECCION'];
        $fechanac=$resgistros['FECHA_NACIMIENTO'];
        $fechanac= strtotime($fechanac);
        $fechanac = date('d-m-Y',$fechanac);
        $desctipous=$resgistros['DESCRIPCION_USUARIOS'];

           
            echo '<form action="" method="POST" class="contacto">

            <h2>DATOS DEL USUARIO</h2>   
            <div class="row">
 
            <div class="col-xs-3">
                <div class="form-group">
                    <label for="cedula">Cedula</label> 
                    <input type="text" class="form-control" name="cedulaver" value="'; echo $cedulab; echo '" readonly>';
                echo '</div>
            </div>
 
            </div>
            <div class="row">

             <div class="col-xs-5">
                <div class="form-group">
                    <label for="nombre">Nombres y Apellidos</label>
                    <input type="text" class="form-control" id="nombre" name="nombrever" value="'; echo $nombre; echo '">';
                 echo '</div>
               </div>

                <div class="col-xs-6">
                 <div class="form-group">
                    <label for="tipousver">Tipo de Usuario: '; echo $desctipous ; echo '</label>';

                   
                 echo ' <select name="tipousver" id="tipousver" class="form-control">';
       
                   ?>

                   <?php
                   $sql2="SELECT * FROM tipo_usuarios";
                   $resultado=mysqli_query($conexion, $sql2);
                   
                    while ($row=mysqli_fetch_assoc($resultado)) {
                   echo '<option value="';echo $row['ID_USUARIOS'];echo '">';echo $row['DESCRIPCION_USUARIOS'];echo '</option>';
                   } ?> 
<?php                                                                         
             echo '</select>';

              echo'</div>
            </div>

            </div>    
             <div class="row">

            <div class="col-xs-4">
                <div class="form-group">
                    <label for="correo">Correo</label>
                    <input type="email" class="form-control" id="correo"  name="correover" value="'; echo $correo; echo '">

            </div>
            </div>
            
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="telefono">Telefono</label>
                    <input type="text" class="form-control" maxlength="11" id="telefono" name="telefonover" value="   '; echo $telefono; echo '">';

               echo '</div>
            </div>

            <div class="col-xs-4">
                <div class="form-group">
                    <label for="direccion">Direccion</label>
                    <input type="text" class="form-control" id="direccion"  name="direccionver" value="'; echo $direccion; echo '">';
                echo '</div>
              </div>
             
              </div>      

               <div class="row">
            
                 <div class="col-xs-4">
                <div class="form-group">
                    <label for="fechanac">Fecha de Nacimiento</label>
                    <input type="text" class="form-control" id="fechanac"  name="fechanacver" value="'; echo $fechanac; echo '" readonly>';
                

                  echo '</div>
                </div>
                </div>              
                                        
                  <input type="submit" class="btn btn-primary btn-sm" name="actualizar" value="Modificar">
                  <input type="submit" onclick="" class="btn btn-danger btn-sm" name="eliminar" value="Eliminar">
                                                                   
        </form>';

}        
}
}

require"php/actualizaruser.php"; 
?>