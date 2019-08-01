$(document).ready(function() {
    $("#boton").click(function() {
        var tbody= $('#listado_pedido tbody');
        var pedido= "";
        var cantidad= "";
        var withoutQ = false
        tbody.children("tr").each(function(key,fila) {
            var tr= $(this);
            var product_name = tr.find("#product_name").html()
            if (tr.find(".codigo").is(":checked")) {
                if (tr.find(".cantidad").val() == "" || parseInt(tr.find(".cantidad").val()) <= 0) {
                    Swal.fire("Escoga una cantidad de " + product_name + " que desea apartar")
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

        axios.post("php/procesopedido.php", datos)
        .then(query => {
            if (query.data.result) {
                Swal.fire("EL Pedido Fue creado Satisfactoriamente");
                var ventana = window.open("reportes/notapedidos.php?nope="+query.data.id, "Pedido", "width=1000, height=1000")
                var interval = setInterval(function(){
                    if(ventana.closed !== false) {
                        //Si la ventana ha sido cerrada, limpiamos el contador
                        window.clearInterval(interval)
                        setTimeout(() => {
                            window.location="consultarpedidos.php";
                        }, 1000);
                    }
                },1000)
            } else {
                Swal.fire(query.data.msg);
            }
        }).catch(erro => {
            Swal.fire("hubo un error");
        })
    });
});

function addQuanty(id, cant) {
    var suma = $('#'+id).val()
    if (suma >= cant) {
        Swal.fire("No puede solicitar mas de este producto.")
        $('#'+id).val(cant)
        return 
    }
    $('#'+id).val(parseInt(suma)+1)
}

function restQuanty(id) {
    var resta = $('#'+id).val()
    if (resta <= 1) {
        $('#'+id).val(1)
        return
    }
    $('#'+id).val(parseInt(resta)-1)
}