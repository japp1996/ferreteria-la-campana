<?php 
if (isset($_POST['buscarart'])) {
  $codigoprod=$_POST['codart'];
  if ($codigoprod=="") {
    echo '<br>
            <div class="alert danger">
              <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">
                &times;
              </span> 
              No ha introducido ningún código
              <br>
            </div>';
  } else{

    $sql="SELECT ID_PRODUCTO FROM productos  WHERE ID_PRODUCTO = '$codigoprod'   ";
    $buscarcod=mysqli_query($conexion, $sql);
    $filas=mysqli_num_rows($buscarcod);

    if ($filas==0) {

      echo '<br><div class="alert danger">
      <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
      Este código no está registrado
      <br>
      
      </div>'; 
    } elseif ($filas==1){
      $sql="SELECT * FROM productos  WHERE ID_PRODUCTO = '$codigoprod'   ";
      $consulta=mysqli_query($conexion, $sql);
      $resgistros=mysqli_fetch_array($consulta);

      $query = mysqli_query($conexion, "SELECT * FROM categorias ORDER BY DESCRIPCION_CATEGORIAS ASC");
      $id = $resgistros['ID'];
      $codigoarti=$resgistros['ID_PRODUCTO'];
      $descarti=$resgistros["DESCRIPCION_PRODUCTO"];
      $stock_min =$resgistros['STOCK_MIN'];
      $stock_max =$resgistros['STOCK_MAX'];
      $unidad = $resgistros['UNIDAD'];
      $categoria = $resgistros['ID_CATEGORIAS'];
      
      echo '<form action="" id="editar_form" method="POST" class="contacto">
      <h2>Datos del Articulo</h2>
      <input type="hidden" id="id" name="id" value="';echo $id; echo'">
      <div class="row">
        <div class="col-xs-3">
          <div class="form-group">
            <label for="codart_up">Codigo Articulo</label>
            <input type="text" data-name="Codigo Articulo" class="form-control" id="codart_up" name="codart_up" value="'; echo $codigoarti; echo '" readonly>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-7">
          <div class="form-group">
            <label for="descart_up">Descripción de Artículo</label>
            <input type="text" data-name="Descripción de Artículo" class="form-control" id="descart_up" name="descart_up" name="descart" value="'; echo $descarti; echo '" >
          </div>
        </div>
        <div class="col-xs-5">
          <div class="form-group">
            <label for="categ_up">Categoria</label>
            <select name="categ_up" data-name="Categoria" id="categ_up" data-name="Categoria" class="selectpicker show-menu-arrow" data-style="form-control" data-live-search="true" title="-- Seleccione la categoria --">';
              while($row = mysqli_fetch_array($query)) {
                if ($row['ID'] == $categoria) {
                  echo '<option selected value="'; echo $row['ID']; echo' data-tokens="'; echo $row['DESCRIPCION_CATEGORIAS']; echo'">'; echo $row['DESCRIPCION_CATEGORIAS']; echo'</option>';
                } else {
                  echo '<option value="'; echo $row['ID']; echo' data-tokens="'; echo $row['DESCRIPCION_CATEGORIAS']; echo'">'; echo $row['DESCRIPCION_CATEGORIAS']; echo'</option>';
                } 
              }
            echo '</select>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-2">
          <div class="form-group">
            <label for="unidad_up">Unidad</label>
            <input type="text" data-name="Unidad" class="form-control" id="unidad_up"  name="unidad_up" value="' ; echo $unidad; echo '">
          </div>
        </div>
        <div class="col-xs-2">
          <div class="form-group">
            <label for="stock_min_up">Stock Minimo</label>
            <input type="text" data-name="Stock Minimo" class="form-control" id="stock_min_up"  name="stock_min_up" value="' ; echo $stock_min; echo '">
          </div>
        </div>
        <div class="col-xs-2">
          <div class="form-group">
            <label for="stock_max_up">Stock Maximo</label>
            <input type="text" data-name="Stock Maximo" class="form-control" id="stock_max_up"  name="stock_max_up" value="' ; echo $stock_max; echo '">
          </div>
        </div>
      </div>

      <input type="button" onclick="editarProducto(';echo $id; echo')" class="btn btn-primary btn-sm" name="actualizar" value="Modificar">
      <input type="button" onclick="borrarProducto(';echo $id; echo')" class="btn btn-danger btn-sm" name="eliminar" value="Eliminar">
      <br>
      <br>
      </div>  
      </form>';
    }
  }
} else{
  $codart="";
}