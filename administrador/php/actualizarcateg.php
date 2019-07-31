<?php 
      if (isset($_POST['actualizar'])) {
        $codartver=$_POST['codartver'];
        $descartver=$_POST['descart'];
      
        $sql="UPDATE categorias SET DESCRIPCION_CATEGORIAS='$descartver' WHERE ID_CATEGORIAS='$codartver'";
        mysqli_query($conexion,$sql);


          $fecha=date('Y-m-d g:i:s-a');
          $auditoria="INSERT INTO auditoria_usuarios(CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES(".$_SESSION['CI_RIF']."','Modificacion','Modificacion de datos de Categorias','$fecha')";
          mysqli_query($conexion, $auditoria);

        echo '<br><div class="alert">
            <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                <strong>Felicidades!</strong> Los datos fueron modificados exitosamente
                <br>
                
                </div>  
              ';  
      } 

      if (isset($_POST['eliminar'])) {

        $codartver=$_POST['codartver'];
        
        $sql="DELETE FROM  categorias WHERE ID_CATEGORIAS='$codartver'";
        mysqli_query($conexion,$sql);

        $fecha=date('Y-m-d g:i:s-a');
        $auditoria="INSERT INTO auditoria_usuarios(CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES(".$_SESSION['CI_RIF']."','Eliminacion','Eliminacion de Categoria','$fecha')";
        mysqli_query($conexion, $auditoria);

            echo '<br><div class="alert">
          <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
              <strong>Felicidades!</strong> Los datos fueron eliminados exitosamente
              <br>
              
              </div>  
            ';
      }