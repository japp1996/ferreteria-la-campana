<!DOCTYPE html>
<?php include'include/head.php';?>
<body>
	<?php include'include/menu.php';?>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1><p align="center">SISTEMA GENERAL FERRETERIA LA CAMPANA</p></h1>
				<p align="center"><img class="img-responsive img-rounded" src="imagenes/personal.png" width="150" height="70" alt=""></p>
			</div>
			<h1 class="bienvenidaletra">Bienvenido/a</h1>
			<h2 class="tipouserletra">Estimado cliente</h2>
			<div class=""><?php  echo "<h4>".$_SESSION['NOMBRE_USUARIOS']." </h4>"; ?></div>
		</div>
		<hr>
		<?php include'include/piedepagina.php';?>
	</div>

	<?php include'include/script.php';?>
</body>
</html>