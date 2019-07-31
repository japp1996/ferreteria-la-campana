<?php include'php/conexion.php';?>
<!DOCTYPE html>
<html>
<?php include'include/head.html';?>
<body>
<?php include'include/menu.html';?>

<div id="container-main">
    <h1 style="position: relative; right: 35%;left: 35%;">NUESTROS PRODUCTOS</h1>
    
    <?php
    $sql = "SELECT * FROM categorias";
    $execute = mysqli_query($conexion, $sql);
    while ($categories = mysqli_fetch_array($execute)) {
    ?>   
        <div class="accordion-container">
            <a href="#" class="accordion-titulo">
                <?php echo $categories["DESCRIPCION_CATEGORIAS"]?>
                <span class="toggle-icon"></span>
            </a>
            <div class="accordion-content">
                <img src="imagenes/productos_imagenes/<?php echo str_replace(" ", "", strtolower($categories["DESCRIPCION_CATEGORIAS"]))?>_1.jpg" alt=""/>
                <img src="imagenes/productos_imagenes/<?php echo str_replace(" ", "", strtolower($categories["DESCRIPCION_CATEGORIAS"]))?>_2.jpg" alt=""/>
                <h3>
                    Todo lo relalcionado con asfalto: mantos afalticos, afalto liquido, cemento plastico, primer, entre otros productos mas desde las distintas presentaciones, cuñete, galon, 1/4 de galon.
                </h3>
            </div>  
        </div>
    <?php     
    }
    ?>
</div>
<?php include'include/footer.html';?>
</body>
</html>

<?php /*
<div class="accordion-container">
    <a href="#" class="accordion-titulo">BATERIAS<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/baterias_1.jpg" alt=""/>
        <img src="imagenes/productos_imagenes/baterias_2.jpg" alt=""/>
        <h3>Distintos tipos de pilas están diseñadas para un único uso. Hay gran variedad de tamaños y composición química entre ellas están las Cilíndricas, Rectangulares, De botón, Baterías para cámara y Pilas recargables. </h3>
    </div>
</div>

<div class="accordion-container">
    <a href="#" class="accordion-titulo">BOMBILLOS Y LAMPARAS<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/bombillosylamparas_1.jpg" alt=""/>
        <img src="imagenes/productos_imagenes/bombillosylamparas_2.jpg" alt=""/>
        <h3>Pueden encontrar tantas variantes que no sabrán cuál elegir. Una buena elección puede ayudarte a ahorrar en la factura de la luz. </h3>
    </div>
</div>

<div class="accordion-container">
    <a href="#" class="accordion-titulo">CABLES<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/cable_1.jpg" alt=""/>
        <img src="imagenes/productos_imagenes/cable_2.jpg" alt=""/>

        <p></p>
    </div>
</div>

<div class="accordion-container">
    <a href="#" class="accordion-titulo">CARBONES<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/carbones_1.jpg" alt=""/>
        <img src="imagenes/productos_imagenes/carbones_2.jpg" alt=""/>
        <p></p>
    </div>
</div>

<div class="accordion-container">
    <a href="#" class="accordion-titulo">CANALES DE LLUVIA<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/canaleslluvias_1.jpg" alt=""/>
        <img src="imagenes/productos_imagenes/canaleslluvias_2.jpg" alt=""/>
        <p></p>
    </div>
</div>

<div class="accordion-container">
    <a href="#" class="accordion-titulo">CINTAS Y ADHESIVOS<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/cintasadhesivos_1.jpg" alt=""/>
        <img src="imagenes/productos_imagenes/cintasadhesivos_2.jpg" alt=""/>
        <p></p>
    </div>
</div>

<div class="accordion-container">
    <a href="#" class="accordion-titulo">CONEXIONES<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/conexiones_1.jpg" alt=""/>
        <img src="imagenes/productos_imagenes/conexiones_2.jpg" alt=""/>
        <p></p>
    </div>
</div>

<div class="accordion-container">
    <a href="#" class="accordion-titulo">EMPACADURAS<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/empacaduras_1.jpg" alt=""/>
        <img src="imagenes/productos_imagenes/empacaduras_2.jpg" alt=""/>
        <p></p>
    </div>
</div>

<div class="accordion-container">
    <a href="#" class="accordion-titulo">GRIFERIAS Y BAJANTES<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
    </div>
</div>

<div class="accordion-container">
    <a href="#" class="accordion-titulo">LLAVES Y CERRADURAS<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
    </div>
</div>

<div class="accordion-container">
    <a href="#" class="accordion-titulo">HERRAMIENTAS<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
    </div>
</div>

<div class="accordion-container">
    <a href="#" class="accordion-titulo">MATERIALES DE CONSTRUCCION<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
    </div>
</div>

<div class="accordion-container">
    <a href="#" class="accordion-titulo">MANGUERAS<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
    </div>
</div>

 <div class="accordion-container">
    <a href="#" class="accordion-titulo">MALLAS<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
    </div>
</div>

    <div class="accordion-container">
    <a href="#" class="accordion-titulo">MATERIALES ELECTRICOS<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
    </div>
    </div>

    <div class="accordion-container">
    <a href="#" class="accordion-titulo">TIRADORES SURTIDOS<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
    </div>
    </div>

    <div class="accordion-container">
        <a href="#" class="accordion-titulo">TUBERIAS<span class="toggle-icon"></span></a>
         <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
        </div>
    </div>

    <div class="accordion-container">
        <a href="#" class="accordion-titulo">TORNILLOS Y CLAVOS<span class="toggle-icon"></span></a>
        <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
        </div>
    </div>

    <div class="accordion-container">
        <a href="#" class="accordion-titulo">TERMINALES<span class="toggle-icon"></span></a>
        <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
        </div>
    </div>

    <div class="accordion-container">
        <a href="#" class="accordion-titulo">TRUPER<span class="toggle-icon"></span></a>
        <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
        </div>
    </div>

    <div class="accordion-container">
        <a href="#" class="accordion-titulo">PINTURAS Y SOLVENTES<span class="toggle-icon"></span></a>
        <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
        </div>
    </div>

    <div class="accordion-container">
        <a href="#" class="accordion-titulo">RODAMIENTOS<span class="toggle-icon"></span></a>
        <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
        </div>
    </div>

    <div class="accordion-container">
    <a href="#" class="accordion-titulo">PEGAMENTOS VARIOS<span class="toggle-icon"></span></a>
    <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
    </div>
    </div>

    <div class="accordion-container">
        <a href="#" class="accordion-titulo">OTROS<span class="toggle-icon"></span></a>
        <div class="accordion-content">
        <img src="imagenes/productos_imagenes/asfalto_1.jpg" alt=""/>
        <p></p>
        </div>
    </div-->



*/