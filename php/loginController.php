<?php 
namespace PHP\LoginUser;
session_start();
include("conexion.php");
$request_body = file_get_contents('php://input');
$request = json_decode($request_body);

class LoginUser
{
	public static function login($request, $conexion) {
		$request->contrasena = md5($request->contrasena);
		$sql = "SELECT * FROM usuarios 
					WHERE CORREO='$request->email' 
						AND CONTRASENA='$request->contrasena'";
		$users = mysqli_query($conexion, $sql);

		if (mysqli_num_rows($users) > 0) {
			$asociar_usuario= mysqli_fetch_assoc($users);
			$_SESSION = $asociar_usuario;

			switch ($asociar_usuario["ID_USUARIOS"]) {
				case 'ADM':
					$_SESSION['TIPO_USER'] = 1;
					$_SESSION['NAME_TIPO_USER'] = "ADMINISTRADOR";
					break;
				case 'TRA':
					$_SESSION['TIPO_USER'] = 2;
					$_SESSION['NAME_TIPO_USER'] = "TRABAJADORES";
					break;
				case 'CLI':
					$_SESSION['NAME_TIPO_USER'] = "CLIENTES";
					$_SESSION['TIPO_USER'] = 3;
					break;
				default:
					$_SESSION['TIPO_USER'] = 0;
					$_SESSION['NAME_TIPO_USER'] = "NONE";
					break;
			}

			$fecha = date('Y-m-d g:i:s-a');
			$auditoria= "INSERT INTO auditoria_usuarios
							(ID_AUDITORIA,CI_RIF,OPERACION,DETALLES_OPERACION,FECHA) 
								VALUES  
									('','".$_SESSION['CI_RIF']."','Entrada','Entrada al Sistema','$fecha')";
			mysqli_query($conexion, $auditoria);
			return json_encode(array('result'=>true, 'msg'=>strtolower($_SESSION['NAME_TIPO_USER'])));
		} else {
			return json_encode(array('result'=>false, 'msg'=>'Lo sentimos, Email o contrasena incorrectos'));
			//header("location: ../login.php?resp=error");
		}
	}
}

$login = new LoginUser;
echo $login->login($request, $conexion);