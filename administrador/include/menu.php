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
                        <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Tablas<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li><a href="productos.php">Articulos</a></li>
                          <li><a href="categorias.php">Categorias</a></li>
                          <li><a href="estados.php">Estado de Pedido</a></li>
                          <li><a href="proveedores.php">Proveedores</a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Procesos<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li><a href="pedido.php">Pedido</a></li>
                          <li><a href="requisicion.php">Requisicion</a></li>
                          <li><a href="recepcion.php">Recepcion</a></li>
                          <li><a href="consultarestadopedido.php">Estatus de Pedido</a></li>             
                        </ul>
                    </li>


                    <li class="dropdown">
                        <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Listados<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        <li><a href="consultarcateg.php">Articulos</a></li>
                          <li><a href="12-consultaruser.php" >Usuarios</a></li>
                          <li><a href="consultarpedidos.php">Pedidos</a></li>
                        </ul>
                    </li>


                    <li class="dropdown">
                        <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Mantenimiento<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        <li><a href="respaldarbasededatos.php">Respaldar datos</a></li>
                          <li><a href="restaurarbasededatos.php">Restaurar datos</a></li>
                           <li><a href="usuarios.php" >Usuarios</a></li>
                           <li><a href="auditoria_usuarios.php">Auditoria Usuarios</a></li>
                          
                          
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="ayuda.php">Ayuda</a>
                    </li>

                    <li class="dropdown">
                      <?php echo "<a href='?modo=desconectar'>Cerrar</a>"?>
                    </li>
                     
                    <li>
                        <div class="chip">
                           <p style="color:#fff; margin-left: 120px; margin-top: 15px;" class=""><?php echo $_SESSION['NOMBRE_USUARIOS'] ;?></p> 
                         </div>    
                    </li>
                </ul>
            </div>
        </div>
</nav> 
<?php include'php/cierrosesion.php';?>