<?php 
include "plantillastock.php";
include "../php/conexion.php";
$sql="SELECT * FROM productos ";
$resultado=mysqli_query($conexion,$sql);
//LAMANDO LA FUNCION CREADA
$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
//COLOR DE FONDO SOMBREADO
$pdf->SetFillColor(232,232,232);
//FUENTE DE LOS ENCABEZADO CAMPOS
$pdf->SetFont('Arial','B',12);
//NOMBRE DE LOS CAMPOS
$pdf->Cell(30,6,'CODIGO',1,0,'C',1);
$pdf->Cell(130,6,'DESCRIPCION ARTICULO',1,0,'L',1);
$pdf->Cell(20,6,'TEORICO',1,0,'C',1);
$pdf->Cell(15,6,'FISICO',1,1,'C',1);
//FUENTE DE LOS REGISTROS
$pdf->SetFont('Arial','',10);
while ($row=mysqli_fetch_assoc($resultado)) {
	$pdf->Cell(30,6,utf8_decode($row['ID_PRODUCTO']),1,0,'C');
	$pdf->Cell(130,6,utf8_decode($row['DESCRIPCION_PRODUCTO']),1,0,'L');
	$pdf->Cell(20,6,utf8_decode($row['EXISTENCIA_PRODUCTO']),1,0,'C');
	$pdf->Cell(15,6,'',1,1,'C');
}
$pdf->Output();