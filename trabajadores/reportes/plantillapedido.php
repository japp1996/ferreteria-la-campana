<?php
include "fpdf/fpdf.php";
class PDF extends FPDF{
	function Header() {
		$this->Image('../imagenes/icono_pedidos1.jpg', 5, 5, 30);
		$this->SetFont('Arial','B','15');
		$this->Cell(30);
		$this->Cell(120,10,'Detalles de Pedido',0,0,'C');
		$this->Ln(20);
	}
	function Footer() {
		$this->SetY(-15);
		$this->SetFont('Arial','I',8);
		$this->Cell(0,10, 'Ferreteria la Campana', 0, 0,'C');
	}
}