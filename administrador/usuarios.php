<?php require'php/conexion.php';?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php include'include/menu.php';?>

<div class="container">

 <form  action="usuarios.php" method="POST" class="contacto">
          <h2>Buscar Usuario</h2>   
        <div class="row">
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="cedula">&nbsp; </label>
              
                </div> 
        
             </div>
             
            <div class="col-xs-4">
                <div class="form-group">
                    <select name="tipodedoc">
                        <option value="V">V</option>
                        <option value="J">J</option>
                        <option value="E">E</option>
                    </select>
                    <label for="cedula" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Introduzca Cédula</label>
                    <input type="text" onkeypress="return solonumero(event);" class="form-control" id="cedula" name="cedula" placeholder="Numero" value="">              
                </div> 
                 <button type="submit" class="btn btn-primary btn-md" id="buscar" name="buscarus">Buscar</button> 
                 <br>
                 <br>
                 <button type="button" class="btn btn-info btn-md" id="buscar" name="nuevouser" data-toggle="modal" data-target="#registrodeUsuario" >Nuevo Usuario</button>
             </div>             
             
        </div>     
</form>

<div id="registrodeUsuario" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
        <form action="insertarusuarios.php" method="POST" >
                  <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Nuevo Usuario</h4>
                  </div>
                  <div class="modal-body">
                  <div class="row">
                  <div class="col-xs-2">
                  <div class="form-group">
                   <select class="form-control" name="tipodedoc" style="height: 35px; position: relative; top: 25px;">
                   <option value="V">V</option>
            <option value="J">J</option>
            <option value="E">E</option>
            </select>
                </div>
            </div>

 
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="cedula">Cedula/Rif</label>
                    <input type="text" onkeypress="return solonumero(event);" class="form-control" id="cedulain" name="cedulain" value="" required="">
                </div>
            </div>
 
        </div>
        <div class="row">

              <div class="col-xs-4">
                <div class="form-group">
                    <label for="contrasena">Contraseña</label>
                    <input type="password" minlength="7" class="form-control" id="contrasena" name="contrasena" required>
                </div>
            </div>

            <div class="col-xs-4">
                <div class="form-group">
                    <label for="contrasena">Repetir Contraseña</label>
                    <input type="password" minlength="7" class="form-control" id="repcontrasena" name="repcontrasena" required>
                </div>
            </div>
            </div>

            <div class="row">

             <div class="col-xs-4">
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" class="form-control" id="nombre" placeholder="" name="nombre" required>
                </div>
            </div>

            <div class="col-xs-4">
                 <div class="form-group">
                    <label for="tipouser">Tipo de Usuario</label>
                    <select name="tipouser" id="tipouser" class="form-control" required> 
                      
                    <option value="">--Seleccione--</option>
                    <?php 

                                        $consulta="SELECT * FROM tipo_usuarios";
                                        $resultado=mysqli_query($conexion, $consulta);
                                        while ($row=mysqli_fetch_array($resultado)) {     ?>

                                           <option value="<?php echo $row['ID_USUARIOS']; ?>"><?php echo $row['DESCRIPCION_USUARIOS']; ?></option>
                                       
                                    <?php  } ?>
                
               </select>

           </div>
            </div>

        </div>    
         <div class="row">

            <div class="col-xs-4">
                <div class="form-group">
                    <label for="stock">Correo</label>
                    <input type="email" class="form-control" id="stock"  name="email" required>
                </div>
            </div>
            
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="stock">Telefono</label>
                    <input type="text" minlength="11" maxlength="11" onkeypress="return solonumero(event);" class="form-control" id="stock"  name="telefono" required>
                </div>
            </div>

            <div class="col-xs-4">
                <div class="form-group">
                    <label for="direccion">Direccion</label>
                    <input type="text" class="form-control" id="direccion"  name="direccion" required>
                </div>
            </div>
             
        </div>      

        <div class="row">
            
             <div class="col-xs-4">
                <div class="form-group">
                    <label for="fechanac">Fecha de Nacimiento</label>
                    <input type="date" class="form-control" id="fechanac"  name="fechanac" required="">
                </div>
            </div>

        </div>            
                                                                                            
         <input type="submit" class="btn btn-primary btn-sm" name="registraruser" value="Registrar">
          <input type="button" class="btn btn-danger btn-sm" data-dismiss="modal" value="Cerrar">
                                                                           
    </form>                
             </div>
        </div>
    </div>   
</div>  

<?php require'include/actualizarusuario.php'; require'php/insertarusuario.php'; include'include/piedepagina.php'; include'include/script.html';?> 
</body>
</html>