<button type="button" class="accordion">Asfaltos</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
             <th></th>
             <th>Código</th>
             <th>Descripcion Articulo</th>
             <th>Categoria</th>
             <th>Existencia</th>
             <th class="col-md-2">Cantidad</th>
         </tr>
     </thead>

     <?php

     $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'ASF'";

     $consulta=mysqli_query($conexion,$sql);

     while($registros=mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        
        <td class=""><input type="text" class="cantidad"></td>


        </tr>
        </tbody>';
    }
    

    ?>

</table>
</div>


<button type="button" class="accordion">Baterias</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
             <th></th>
             <th>Código</th>
             <th>Descripcion Articulo</th>
             <th>Categoria</th>
             <th>Existencia</th>
             <th class="col-md-2">Cantidad</th>
         </tr>
     </thead>

     <?php

     $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'BAT'";

     $consulta=mysqli_query($conexion,$sql);

     while($registros=mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>     
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        
        <td><input type="text" class="cantidad" ></td>


        </tr>
        </tbody>';
    }
    

    ?>

</table>
</div>


<button type="button" class="accordion">Bombillos y Lamparas</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
              <th></th>
              <th>Código</th>
              <th>Descripcion Articulo</th>
              <th>Categoria</th>
              <th>Existencia</th>
              <th class="col-md-2">Cantidad</th>
          </tr>
      </thead>

      <?php

      $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'ByL'";

      $consulta=mysqli_query($conexion,$sql);

      while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="cantidad" >

        </td>

        </tr>
        </tbody>';
    }

    ?>

</table>
</div>


<button type="button" class="accordion">Cables</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
              <th></th>
              <th>Código</th>
              <th>Descripcion Articulo</th>
              <th>Categoria</th>
              <th>Existencia</th>
              <th class="col-md-2">Cantidad</th>
          </tr>
      </thead>

      <?php

      $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'cab'";

      $consulta=mysqli_query($conexion,$sql);

      while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>      
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad" >

        </td>

        </tr>
        </tbody>';
    }

    ?>

</table>
</div>


<button type="button" class="accordion">Carbones</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
              <th></th>
              <th>Código</th>
              <th>Descripcion Articulo</th>
              <th>Categoria</th>
              <th>Existencia</th>
              <th class="col-md-2">Cantidad</th>
          </tr>
      </thead>

      <?php

      $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'car'";

      $consulta=mysqli_query($conexion,$sql);

      while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr> 
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad" >

        </td>

        </tr>
        </tbody>';
    }

    ?>

</table>
</div>



<button type="button" class="accordion">Canales de Lluvias</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
                <th></th>
                <th>Código</th>
                <th>Descripcion Articulo</th>
                <th>Categoria</th>
                <th>Existencia</th>
                <th class="col-md-2">Cantidad</th>
            </tr>
        </thead>

        <?php

        $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'CdL'";

        $consulta=mysqli_query($conexion,$sql);

        while($registros= mysqli_fetch_array($consulta)) {
            echo '<tbody>
            <tr>
            <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>    
            <td>'.$registros["ID_PRODUCTO"].'</td>
            <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
            <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

            <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
            <td>
            <input type="text" class="form control cantidad" >

            </td>
            
            </tr>
            </tbody>';
        }

        ?>

    </table>
</div>



<button type="button" class="accordion">Conexiones</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
                <th></th>
                <th>Código</th>
                <th>Descripcion Articulo</th>
                <th>Categoria</th>
                <th>Existencia</th>
                <th class="col-md-2">Cantidad</th>
            </tr>
        </thead>

        <?php

        $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'Con'";

        $consulta=mysqli_query($conexion,$sql);

        while($registros= mysqli_fetch_array($consulta)) {
            echo '<tbody>
            <tr>
            <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>    
            <td>'.$registros["ID_PRODUCTO"].'</td>
            <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
            <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

            <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
            <td>
            <input type="text" class="form control cantidad" >

            </td>

            </tr>
            </tbody>';
        }

        ?>

    </table>
</div>



<button type="button" class="accordion">Cintas y Adhesivos</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
             <th></th>
             <th>Código</th>
             <th>Descripcion Articulo</th>
             <th>Categoria</th>
             <th>Existencia</th>
             <th>Cantidad</th>
         </tr>
     </thead>

     <?php

     $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'CyA'";

     $consulta=mysqli_query($conexion,$sql);

     while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad col-md-2" >

        </td>

        </tr>
        </tbody>';
    }

    ?>

</table>
</div>



<button type="button" class="accordion">Empacaduras</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
             <th></th>
             <th>Código</th>
             <th>Descripcion Articulo</th>
             <th>Categoria</th>
             <th>Existencia</th>
             <th>Cantidad</th>
         </tr>
     </thead>

     <?php

     $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'Emp'";

     $consulta=mysqli_query($conexion,$sql);

     while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>    
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad col-md-2" >
        </td>

        </tr>
        </tbody>';
    }

    ?>

