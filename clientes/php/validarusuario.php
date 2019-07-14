<?php
	include("conexion.php");

	//if (isset($_POST['ingresar'])) {
		// if (empty($cedula)) {

			$nameuser= $_POST['cedula'];
			$password= $_POST['contrasena'];
			$buscar_usuario= mysqli_query($conexion, "SELECT * FROM usuarios WHERE CI_RIF='$nameuser' AND CONTRASENA='$password'");

			if (@mysqli_num_rows($buscar_usuario)) {
				
				$asociar_usuario= mysqli_fetch_assoc($buscar_usuario);

				// if ($asociar_usuario['contrasena']==$password) {
					session_start();

					$_SESSION['CEDULA'] = $asociar_usuario["CI_RIF"];
					$_SESSION['NOMBRE_USUARIOS'] = $asociar_usuario["NOMBRE_USUARIOS"];
					$_SESSION['CONTRASENA'] = $asociar_usuario["CONTRASENA"];
					$_SESSION['CORREO'] = $asociar_usuario["CORREO"];
					$_SESSION['TELEFONO'] = $asociar_usuario["TELEFONO"];
					$_SESSION['DIRECCION'] = $asociar_usuario["DIRECCION"];
					$_SESSION['FECHA_NACIMIENTO'] = $asociar_usuario["FECHA_NACIMIENTO"];
					$_SESSION['ID_USUARIO'] = $asociar_usuario["ID_USUARIOS"];
					# code...
					if ($asociar_usuario["ID_USUARIOS"] == "ADM") {
						// header("location: ");
					} else if ($asociar_usuario["ID_USUARIOS"] == "TRA") {
						header("location: ../../trabajadores/2-bienvenidauser.php");
					} else if ($asociar_usuario["ID_USUARIOS"] == "CLI") {
						header("location: ../clientes/2-bienvenidauser.php");
					}


				// } else {
				// 	echo '<script type="text/javascript">
				// 		window.location="iniciosesioncontrasenaincorrecta.php"
				// 	</script>';
				// }
			} else {
				header("location: ../login.php?resp=error");
			}
			# code...
		// } else {
		// 	echo '<script type="text/javascript">
		// 		window.location="iniciosesionusuarioincorrecto.php";
		// 	</script>';
		// }
		# code...
	//}

?>
