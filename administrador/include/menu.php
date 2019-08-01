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
                <a class="navbar-brand" href="index">
                    FERRETERIA LA CAMPANA
                </a>
            </div>
           
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                 <ul class="nav navbar-nav navbar-letf" class="dropdown-menu">
                    <li>
                        <a href="index">Inicio</a>
                    </li>
                     
                    <li class="dropdown">
                        <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-table" aria-hidden="true"></i>
                            Tablas
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                          <li><a href="productos">Articulos</a></li>
                          <li><a href="categorias">Categorias</a></li>
                          <li><a href="estados">Estado de Pedido</a></li>
                          <li><a href="proveedores">Proveedores</a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-tasks" aria-hidden="true"></i>
                            Procesos
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                          <li><a href="pedido">Pedido</a></li>
                          <li><a href="requisicion">Requisicion</a></li>
                          <li><a href="recepcion">Recepcion</a></li>
                          <li><a href="consultarestadopedido">Estatus de Pedido</a></li>        
                          <li><a href="movimiento_inventario">Movimiento Inventario</a></li>        

                        </ul>
                    </li>


                    <li class="dropdown">
                        <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-list-alt" aria-hidden="true"></i>
                            Listados
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                        <li><a href="productos_list">Articulos</a></li>
                          <li><a href="user_list" >Usuarios</a></li>
                          <li><a href="consultarpedidos">Pedidos</a></li>
                          <li><a href="consultarestados">Estados</a></li>
                          <li><a href="consultarproveedores">Proveedores</a></li>
                          <li><a href="consultarcategorias">Categorias</a></li>
                          <li><a href="consultarclientes">Clientes</a></li>
                        </ul>
                    </li>


                    <li class="dropdown">
                        <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-gear" aria-hidden="true"></i>
                            Mantenimiento
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                        <li><a href="respaldarbasededatos">Respaldar datos</a></li>
                          <li><a href="restaurarbasededatos">Restaurar datos</a></li>
                           <li><a href="usuarios" >Usuarios</a></li>
                           <li><a href="auditoria_usuarios">Auditoria Usuarios</a></li>
                          
                          
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="ayuda">
                            <i class="fa fa-question-circle-o" aria-hidden="true"> </i>
                            Ayuda
                        </a>
                    </li>

                    <li class="dropdown">
                      <?php echo "<a href='?modo=desconectar'><i class='fa fa-sign-out' aria-hidden='true'></i> Cerrar</a>"?>
                    </li>
                     
                    <li>
                        <div class="chip">
                            
                            <p style="color:#fff; margin-left: 120px; margin-top: 15px;" class="">
                                <?php echo $_SESSION['NOMBRE_USUARIOS'] ;?>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
</nav>
<div>
<?php include 'php/cierrosesion.php';?>