</table>
</div>



<button type="button" class="accordion">Griferias y Bajantes</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
                <th></th>
                <th>Código</th>
                <th>Descripcion Articulo</th>
                <th>Categoria</th>
                <th>Existencia</th>
                <th>Cantidad</th>
            </tr>
        </thead>

        <?php

        $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'GyB'";

        $consulta=mysqli_query($conexion,$sql);

        while($registros= mysqli_fetch_array($consulta)) {
            echo '<tbody>
            <tr>
            <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>  
            <td>'.$registros["ID_PRODUCTO"].'</td>
            <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
            <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

            <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
            <td>
            <input type="text" class="form control cantidad col-md-2" >
            </td>


            </tr>
            </tbody>';
        }

        ?>

    </table>
</div>



<button type="button" class="accordion">Herramientas</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
             <th></th>
             <th>Código</th>
             <th>Descripcion Articulo</th>
             <th>Categoria</th>
             <th>Existencia</th>
             <th>Cantidad</th>
         </tr>
     </thead>

     <?php

     $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where DESCRIPCION_CATEGORIAS = 'Her'";

     $consulta=mysqli_query($conexion,$sql);

     while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>    
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad col-md-2" >
        </td>


        </tr>
        </tbody>';
    }

    ?>

</table>
</div>



<button type="button" class="accordion">Llaves y Cerraduras</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
             <th></th>
             <th>Código</th>
             <th>Descripcion Articulo</th>
             <th>Categoria</th>
             <th>Existencia</th>
             <th>Cantidad</th>
         </tr>
     </thead>

     <?php

     $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'LyC'";

     $consulta=mysqli_query($conexion,$sql);

     while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>    
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad col-md-2" >
        </td>

        </tr>
        </tbody>';
    }

    ?>

</table>
</div>



<button type="button" class="accordion">Materiales Electricos</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
                <th></th>
                <th>Código</th>
                <th>Descripcion Articulo</th>
                <th>Categoria</th>
                <th>Existencia</th>
                <th>Cantidad</th>
            </tr>
        </thead>

        <?php

        $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'MaE'";

        $consulta=mysqli_query($conexion,$sql);

        while($registros= mysqli_fetch_array($consulta)) {
            echo '<tbody>
            <tr>
            <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>   
            <td>'.$registros["ID_PRODUCTO"].'</td>
            <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
            <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

            <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
            <td>
            <input type="text" class="form control cantidad col-md-2" >
            </td>

            </tr>
            </tbody>';
        }

        ?>

    </table>
</div>



<button type="button" class="accordion">Mallas</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
             <th></th>
             <th>Código</th>
             <th>Descripcion Articulo</th>
             <th>Categoria</th>
             <th>Existencia</th>
             <th>Cantidad</th>
         </tr>
     </thead>

     <?php

     $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'Mal'";

     $consulta=mysqli_query($conexion,$sql);

     while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>   
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad col-md-2" >
        </td>
        </tr>
        </tbody>';
    }

    ?>

</table>
</div>



<button type="button" class="accordion">Mangueras</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
              <th></th>
              <th>Código</th>
              <th>Descripcion Articulo</th>
              <th>Categoria</th>
              <th>Existencia</th>
              <th>Cantidad</th>
          </tr>
      </thead>

      <?php

      $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'Man'";

      $consulta=mysqli_query($conexion,$sql);

      while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>     
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad col-md-2" >
        </td>
        </tr>
        </tbody>';
    }

    ?>

</table>
</div>




<button type="button" class="accordion">Materiales de Construccion</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
               <th></th>
               <th>Código</th>
               <th>Descripcion Articulo</th>
               <th>Categoria</th>
               <th>Existencia</th>
               <th>Cantidad</th>
           </tr>
       </thead>

       <?php

       $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'MdC'";

       $consulta=mysqli_query($conexion,$sql);

       while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>     
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad col-md-2" >
        </td>
        </tr>
        </tbody>';
    }

    ?>

</table>
</div>



<button type="button" class="accordion">Otros</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
               <th></th>
               <th>Código</th>
               <th>Descripcion Articulo</th>
               <th>Categoria</th>
               <th>Existencia</th>
               <th>Cantidad</th>
           </tr>
       </thead>

       <?php

       $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'Otr'";

       $consulta=mysqli_query($conexion,$sql);

       while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad col-md-2" >
        </td>

        </tr>
        </tbody>';
    }

    ?>

</table>
</div>



