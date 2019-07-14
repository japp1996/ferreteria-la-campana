<?php

 if (isset($_POST['buscarcat'])) {

    
    $codcati=$_POST['codcati'];

    if ($codcati=="") {

   echo '<br><div class="alert danger">
                      <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                          No ha introducido ningun codigo
                          <br>
                         
                          </div>  
                        ';  
}
else{

        $ver="SELECT ID_CATEGORIAS FROM categorias  WHERE ID_CATEGORIAS = '$codcati'   ";

        $consulta=mysqli_query($conexion, $ver);
        $filas=mysqli_num_rows($consulta);
       
        if ($filas==0) {
            
                     echo '<br><div class="alert danger">
                      <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                          Este codigo no está registrado
                          <br>
                         
                          </div>  
                        ';             
        }
        elseif ($filas==1){

        $ver="SELECT * FROM categorias WHERE ID_CATEGORIAS = '$codcati'   ";
        $consulta=mysqli_query($conexion, $ver);
                
           $resgistros=mysqli_fetch_assoc($consulta);

        $codigocateg=$resgistros['ID_CATEGORIAS'];
        $descateg=$resgistros["DESCRIPCION_CATEGORIAS"];
         
            
        

        echo '<form action="" method="POST" class="contacto">

          <h2>Datos Categoria</h2>   
        <div class="row">
 
            <div class="col-xs-3">
                <div class="form-group">
                    <label for="codart">Codigo Categoria</label>
                    <input type="text" class="form-control" id="codart" name="codartver" value="'; echo $codigocateg; echo ' " readonly>
                </div>
            </div>
 
        </div>
        <div class="row">

             <div class="col-xs-4">
                <div class="form-group">
                    <label for="descart">Descripción de Categoria</label>
                    <input type="" class="form-control" id="descart" name="descart" value=" ' ; echo $descateg; echo '" >
                </div>
            </div>


        </div>    
         
                                                        
         <input type="submit" class="btn btn-primary btn-sm" name="actualizar" value="Modificar">
         <input type="submit" class="btn btn-danger btn-sm" name="eliminar" value="Eliminar">
        
                                                                                   
    </form>';   

}

        }

}




include "php/actualizarcateg.php";



 ?>