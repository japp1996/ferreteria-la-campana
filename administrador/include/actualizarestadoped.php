<?php 
if (isset($_POST['buscares'])) {

    $idped=$_POST['idpedbuscar'];
    if ($idped=="") {
      echo '<br><div class="alert danger">
      <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
      No ha introducido ningun codigo
      <br>
      </div>';
    } else {

      $sql="SELECT ID_ESTADO FROM estado  WHERE ID_ESTADO = '$idped'   ";
      $consulta=mysqli_query($conexion, $sql);
      $filas=mysqli_num_rows($consulta);
       
      if ($filas==0) {
        echo '<br><div class="alert danger">
        <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span>
        Este codigo no esta registrado
        <br>
        </div>';
      } else {

        $sql="SELECT * FROM estado WHERE ID_ESTADO = '$idped'   ";
        $consulta=mysqli_query($conexion, $sql);
                
        $resgistros=mysqli_fetch_assoc($consulta);

        $idestado=$resgistros['ID_ESTADO'];
        $namestado=$resgistros["DESCRIPCION_ESTADO"];
        
        echo ' 
        <form action="" method="POST" class="contacto">

        <h2>Datos del Estado</h2>   
        <div class="row">
 
        <div class="col-xs-3">
          <div class="form-group">
              <label for="codart">Codigo de EStado</label>
              <input type="text" class="form-control" id="codart" name="codestped" value="'; echo $idped; echo'" readonly>
          </div>
        </div>
 
        </div>
        <div class="row">

             <div class="col-xs-4">
                <div class="form-group">
                    <label for="descart">Descripción de Estado</label>
                    <input type="" class="form-control" id="descart" name="descestped" name="descart" value="'; echo $namestado; echo '" >
                </div>
            </div>


        </div>    
         <div class="row">
            
             
        </div>     

                                                        
         <button type="submit" class="btn btn-primary btn-sm" name="actualizar">Actualizar</button>
         <button type="submit" class="btn btn-danger btn-sm" name="eliminar">Eliminar</button>

         </form> ';
      }
    }
} else {
  $idped="";
  $nameped="";
}
include "php/actualizarestadoped.php";