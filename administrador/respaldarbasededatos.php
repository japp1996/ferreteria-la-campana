<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php include'include/menu.php'; ?>

<form  action="backup/export_db.php" method="POST"  class="contacto">
    <h2>Respaldar Datos</h2>   
    <div class="row">
        <div class="col-xs-4"></div>
        <div class="col-xs-4">
        <div class="form-group"></div>
            <button type="submit" class="btn btn-primary btn-md" name="exportarbasededatos" id="buscar">Respaldar</button> 
        </div>
    </div>     
</form>  

<?php include'include/piedepagina.php';include'include/script.html';?>
</body>
</html>