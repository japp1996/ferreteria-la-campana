<?php 
namespace PHP\RegisterUser;
include 'conexion.php';
include 'validations.php';
$request_body = file_get_contents('php://input');
$request = json_decode($request_body);

class RegisterUser
{
  public static function register($request, $conexion) {
    $request->nombre = ucwords($request->nombre);
    $request->contrasena = md5($request->repcontrasena);
    $request->repcontrasena = md5($request->repcontrasena);
    $request->email = strtolower($request->email);
    $request->direccion = ucwords($request->direccion);

    $ano_recibido = date('Y', strtotime($request->fechanac));
    $ano_actual = date('Y');
    $ano_permitido = 18;
    $ano_registro = $ano_actual - $ano_recibido;

    if ($ano_registro >= $ano_permitido) {
      return json_encode(array('result'=> false, 'msg'=>'Debes ser mayor de edad para poder registrarte'));
    }

    $mysql = "SELECT * FROM usuarios WHERE TELEFONO = '$request->telefono' OR CORREO = '$request->email'";
    $consulta = mysqli_query($conexion, $mysql);
    $filas = mysqli_num_rows($consulta);

    if ($request->contrasena == $request->repcontrasena) {
      if ($filas == 0) {
        if(filter_var($request->email, FILTER_VALIDATE_EMAIL)){
          if (strlen($request->email) <= 64) { 
            $inser="INSERT INTO usuarios(CI_RIF, NOMBRE_USUARIOS, CONTRASENA, CORREO, TELEFONO, DIRECCION, FECHA_NACIMIENTO, ID_USUARIOS) VALUES ('".$request->tipodedoc."-".$request->cedula."','$request->nombre','$request->contrasena','$request->email','$request->telefono','$request->direccion','$request->fechanac','CLI')";
            $ejecutar=mysqli_query($conexion, $inser);
          } elseif (strlen($email) > 64) {
            return json_encode(array('result'=> false, 'msg'=>'El campo Email debe contener maximo 64 caracteres'));
          }
        } else {
          return json_encode(array('result'=> false, 'msg'=>'El formato de email que introdujo es inválido\nPor favor intente de nuevo. ej: nombre@dominio.com'));
        }
      } elseif ($filas==1) {
        return json_encode(array('result'=> false, 'msg'=>'Lo sentimos, un usuario ya ha asociado este email o este telefono\nPor favor verifique e intente de nuevo'));
      }  
    } else{
      return json_encode(array('result'=> false, 'msg'=>'Lo sentimos, las contraseñas no cohiciden'));
    }

    if ($ejecutar) {
      return json_encode(array('result'=> true, 'msg'=>'Usted ha sido registrado exitosamente\nGracias!'));
    } else{
      return json_encode(array('result'=> false, 'msg'=>'Ya existe un usuario asociado a esta cedula!'));
    }
  }    
}

$register = new RegisterUser;
echo $register->register($request, $conexion);