<?php 
namespace PHP\RestoreUser;
session_start();
include("conexion.php");
$request_body = file_get_contents('php://input');
$request = json_decode($request_body);

class RestoreUser
{
    public static function restorePassword($request, $conexion)
	{
		if ($request->password != $request->password_confirmation) {
            return json_encode(array('result'=>false, 'msg'=>'Lo sentimos, Las contraseñas no cohinciden'));
		}
		$email = $_SESSION['email'];
		$request->password = md5($request->password);
		$sql = "UPDATE usuarios SET CONTRASENA = '$request->password' WHERE CORREO='$email'";
		$users = mysqli_query($conexion, $sql);

		if ($users) {
			return json_encode(array('result'=>true));
		} else {
            return json_encode(array('result'=>false, 'msg'=>'Lo sentimos, No se puedo actualizar su contraseña'));
		}
	}
}

$recovery = new RestoreUser;
echo $recovery->restorePassword($request, $conexion);