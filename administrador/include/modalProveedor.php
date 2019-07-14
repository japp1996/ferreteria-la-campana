<div id="registrodeUsuario" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="proveedores.php" method="POST">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Nuevo Proveedor</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="dni">RIF</label>
                                <input type="text" onkeypress="return solonumero(event);" class="form-control" id="dni" name="dni" value="" required="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" id="nombre" placeholder="" name="nombre" required>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="email">Correo</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>
                        </div>                                            
                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="phone">Telefono</label>
                                <input type="text" minlength="11" maxlength="11" onkeypress="return solonumero(event);" class="form-control" id="phone"  name="phone" required>
                            </div>
                        </div>
                    </div>  
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="direccion">Direccion</label>
                                <textarea class="form-control" id="direccion"  name="direccion" required></textarea>
                            </div>
                        </div>
                    </div>
                    <input type="submit" class="btn btn-primary btn-sm" name="registrar" value="Registrar">
                    <input type="button" class="btn btn-danger btn-sm" data-dismiss="modal" value="Cerrar">
                </div>
            </form>
        </div>
    </div>
</div>