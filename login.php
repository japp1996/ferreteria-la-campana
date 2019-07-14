<?php include'php/conexion.php';?>
<html lang="es">
<?php include'include/head.html';?>
<body>
<?php include'include/menu.html';?>
<form action="php/loginController.php" role="form" id="login" method="POST" class="formregistro">
	<h2>Iniciar Sesion</h2>
	<div class="contenedorinputs">
        <input type="text" name="email" data-name="Email" placeholder="Email" size="10" id="cantidad" class="input100">  
		<input type="password" name="contrasena" data-name="Contraseña" placeholder="Contraseña" class="input100"/>
        <input type="button" onclick="login()" value="Iniciar sesion" class="btniniciarsesion" name="ingresar" >
        <p class="linkiniciosesion">
            ¿Aun no tienes cuenta? 
            <a href="/SistemaFerreteriaCampana/usuarios/register.php">
                Registrate aqui
            </a>
        </p>
	</div>
</form>
<?php include'include/footer.html';?>
<script>
    function login() {
        let form = $('#login').serializeArray()
        let data = {}
        for (let i = 0; i < form.length; i++) {0
            data[form[i].name] = form[i].value
            console.log($('input[name='+form[i].name+']').data('name'))
            if (form[i].value == "") {
                Swal.fire("El campo " + $('input[name='+form[i].name+']').data('name') + " es requerido")
                return false
            }
        }

        axios.post('php/loginController.php', data)
        .then(res => {
            if (res.data.result) {
                window.location = res.data.msg+'/2-bienvenidauser.php'
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