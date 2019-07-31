$(document).ready(function() {
    $("#boton").click(function() {
        var tbody= $('#listado tbody');
        var pedido= "";
        var cantidad= "";
        var withoutQ = false

        tbody.children("tr").each(function() {
            var tr= $(this);
            if (tr.find(".codigo").is(":checked")) {
                if (tr.find(".cantidad").val() == "" || parseInt(tr.find(".cantidad").val()) <= 0) {
                    var product_name = tr.find("#product_name").html()
                    Swal.fire("Escoga una cantidad valida de " + product_name + " que desea recepcionar")
                    withoutQ = true
                    return
                }
                withoutQ = false
                pedido+= tr.find(".codigo").val() + "+";
                cantidad+= tr.find(".cantidad").val() + "+";
            }
        });

        if (withoutQ) {
            return
        }
        var datos= {"pedido" : pedido, "cantidades" : cantidad};

        $.ajax({
            type : "POST",
            url : "php/procesorecepcionmercancia.php?id=<?php echo $_REQUEST['id']; ?>",
            dataType : "json",
            data : datos,
            success : function (query) {
                if (query.exito== 1) {
                    Swal.fire("Recepcion Realizada Satisfactoriamente");
                    /*var ventana = window.open("reportes/notapedidos.php?nope="+query.data.id, "Pedido", "width=1000, height=1000")
                    var interval = setInterval(function(){
                        if(ventana.closed !== false) {
                            //Si la ventana ha sido cerrada, limpiamos el contador
                            window.clearInterval(interval)
                            setTimeout(() => {
                                window.location="index.php";
                            }, 1000);
                        }
                    },1000)*/    
                }
                
                if (query.error== 1) {
                    Swal.fire("No Ha Seleccionado Ningun Producto");
                }
            }, 
            error : function (xhr, status) {
                Swal.fire("hubo un error");
            }
        });
    });
});