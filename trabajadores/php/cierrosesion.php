<?php
if(isset($_GET['modo']) == 'desconectar') {
    session_destroy();
    echo '<meta http-equiv="Refresh" content="2;url=../login.php">';
    exit ('<h1 style="position:relative; right:30%; left:30%;">HASTA LUEGO '.$_SESSION['NOMBRE_USUARIOS'].'...</h1>');
}
// $_SESSION = array();
// session_destroy();
// header("location: ../../usuarios/");