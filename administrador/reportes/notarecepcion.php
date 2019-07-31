<?php 
include "fpdf/fpdf.php";
include "../php/conexion.php";
//include "plantilla.php";
$consulta="SELECT usuarios.NOMBRE_USUARIOS, 
				  recepcion.CI_RIF, 
				  recepcion.FECHA_RECEPCION, 
				  usuarios.DIRECCION, 
				  usuarios.TELEFONO,
				  productos.PRECIO
				FROM usuarios 
					INNER JOIN recepcion
						INNER JOIN productos
							WHERE recepcion.CI_RIF = usuarios.CI_RIF 
								AND recepcion.ID_RECEPCION ='".$_REQUEST['nope']."'";
$result=mysqli_query($conexion, $consulta);

while ($row=mysqli_fetch_assoc($result)) {
	$GLOBALS['nombrecli'] = $row['NOMBRE_USUARIOS'];
	$GLOBALS['noced'] = $row['CI_RIF'];
	$GLOBALS['address'] = $row['DIRECCION'];
	$GLOBALS['phone'] = $row['TELEFONO'];
	$GLOBALS['fechped'] = date('d/m/Y', strtotime($row['FECHA_RECEPCION']));
}

$sql="SELECT productos.ID_PRODUCTO, 
			 productos.DESCRIPCION_PRODUCTO, 
			 detalles_recepcion.CANTIDAD_RECEPCIONADA, 
			 detalles_recepcion.ID_RECEPCION
		FROM productos 
			INNER JOIN detalles_recepcion ON productos.ID = detalles_recepcion.ID_PRODUCTO 
				WHERE detalles_recepcion.ID_RECEPCION='".$_REQUEST['nope']."'";

$resultado=mysqli_query($conexion,$sql);

//ENCABEZADO
class PDF extends FPDF{
	function Header() {
		$this->Image('../imagenes/icono_pedidos1.jpg', 5, 5, 30);
		$this->SetFont('Arial','','11');
		$this->Cell(30);

		$this->SetFont('Arial','B','11');
		$this->Cell(135,10,'FERRETERIA LA CAMPANA, C.A.',0,0,'L');
		$this->Cell(10,10,'RECEPCION',0,1,'L');

		$this->Cell(170,0,''.$_REQUEST['nope'],0,1,'R');
		$this->Cell(180,10,'Fecha: '.$GLOBALS['fechped'],0,1,'R');

		$this->SetFont('Arial','','11');		
		$this->Cell(10,0,'CALLE 10 DE DICIEMBRE LOCAL N 27',0,1,'L');
		$this->Cell(10,10,'SECTOR EL ESTADIUM MARACAY EDO ARAGUA',0,1,'L');
		
		$this->Cell(10,10,'Telefono: 0243-2378756',0,1,'L');
		$this->Cell(10,0,'Rif: J-30094173-6',0,1,'L');
	
		$this->Ln(20);
	}
	//PIE DE PAGINA
	function Footer() {
		$this->SetY(-15);
		$this->SetFont('Arial','I',8);
		$this->Cell(0,10, 'Pagina '.$this->PageNo().'/{nb}', 0, 0,'C');
	}
}

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
$pdf->Cell(130,6,'DESCRIPCION ARTICULO',1,0,'C',1);
$pdf->Cell(30,6,'CANTIDAD',1,1,'C',1);
//FUENTE DE LOS REGISTROS
$pdf->SetFont('Arial','',10);
$subtotal = 0;
while ($row=mysqli_fetch_assoc($resultado)) {
	$pdf->Cell(30,6,utf8_decode($row['ID_PRODUCTO']),1,0,'C');
	$pdf->Cell(130,6,utf8_decode($row['DESCRIPCION_PRODUCTO']),1,0,'C');
	$pdf->Cell(30,6,utf8_decode($row['CANTIDAD_RECEPCIONADA']),1,1,'C');
}

$pdf->Output();