<button type="button" class="accordion">Pegamentos Varios</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
                <th></th>
                <th>Código</th>
                <th>Descripcion Articulo</th>
                <th>Categoria</th>
                <th>Existencia</th>
                <th>Cantidad</th>
            </tr>
        </thead>

        <?php

        $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'PeV'";

        $consulta=mysqli_query($conexion,$sql);

        while($registros= mysqli_fetch_array($consulta)) {
            echo '<tbody>
            <tr>
            <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>   
            <td>'.$registros["ID_PRODUCTO"].'</td>
            <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
            <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

            <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
            <td>
            <input type="text" class="form control cantidad col-md-2" >
            </td>

            </tr>
            </tbody>';
        }

        ?>

    </table>
</div>



<button type="button" class="accordion">Pinturas y Solventes</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
             <th></th>
             <th>Código</th>
             <th>Descripcion Articulo</th>
             <th>Categoria</th>
             <th>Existencia</th>
             <th>Cantidad</th>
         </tr>
     </thead>

     <?php

     $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'Pys'";

     $consulta=mysqli_query($conexion,$sql);

     while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>    
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad col-md-2" >
        </td>
        </tr>
        </tbody>';
    }

    ?>

</table>
</div>




<button type="button" class="accordion">Rodamientos</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
             <th></th>
             <th>Código</th>
             <th>Descripcion Articulo</th>
             <th>Categoria</th>
             <th>Existencia</th>
             <th>Cantidad</th>
         </tr>
     </thead>

     <?php

     $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'Rod'";

     $consulta=mysqli_query($conexion,$sql);

     while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>   
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad col-md-2" >
        </td>

        </tr>
        </tbody>';
    }

    ?>

</table>
</div>




<button type="button" class="accordion">Terminales</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
             <th></th>
             <th>Código</th>
             <th>Descripcion Articulo</th>
             <th>Categoria</th>
             <th>Existencia</th>
             <th>Cantidad</th>
         </tr>
     </thead>

     <?php

     $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'Ter'";

     $consulta=mysqli_query($conexion,$sql);

     while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>    
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad col-md-2" >
        </td>

        </tr>
        </tbody>';
    }

    ?>

</table>
</div>




<button type="button" class="accordion">Tiradores Surtidos</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
              <th></th>
              <th>Código</th>
              <th>Descripcion Articulo</th>
              <th>Categoria</th>
              <th>Existencia</th>
              <th>Cantidad</th>
          </tr>
      </thead>

      <?php

      $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'TiS'";

      $consulta=mysqli_query($conexion,$sql);

      while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>     
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad col-md-2" >
        </td>

        </tr>
        </tbody>';
    }

    ?>

</table>
</div>



<button type="button" class="accordion">Truper</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
                <th></th>
                <th>Código</th>
                <th>Descripcion Articulo</th>
                <th>Categoria</th>
                <th>Existencia</th>
                <th>Cantidad</th>
            </tr>
        </thead>

        <?php

        $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'Tru'";

        $consulta=mysqli_query($conexion,$sql);

        while($registros= mysqli_fetch_array($consulta)) {
            echo '<tbody>
            <tr>
            <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>    
            <td>'.$registros["ID_PRODUCTO"].'</td>
            <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
            <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

            <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
            <td>
            <input type="text" class="form control cantidad col-md-2" >
            </td>

            </tr>
            </tbody>';
        }

        ?>

    </table>
</div>



<button type="button" class="accordion">Tuberias</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
             <th></th>
             <th>Código</th>
             <th>Descripcion Articulo</th>
             <th>Categoria</th>
             <th>Existencia</th>
             <th>Cantidad</th>
         </tr>
     </thead>

     <?php

     $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'Tub'";

     $consulta=mysqli_query($conexion,$sql);

     while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>     
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad col-md-2" >
        </td>
        </tr>
        </tbody>';
    }

    ?>

</table>
</div>

<button type="button" class="accordion">Tornillos y Clavos</button>
<div class="panel">
    <table id="listado">
        <thead>
            <tr>
             <th></th>
             <th>Código</th>
             <th>Descripcion Articulo</th>
             <th>Categoria</th>
             <th>Existencia</th>
             <th>Cantidad</th>
         </tr>
     </thead>

     <?php

     $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIAS=categorias.ID_CATEGORIAS where productos.ID_CATEGORIAS = 'Tyc'";

     $consulta=mysqli_query($conexion,$sql);

     while($registros= mysqli_fetch_array($consulta)) {
        echo '<tbody>
        <tr>
        <td><input type="checkbox" class="codigo" value="'.$registros["ID_PRODUCTO"].'" /></td>     
        <td>'.$registros["ID_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_PRODUCTO"].'</td>
        <td>'.$registros["DESCRIPCION_CATEGORIAS"].'</td>

        <td>'.$registros["EXISTENCIA_PRODUCTO"].'</td>
        <td>
        <input type="text" class="form control cantidad col-md-2" >
        </td>

        </tr>
        </tbody>';
    }

    ?>

</table>
</div>