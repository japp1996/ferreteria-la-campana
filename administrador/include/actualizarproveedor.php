<?php 
if (isset($_POST['buscarus'])) {
    $cedula=$_POST['cedula'];
    if ($cedula=="") {
        echo '<br><div class="alert danger">
        <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
        No ha introducido ningun RIF
        <br>
        </div>';
    } else{

        $sql="SELECT DNI FROM proveedores WHERE DNI = '$cedula'";
        $consulta=mysqli_query($conexion, $sql);
        $filas=mysqli_num_rows($consulta);
    
        if ($filas==0) {
            echo '<br><div class="alert danger">
            <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
            Este RIF no está registrado
            <br>
            </div>';             
        } elseif ($filas==1){
            $sql="SELECT * FROM proveedores WHERE DNI = '$cedula' ";
            $consulta=mysqli_query($conexion, $sql);            
            $resgistros=mysqli_fetch_assoc($consulta);
            $cedulab=$resgistros['DNI'];
            $nombre=$resgistros["NOMBRE"];
            $correo=$resgistros['CORREO'];
            $telefono=$resgistros['TELEFONO'];
            $direccion=$resgistros['DIRECCION'];
            echo '<form action="" method="POST" class="contacto">
                <h2>DATOS DEL USUARIO</h2>   
                <div class="row">
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label for="dni">RIF</label> 
                            <input type="text" class="form-control" name="dni" value="'; echo $cedulab; echo '" readonly>';
                        echo '</div>
                    </div> 
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label for="nombre">Nombre</label> 
                            <input type="text" class="form-control" name="nombre" value="'; echo $nombre; echo '">';
                        echo '</div>
                    </div>    
                </div>

            <div class="row">

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="correo">Correo</label>
                    <input type="email" class="form-control" id="correo"  name="correover" value="'; echo $correo; echo '">

            </div>
            </div>
            
            <div class="col-xs-6">
                <div class="form-group">
                    <label for="telefono">Telefono</label>
                    <input type="text" class="form-control" maxlength="11" id="telefono" name="telefonover" value="'; echo $telefono; echo '">';

            echo '</div>
            </div>

            <div class="col-xs-12">
                <div class="form-group">
                    <label for="direccion">Direccion</label>
                    <textarea type="text" class="form-control" id="direccion"  name="direccionver" >';echo $direccion; echo '</textarea>';
                echo '</div>
                    </div>
            
                </div>                                                  
                <input type="submit" class="btn btn-primary btn-sm" name="actualizar" value="Modificar">
                <input type="submit" onclick="" class="btn btn-danger btn-sm" name="eliminar" value="Eliminar">                                                                   
            </form>';
        }        
    }
}

require "php/actualizarprov.php";