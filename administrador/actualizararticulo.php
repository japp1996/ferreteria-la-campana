<?php 


if (isset($_POST['buscarart'])) {

  $codigoprod=$_POST['codart'];

  if ($codigoprod=="") {
    echo '<br><div class="alert danger">
                      <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                          No ha introducido ningún código
                          <br>
                         
                          </div>  
                        ';
                      }
                      else{

                        $sql="SELECT ID_PRODUCTO FROM productos  WHERE ID_PRODUCTO = '$codigoprod'   ";
                        $buscarcod=mysqli_query($conexion, $sql);
                        $filas=mysqli_num_rows($buscarcod);

                        if ($filas==0) {

                          echo '<br><div class="alert danger">
                      <span class="closebtn" onclick="this.parentElement.style.display=\'none\';">&times;</span     > 
                          Este código no está registrado
                          <br>
                         
                          </div>  
                        '; 
                      }

                      elseif ($filas==1){
                        $sql="SELECT * FROM productos  WHERE ID_PRODUCTO = '$codigoprod'   ";
                         $consulta=mysqli_query($conexion, $sql);
                         $resgistros=mysqli_fetch_array($consulta);

                         $codigoarti=$resgistros['ID_PRODUCTO'];
                         $descarti=$resgistros["DESCRIPCION_PRODUCTO"];
                         $existencia=$resgistros['EXISTENCIA_PRODUCTO'];

                         echo '<form action="" method="POST" class="contacto">

                         <h2>Datos del Articulo</h2>

                         <div class="row">
                            <div class="col-xs-3">
                              <div class="form-group">
                                <label for="codart">Codigo Articulo</label>
                                <input type="text" class="form-control" id="codart" name="codartver" value="'; echo $codigoarti; echo '" readonly>
                              </div>
                            </div>
                          </div>

                          <div class="row">

                          <div class="col-xs-7">
                            <div class="form-group">
                              <label for="descart">Descripción de Artículo</label>
                              <input type="" class="form-control" id="descart" name="descart" name="descart" value="'; echo $descarti; echo '" >
                            </div>
                          </div>
                          </div>

                          <div class="row">
                            <div class="col-xs-2">
                              <div class="form-group">
                                <label for="stock">Stock</label>
                                <input type="text" class="form-control" id="stock"  name="stock" value="' ; echo $existencia; echo '">
                              </div>
                            </div>
                          </div>  

                          
                          <input type="submit" class="btn btn-primary btn-sm" name="actualizar" value="Modificar">
                          <input type="submit" class="btn btn-danger btn-sm" name="eliminar" value="Eliminar">
                          <br>
                          <br>
                          
             </div>  

                          </form> ';
                        }
                      }
                    }


                    else{
                      $codart="";
                    }
                     include 'php/actualizarart.php';

               

?>                       