<?php include('php/conexion.php');?>
<!DOCTYPE html>
<html>
<?php include'include/head.html';?>
<body>
<?php include'include/menu.html';?>
<form id="registro" name="registro" role="form" class="formregistro">
	<h2>Create Una Cuenta</h2>
	<div class="contenedorinputs">
		<select name="tipodedoc" data-name="Tipo de documento" style="height: 50px; position: relative; top: 15px;">
			<option value="V">V</option>
			<option value="J">J</option>
			<option value="E">E</option>
		</select>
		<input type="text" name="cedula" data-name="Cedula" onkeypress="return solonumero(event);" placeholder="Número de Documento" class="" value="" style="width: 85%;">
		<input type="text" name="nombre" data-name="Nombres y Apellidos" placeholder="Nombres y Apellidos" class="input100">
		<input type="password" minlength="7" data-name="Contrasena" name="contrasena" placeholder="Contraseña" class="input100" >
		<input type="password" minlength="7" data-name="Confirmacion de contrasena" name="repcontrasena" placeholder="Repetir Contraseña" class="input100">
		<input type="email" id="email" name="email" data-name="Email" placeholder="Email" class="input50">
		<input type="text" name="telefono" maxlength="11" data-name="Telefono" onkeypress="return solonumero(event);" placeholder="Teléfono" class="input50">
		<input type="text" data-name="Direccion" name="direccion" placeholder="Dirección" class="input100">
		<label style="text-align: center;">Fecha de Nacimiento</label>
		<input type="date" data-name="Fecha de nacimiento" name="fechanac" class="input100">
		<input type="button" name="registrar" value="Registrarse" class="btnregistrar" onclick="register()">
		<p class="linkiniciosesion">
			¿Ya tienes una cuenta? 
			<a href="login.php">Ingresa aqui</a>
		</p>
	</div>
</form>
<?php include'include/footer.html';?>
<script>
	function register() {
		let form = $('#registro').serializeArray()
		let data = {}
		console.log(form)
		for (let i = 0; i < form.length; i++) {0
			data[form[i].name] = form[i].value
			console.log($('input[name='+form[i].name+']').data('name'))
			if (form[i].value == "") {
				Swal.fire("El campo " + $('input[name='+form[i].name+']').data('name') + " es requerido")
				return false
			}
		}

		axios.post('php/registerController.php', data)
		.then(res => {
			if (res.data.result) {
				Swal.fire('Excelente!', 'Usted ha sido registrado exitosamente!', 'success')
			} else {
				Swal.fire('Estimado usuario!', res.data.msg, 'info')
			}
		})
		.catch(err => {
			Swal.fire('Lo sentimos', 'En estos momentos no podemos procesar su solicitud', 'warning')
		})
	}
</script>
</body>
</html>