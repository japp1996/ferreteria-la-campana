$(document).ready(function() {
    $("#boton").click(function() {
        var tbody= $('#listado tbody');
        var pedido= "";
        var cantidad= "";

        tbody.children("tr").each(function() {
            var tr= $(this);
            if (tr.find(".codigo").is(":checked")) {
                pedido+= tr.find(".codigo").val() + "+";
                cantidad+= tr.find(".cantidad").val() + "+";
            }
        });

        var datos= {"pedido" : pedido, "cantidades" : cantidad};

        $.ajax({
                    type : "POST",
                    url : "php/procesorecepcionmercancia.php?id=<?php echo $_REQUEST['id']; ?>",
                    dataType : "json",
                    data : datos,
                    success : function (query) {
                        if (query.exito== 1) {
                            alert("Recepcion Realizada Satisfactoriamente");
                            window.location="2-bienvenidauser.php";
                            
                        }
                        if (query.error== 1) {
                            alert("No Ha Seleccionado Ningun Producto");
                        }
                    }, 
                    error : function (xhr, status) {
                        alert ("hubo un error");
                    }
        });
    });
});