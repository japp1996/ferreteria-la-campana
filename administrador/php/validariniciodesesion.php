<?php 
ini_set("session.cookie_lifetime","28800");
ini_set("session.gc_maxlifetime","28800");
session_start(); 
if (!isset($_SESSION["ID_USUARIOS"])){
   header("location: ../login.php");
}