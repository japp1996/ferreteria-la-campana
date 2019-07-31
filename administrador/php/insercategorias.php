 <?php 
    if (isset($_POST['registrarcat'])) {
      $codcatin=$_POST['codcat'];
      $descatin=$_POST['categ'];
      //$descatin=strtoupper($descatin);      

      $sql1= "SELECT ID_CATEGORIAS FROM categorias WHERE DESCRIPCION_CATEGORIAS = '".$codcatin."' ";
      $consulta1= mysqli_query($conexion,$sql1);
      $fila1=mysqli_num_rows($consulta1);     

      $sql2= "SELECT DESCRIPCION_CATEGORIAS FROM categorias WHERE DESCRIPCION_CATEGORIAS = '".$descatin."' ";
      $consulta2= mysqli_query($conexion,$sql2);
      $fila2=mysqli_num_rows($consulta2);

      if ($fila2==1) {
        echo '<br><div class="alert danger">
          <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span> 
          <strong>Lo sentimos!</strong> Ya existe este nombre asignado a un codigo
          <br>
          Consulte en <strong>Listado</strong>    > <strong>Categorias</strong> 
          </div>';
      } elseif ($fila1==1) {
        echo '<br><div class="alert danger">
        <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
          <strong>Lo sentimos!</strong> Ya esta registrado este codigo
          <br>
        </div>';
      } else {
        $sql="INSERT INTO categorias(ID_CATEGORIAS, DESCRIPCION_CATEGORIAS) VALUES ('$codcatin','$descatin')";
        $ejecutar=mysqli_query($conexion, $sql);

        $fecha=date('Y-m-d g:i:s-a');
        $auditoria="INSERT INTO auditoria_usuarios(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) VALUES('','".$_SESSION['CI_RIF']."','Registro','Registro de categoria','$fecha')";
        mysqli_query($conexion, $auditoria);

        if ($ejecutar) {
          echo '<br><div class="alert"><span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span><strong>Felicidades!</strong> La categoria ha sido registrado satisfactoriamente<br></div>';
        } else {
          echo '<br><div class="alert danger">
          <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
          <strong>Lo sentimos!</strong> El articulo no pudo registrarse, es posible que ya exista el codigo ingresado
          </div>  ';
        }
      }
    } else {
      $codcatin="";
      $descatin="";
    }

mysqli_close($conexion);