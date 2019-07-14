<?php 

$caso = $_REQUEST["caso"];

	switch ($caso) {
		case '1':
			$titulo = $_POST['Titulo'];
			$autor = $_POST['Autor'];
			$genero = $_POST['Genero'];

			$enlace = new MyConnect();
			//$enlace = mysqli_connect("localhos", "root", "", "db");

			$sql = "INSERT INTO canciones (TITULO,AUTOR,GENERO)
						VALUES ('$titulo','$autor','$genero')";

			$enlace->query($sql);
			//$resultado = mysqli_query($conexion, $sql);

			$enlace->close();

			header("location:formulario_canciones.php?i=1");
			break;
		case '2':
			$titulo = $_REQUEST['title'];
			$autor = $_POST['Autor'];
			$genero = $_POST['Genero'];

			$enlace = new MyConnect();

			$sql = "UPDATE canciones SET
						AUTOR = '$autor',
						GENERO = '$genero' WHERE TITULO = '$titulo'";

			$enlace->query($sql);

			$enlace->close();

			header("location:listado_canciones.php?u=1");
			break;
		case '3':
			$titulo = $_REQUEST["title"];

			$enlace = new MyConnect();

			$sql = "DELETE FROM canciones WHERE TITULO = '$titulo'";

			$enlace->query($sql);

			$enlace->close();

			header("location:listado_canciones.php?d=1");
			break;

		default:
			# code...
			break;
	}

 ?>

