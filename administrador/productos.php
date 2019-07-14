<?php require"php/conexion.php";?>
<!DOCTYPE html>
<?php include'include/head.html';?>
<style>
.show-menu-arrow {
  width: 100% !important;
}
</style>
<body>
<?php include'include/menu.php';?>

<div class="container">
  <form  action="productos.php" method="POST"  class="contacto">
    <h2>Buscar Articulo</h2>
    <div class="row">
      <div class="col-xs-4">
        <div class="form-group">
          <label for="cedula">&nbsp; </label>
        </div>
      </div>
      <div class="col-xs-4">
        <div class="form-group">
          <p class="center text-center">Introduzca Código</p>
          <input type="text" class="form-control" id="codart" name="codart" placeholder="">  
        </div> 
        <button type="submit" class="btn btn-primary btn-md" name="buscarart" id="buscar">Buscar</button> 
        <br>
        <br>
        <button type="button" class="btn btn-info" id="buscar" data-toggle="modal" data-target="#registrodeProducto">Nuevo Producto</button>
      </div>
    </div>   
  </form>
  <form id="guardarProducto">  
    <div id="registrodeProducto" class="modal fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Nuevo Articulo</h4>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-xs-4">
                <div class="form-group">
                  <label for="descart">Nombre de Articulo</label>
                  <input type="text" class="form-control" data-name="Nombre del Articulo" id="descart" name="descartin">
                </div>
              </div>
              <div class="col-xs-4">
                <div class="form-group">
                  <label for="categ">Categoria</label>
                  <select name="categ" id="categ" data-name="Categoria" class="selectpicker show-menu-arrow" data-style="form-control" data-live-search="true" title="-- Seleccione la categoria --"> 
                    <option value="">--Seleccione--</option>
                      <?php 
                      $consulta="SELECT * FROM categorias";
                      $resultado=mysqli_query($conexion, $consulta);
                      while ($row=mysqli_fetch_array($resultado)) {   ?>
                      <option value="<?php echo $row['ID']; ?>" data-tokens="<?php echo $row['DESCRIPCION_CATEGORIAS']?>"><?php echo $row['DESCRIPCION_CATEGORIAS']; ?></option>
                      <?php  } ?>
                    </select>
                </div>
              </div>
            </div>   
            <div class="row">
              <div class="col-xs-4">
                <div class="form-group">
                  <label for="unidad">Unidad</label>
                  <select name="unidad" id="unidad" data-name="Unidad" class="selectpicker show-menu-arrow" data-style="form-control" data-live-search="true" title="-- Seleccione la unidad --"> 
                    <option value="">--Seleccione--</option>                      
                    <option value="UNIDAD" data-tokens="UNIDAD">UNIDAD</option>
                    <option value="DOCENA" data-tokens="DOCENA">DOCENA</option>
                    <option value="PAQUETE" data-tokens="PAQUETE">PAQUETE</option>
                    <option value="PAR" data-tokens="PAR">PAR</option>
                    <option value="KG" data-tokens="KG">KG</option>
                  </select>
                </div>
              </div>
              <div class="col-xs-4">
                <div class="form-group">
                  <label for="stock_min">Stock Minimo</label>
                  <input type="text" data-name="Stock Minimo" class="form-control" id="stock_min"  name="stock_min">
                </div>
              </div>
              <div class="col-xs-4">
                <div class="form-group">
                  <label for="stock_max">Stock Maximo</label>
                  <input type="text" data-name="Stock Maximo" class="form-control" id="stock_max"  name="stock_max">
                </div>
              </div>
            </div>
            <div id="cookies">
              
            </div>
            <div class="row" id="providers">
              <div class="containProvider">
                <!--div-- class="col-xs-5">
                  <div class="form-group">
                    <label for="proveedor_id">Proveedor</label>
                    <select class="selectpicker show-menu-arrow" data-style="form-control" data-live-search="true" title="-- Seleccione el proveedor --" id="proveedor_id">

                    <?php
                    $sql = "SELECT ID, NOMBRE FROM proveedores ORDER BY NOMBRE ASC";
                    $query = mysqli_query($conexion, $sql);
                    while ($proveedor = mysqli_fetch_object($query)) {
                    ?>
                      <option value="<?php echo $proveedor->ID ?>" data-tokens="<?php echo $proveedor->NOMBRE?>"><?php echo $proveedor->NOMBRE ?></option>
                    <?php
                    }
                    ?>
                    </select>
                  </div>
                </!--div-->
                <!--div-- class="col-xs-5">
                  <div class="form-group">
                    <label for="precio">Precio</label>
                    <input type="text" class="form-control" id="precio" required>
                  </div>
                </!--div-->
              </div>
            </div>

            <input type="button" class="btn btn-primary btn-sm" name="registrarart" onclick="crearProducto()" value="Registrar">
            <input type="button" class="btn btn-danger btn-sm" data-dismiss="modal" value="Cerrar">
            <!--input type="button" class="btn btn-success btn-sm" id="addProvider" value="Añadir Proveedor" onclick="ProveedorProducto()"-->
          </div>
        </div>
      </div>
    </div>
  </form>
