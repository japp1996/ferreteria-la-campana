<?php 
include "fpdf/fpdf.php";
include "../php/conexion.php";


//include "plantilla.php";

//consulta nombre cliente
$consulta="SELECT usuarios.NOMBRE_USUARIOS, pedidos.CI_RIF, pedidos.FECHA_PEDIDO FROM usuarios INNER JOIN pedidos WHERE pedidos.CI_RIF=usuarios.CI_RIF AND pedidos.ID_PEDIDO ='".$_REQUEST['nope']."'";
$result=mysqli_query($conexion, $consulta);



		while ($row=mysqli_fetch_assoc($result)) {
		$GLOBALS['nombrecli'] = $row['NOMBRE_USUARIOS'];
		$GLOBALS['noced'] = $row['CI_RIF'];
		$GLOBALS['fechped'] = $row['FECHA_PEDIDO'];
	}
//consulta no pedido
$sql="SELECT productos.ID_PRODUCTO, productos.DESCRIPCION_PRODUCTO, detalles_pedido.CANTIDAD_PRODUCTO, detalles_pedido.ID_PEDIDO FROM productos INNER JOIN detalles_pedido ON productos.ID_PRODUCTO = detalles_pedido.ID_PRODUCTO WHERE detalles_pedido.ID_PEDIDO='".$_REQUEST['nope']."'";

$resultado=mysqli_query($conexion,$sql);



//ENCABEZADO
class PDF extends FPDF{

		function Header()

		{

			$this->Image('../imagenes/icono_pedidos1.jpg', 5, 5, 30);
			$this->SetFont('Arial','B','15');
			$this->Cell(30);
			$this->Cell(120,30,'Pedido',0,1,'C');
			
			$this->Cell(40,10,'No Pedido: '.$_REQUEST['nope'],0,0,'L');
			$this->Cell(150,10,'Fecha de Pedido: '.$GLOBALS['fechped'],0,1,'R');
			$this->Cell(10,10,'Cliente: '.$GLOBALS['nombrecli'],0,1,'L');
			$this->Cell(10,10,'Cedula/Rif: '.$GLOBALS['noced'],0,0,'L');
			$this->Ln(20);
		}


//PIE DE PAGINA
		function Footer()
		{
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
$pdf->Cell(40,6,'CODIGO',1,0,'C',1);
$pdf->Cell(120,6,'DESCRIPCION ARTICULO',1,0,'C',1);
$pdf->Cell(30,6,'CANTIDAD',1,1,'C',1);

//FUENTE DE LOS REGISTROS
$pdf->SetFont('Arial','',10);

while ($row=mysqli_fetch_assoc($resultado)) {

$pdf->Cell(40,6,utf8_decode($row['ID_PRODUCTO']),1,0,'C');
$pdf->Cell(120,6,utf8_decode($row['DESCRIPCION_PRODUCTO']),1,0,'C');
$pdf->Cell(30,6,utf8_decode($row['CANTIDAD_PRODUCTO']),1,1,'C');
}


$pdf->Output();




 ?>



 ?>
