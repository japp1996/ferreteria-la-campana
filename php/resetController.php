<?php 
namespace PHP\ResetUser;
session_start();
$_SESSION['recovery'] = false;
include("conexion.php");
$request_body = file_get_contents('php://input');
$request = json_decode($request_body);
$email = $_SESSION['email'];

class ResetUser
{
	public static function reset($request, $email, $conexion) {
		$sql = "SELECT * FROM usuarios 
					WHERE CORREO='$email'";
		$users = mysqli_fetch_object(mysqli_query($conexion, $sql));

		if (mysqli_num_rows(mysqli_query($conexion, $sql)) > 0) {
			if ($users->RESPUESTA_UNO == $request->answer_one && $users->RESPUESTA_DOS == $request->answer_two) {
				return json_encode(array('result'=>true));
			} else {
				return json_encode(array('result'=>false, 'msg'=>'Lo sentimos, Una de las respuestas estan incorrectas'));
			}
		} else {
			return json_encode(array('result'=>false, 'msg'=>'Lo sentimos, No tenemos registros de este email'));
			//header("location: ../login.php?resp=error");
		}
	}
}

$reset = new ResetUser;
echo $reset->reset($request, $email, $conexion);