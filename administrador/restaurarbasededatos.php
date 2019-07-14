<!DOCTYPE html>
<?php include'include/head.html';?>
<body>
<?php include'include/menu.php';?>

<form action="backup/import_db.php" method="POST" enctype="multipart/form-data" class="contacto">

        <h2>Restaurar Datos</h2>   
        <div class="row">
            <div class="col-xs-4">
                
            </div>
            <div class="col-xs-4">
                <div class="form-group"></div>
                <label>Esgoja la Base de datos</label>
                <br>
                <input type="file" name="nombredebasededatos" id="file-3" class="btn btn-info btn-lg">
                <br>
                 <button type="submit" class="btn btn-primary btn-md" name="importarbasededatos" id="buscar">Restaurar</button> 

            </div>
             
        </div>     
</form>  

<?php include'include/piedepagina.php'; ?>
<?php include'include/script.html'; ?>
</body>
</html>