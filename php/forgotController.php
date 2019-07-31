<?php 
namespace PHP\ForgotUser;
session_start();
include("conexion.php");
$request_body = file_get_contents('php://input');
$request = json_decode($request_body);

class ForgotUser
{
	public static function recovery($request, $conexion) {
		$sql = "SELECT * FROM usuarios 
					WHERE CORREO='$request->email'";
		$users = mysqli_query($conexion, $sql);

		if (mysqli_num_rows($users) > 0) {
			$_SESSION['recovery'] = true;
			$_SESSION['email'] = $request->email;
			return json_encode(array('result'=>true));
		} else {
            $_SESSION['recovery'] = false;
			return json_encode(array('result'=>false, 'msg'=>'Lo sentimos, No tenemos registros de este email'));
			//header("location: ../login.php?resp=error");
		}
	}
}

$recovery = new ForgotUser;
if ($request->reset) {
	echo $recovery->restorePassword($request, $conexion);
	die();
}
echo $recovery->recovery($request, $conexion);