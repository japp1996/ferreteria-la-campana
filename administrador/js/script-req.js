$(document).ready(function() {
    $("#boton").click(function() {
        var proveedor = $('#proveedor_id').val()
        if (proveedor == '') {
            Swal.fire('Atencion', 'No ha seleccionado ningun proveedor', 'warning')
            return false 
        }
        var tbody = $('#listado tbody')
        var pedido = ""
        var cantidad = ""
        var tipomovimiento = ""

        tbody.children("tr").each(function() {
            var tr = $(this)

            if (tr.find(".codigo").is(":checked")) {
                pedido+= tr.find(".codigo").val() + "+"
                if (tr.find(".cantidad").val() != "") {
                    cantidad += tr.find(".cantidad").val() + "+"
                }
                tipomovimiento+= tr.find(".tipomovimiento").val() + "+"
            }
        });

        var datos= {
            "pedido" : pedido, 
            "cantidades" : cantidad, 
            "tipomovimiento": tipomovimiento,
            "id_proveedor": proveedor
        }

        $.ajax({
            type : "POST",
            url : "php/procesorequisicion.php",
            dataType : "json",
            data : datos,
            success : function (query) {
                if (query.exito == 1) {
                    Swal.fire("Felicidades","Requisicion realizada Satisfactoriamente", "success")
                    window.location = "2-bienvenidauser.php"
                }
                if (query.error == 1) {
                    Swal.fire("Atencion","No Ha Seleccionado Ningun Producto", "warning")
                }
                if (query.error == 3) {
                    Swal.fire("Atencion","No Ha Colocado Cantidad", "warning")
                }
            }, error : function (xhr, status) {
                Swal.fire("Estimado usuario", "Hubo un error", "error")
            }
        })
    })
})