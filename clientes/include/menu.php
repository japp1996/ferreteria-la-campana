<?php include "php/validariniciodesesion.php";?>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="2-bienvenidauser.php">
                    FERRETERIA LA CAMPANA
                </a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                 <ul class="nav navbar-nav navbar-letf" class="dropdown-menu">
                    <li>
                        <a href="2-bienvenidauser.php">Inicio</a>
                    </li>
                     <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pedidos <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li ><a href="5-realizarpedido.php">Realizar Pedido</a></li>
                          <li><a href="3-buscaractped.php">Modificar Pedido</a></li>
                         
                        </ul>
                        </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Reportes<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li><a href="consultarpedidos.php">Todos los pedidos</a></li>
                          <li><a href="consultarcateg.php">Los productos</a></li>
                          <li><a href="" ></a></li>
                        </ul>
                        </li>
                         <li class="dropdown">
                        <a href="ayuda.php">Ayuda</a>
                      
                        </li>
                    <li>
                      <?php echo "<a href='?modo=desconectar'>Cerrar Sesion</a>"?>
                    </li>

                    <li>
<div class="chip">                       
<p style="color:#fff; margin-left: 120px; margin-top: 15px;" class=""><?php echo $_SESSION['NOMBRE_USUARIOS'] ;?></p></div> 
                    </li>
                </ul>
            </div>
        </div>
</nav> 
<?php include 'php/cierrosesion.php';?>