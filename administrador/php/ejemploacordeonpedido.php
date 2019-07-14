<?php include "conexion.php"; ?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="ejemploestilo.css">
<link href="../css/bootstrap.css" rel="stylesheet">
    <link href="../css/tabla.css" rel="stylesheet">
    <link href="../css/small-business.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/piedepagina.css">

</head>
<body>

<div class="contenedor">
	<form>
		
		
<button class="accordion">Section 1</button>
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

                            $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIA=categorias.ID_CATEGORIAS where DESCRIPCION_CATEGORIAS = 'bombillos y lamparas'";

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
                                            <select class="cantidad" >';
                                                for ($i=1; $i <= $registros["EXISTENCIA_PRODUCTO"] ; $i++) {
                                                    # code...
                                                    echo  "<option value='$i' >".$i."</option>";
                                                }
                                            echo '</select>

                                        </td>

                                    </tr>
                                </tbody>';
                            }

                       ?>

                    </table>
</div>




<button class="accordion">Section 2</button>
<div class="panel">
  <p>Lorem ipsum...</p>
</div>













<button class="accordion">Materiales electricos</button>
<div class="panel" >
 
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

                            $sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, productos.EXISTENCIA_PRODUCTO, categorias.DESCRIPCION_CATEGORIAS FROM productos inner join categorias on productos.ID_CATEGORIA=categorias.ID_CATEGORIAS where DESCRIPCION_CATEGORIAS = 'MATERIALES ELECTRICOS'";

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
                                            <select class="cantidad" >';
                                                for ($i=1; $i <= $registros["EXISTENCIA_PRODUCTO"] ; $i++) {
                                                    # code...
                                                    echo  "<option value='$i' >".$i."</option>";
                                                }
                                            echo '</select>

                                        </td>

                                    </tr>
                                </tbody>';
                            }

                       ?>

                    </table>

</div>

		
	</form>
	

</div>
	
    <script src="js/jquery-2.2.4.min.js"></script>

    <script src="js/bootstrap.min.js"></script>

	<script type="text/javascript" src="ejemploestilo.js"></script>

</body>
</html>