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
        var withoutQ = false
        tbody.children("tr").each(function() {
            var tr = $(this)
            var product_name = tr.find("#product_name").html()
            if (tr.find(".codigo").is(":checked")) {
                if (tr.find(".cantidad").val() == "") {
                    Swal.fire("Escoga una cantidad de " + product_name + " que desea solicitar al proveedor")
                    withoutQ = true
                    return
                } else if (parseInt(tr.find(".cantidad").val()) <= 0) {
                    Swal.fire("La cantidad del producto " + product_name + " es invalida")
                    withoutQ = true
                    return
                }
                withoutQ = false
                pedido+= tr.find(".codigo").val() + "+"
                cantidad += tr.find(".cantidad").val() + "+"
                tipomovimiento+= tr.find(".tipomovimiento").val() + "+"
            }
        });

        if (withoutQ) {
            return
        }

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
                }

                switch (query.error) {
                    case 1:
                        Swal.fire("Atencion","No Ha Seleccionado Ningun Producto", "warning")                        
                        break;
                    case 3:
                        Swal.fire("Atencion","No Ha Colocado Cantidad", "warning")
                        break;
                    case 4:
                        Swal.fire("Atencion","No Ha Colocado Cantidad", "warning")
                        break;                    
                    default:
                        break;
                }
            }, error : function (xhr, status) {
                Swal.fire("Estimado usuario", "Hubo un error", "error")
            }
        })
    })
})