<?php require"include/actualizararticulo.php"; ?> 
<?php include'include/piedepagina.php'; ?>
</div>
<?php include'include/script.html';?>    
<script>
  var proveedores = []
  function ProveedorProducto() {
    var option = $("#proveedor_id").val()
    var precio = $('#precio').val()
    if (precio == "" || precio < 0) {
      Swal.fire('Ingrese un precio valido')
      return false
    }
    var thereProv = proveedores.find(function(proveedor) {
      console.log(proveedor, option)
      return proveedor.id == option
    })
    console.log(thereProv)
    
    if (thereProv) {
      Swal.fire('Ya agrego este proveedor!')
      return false;
    }    
    var proveedor = {
      id: option,
      precio: $('#precio').val(),
      nombre: $('#proveedor_id option[value='+option+']')
    }
    $('#cookies').append("<div class='cookie' data-idproveedor='"+proveedor.id+"' id='chip"+proveedor.id+"'>"+proveedor.nombre[0].text+"<span class='closecookie' onclick='BorrarProveedor("+proveedor.id+")'>&times;</span></div>")
    proveedores.push(proveedor)
  }

  function BorrarProveedor(id) {
    $('#chip'+id).remove()
    proveedores.splice(function(el,i){
      if (el.id = id){
        return i
      }
    }, 1)
  }

  function crearProducto(){
    var form = $('#guardarProducto').serializeArray()
    let data = {}
		for (let i = 0; i < form.length; i++) {
			data[form[i].name] = form[i].value
      var field = $('input[name='+form[i].name+']').data('name')
      if (field === undefined) {
        field = $('select[name='+form[i].name+']').data('name') 
      }
      console.log(field)
			if (form[i].value == "") {
				Swal.fire("El campo " + field + " es requerido")
				return false
			}
    }
    axios.post('php/insertarart.php', data).then(res=>{
      if(res.data.result) {
        $('#registrodeProducto').modal('hide')
        Swal.fire('Felicidades',res.data.msg, 'success')
      } else {
        Swal.fire('Lo sentimos',res.data.msg, 'warning')
      }
    }).catch(err=>{
        Swal.fire('Estimado usuario','Nuestras mas sinceras disculpas pero ha ocurrido un error en el proceso.', 'error')
    })
  }

  function editarProducto(id) {
    var form = $('#editar_form').serializeArray()
    let data = {}
		for (let i = 0; i < form.length; i++) {0
			data[form[i].name] = form[i].value
      var field = $('input[name='+form[i].name+']').data('name')
      if (field === undefined) {
        field = $('select[name='+form[i].name+']').data('name') 
      }
			if (form[i].value == "") {
				Swal.fire("El campo " + field + " es requerido")
				return false
			}
    }
    
    data.id = id
    data.accion = 'update'
    axios.post('php/actualizarart.php', data)
    .then(res=>{
      console.log(res)
      if(res.data.result) {
        Swal.fire('Felicidades',res.data.msg, 'success')
      } else {
        Swal.fire('Lo sentimos',res.data.msg, 'warning')
      }
    }).catch(err=>{
        Swal.fire('Estimado usuario','Nuestras mas sinceras disculpas pero ha ocurrido un error en el proceso.', 'error')
    })
  }

  function borrarProducto(id) {
    var data = {}
    data.accion = 'delete'
    data.id = id
    axios.post('php/actualizarart.php', data).then(res=>{
      if(res.data.result) {
        Swal.fire('Felicidades',res.data.msg, 'success')
        $('#registrodeProducto').modal('close')
      } else {
        Swal.fire('Lo sentimos',res.data.msg, 'warning')
      }
    }).catch(err=>{
        Swal.fire('Estimado usuario','Nuestras mas sinceras disculpas pero ha ocurrido un error en el proceso.', 'error')
    })
  }
</script>
</body>
</html>