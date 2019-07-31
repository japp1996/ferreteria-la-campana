<?php include'php/conexion.php';
session_start();
?>
<html lang="es">
<?php include'include/head.html';?>
<body>
<?php include'include/menu.html';
if (!$_SESSION){
    header('location:forgot.php');
} else {
    $correo = $_SESSION['email'];
    $sql = "SELECT PREGUNTA_UNO, PREGUNTA_DOS FROM usuarios WHERE CORREO = '$correo'";
    $preguntas = mysqli_fetch_object(mysqli_query($conexion, $sql));
}

?>
<form id="login" class="formregistro">
	<h2>Recuperar Contraseña</h2>
	<div class="contenedorinputs">
        <label for="answer_one"><?php echo $preguntas->PREGUNTA_UNO ?></label>
        <input type="text" name="answer_one" data-name="Respuesta 1" placeholder="Respuesta" size="10" id="answer_one" class="input100">  
        <label for="answer_two"><?php echo $preguntas->PREGUNTA_DOS ?></label>
        <input type="text" name="answer_two" data-name="Respuesta 2" placeholder="Respuesta" size="10" id="answer_two" class="input100">  
        <input type="button" onclick="resetear()" value="Recuperar" class="btniniciarsesion" name="reset" >
        <p class="linkiniciosesion">
            ¿Aun no tienes cuenta? 
            <a href="/ferreterialacampana/register.php">
                Registrate aqui
            </a>
        </p>
	</div>
</form>
<?php include'include/footer.html';?>
<script>
    function resetear() {
        console.log("por aqui")
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

        axios.post('php/resetController.php', data)
        .then(res => {
            if (res.data.result) {
                window.location = 'reset.php'
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
