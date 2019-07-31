<?php include 'php/conexion.php';
session_start();
?>
<html lang="es">
<?php include 'include/head.html';?>
<body>
<?php include 'include/menu.html';
if (!$_SESSION){
    header('location:forgot.php');
}
?>
<form id="login" class="formregistro">
    <h2>Recuperar Contraseña <br>
    <?php echo $_SESSION['email'] ?>
    </h2> 
    
	<div class="contenedorinputs">
        <input type="password" name="password" data-name="Contraseña" placeholder="Contraseña" size="10" id="password" class="input100">  
        <input type="password" name="password_confirmation" data-name="Contraseña de Confirmación" placeholder="Contraseña de Confirmación" size="10" id="password_confirmation" class="input100">  
        <input type="button" value="Recuperar" class="btniniciarsesion" name="ingresar" onclick="resetear()">
        <p class="linkiniciosesion">
            ¿Aun no tienes cuenta? 
            <a href="/ferreterialacampana/register.php">
                Registrate aqui
            </a>
        </p>
	</div>
</form>
<?php include 'include/footer.html';?>
<script>
    function resetear() {
        console.log("dsahskhdkhdk")
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
        if (data.password != data.password_confirmation) {
            Swal.fire("Las contraseñas no cohinciden")
            return false
        }
        data.reset = true

        axios.post('php/restoreController.php', data)
        .then(res => {
            if (res.data.result) {
                window.location = 'login.php'
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