<?php
$user = "root";
$pass = "";
$mbd = new PDO('mysql:host=localhost;dbname=ferreteria_la_campana', $user, $pass);

try {
    $mbd = new PDO('mysql:host=localhost;dbname=ferreteria_la_campana', $user, $pass);
    $mbd = null;
} catch (PDOException $e) {
    print "¡Error!: " . $e->getMessage() . "<br/>";
    die();

}
$conexion=mysqli_connect("localhost","root","","ferreteria_la_campana");
?>