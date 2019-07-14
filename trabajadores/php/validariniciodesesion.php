<?php session_start(); 
//codigo de seguridad para primmero inniciar sesion
if (!isset($_SESSION["ID_USUARIOS"])) {
    header("location: ../login.php");
}