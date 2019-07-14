<?php 
include "fpdf/fpdf.php";
include "redirecctnotadeentrega.php";
include "../php/conexion.php";
session_start();
$sql="SELECT pedidos.CI_RIF, usuarios.NOMBRE_USUARIOS
		FROM pedidos INNER JOIN usuarios ON pedidos.CI_RIF=usuarios.CI_RIF
			WHERE pedidos.ID_PEDIDO='$id'";
$query=mysqli_query($conexion,$sql);
while ($row=mysqli_fetch_array($query)) {
	$nombrecliente=$row['NOMBRE_USUARIOS'];
}
//class PDF extends FPDF{
//		function Header() {
//			$this->Image('../imagenes/icono_pedidos1.jpg', 5, 5, 30);
//			$this->SetFont('Arial','B','15');
//			$this->Cell(30);
//			$this->Cell(120,10,'Reporte de Entrega',0,1,'C');
//			$this->Cell(20,10,'Cliente: ',0,0,'C');	
//			$this->Ln(20);
//		}
//		function Footer() {
//			$this->SetY(-15);
//			$this->SetFont('Arial','I',8);
//			$this->Cell(0,10, 'Pagina 1',$this->PageNo().'/{nb}', 0, 0,'C');
//		}
//}