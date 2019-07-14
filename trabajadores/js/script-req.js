$(document).ready(function() {
    $("#boton").click(function() {
        var tbody= $('#listado tbody');
        var pedido= "";
        var cantidad= "";
        var tipomovimiento="";

        tbody.children("tr").each(function() {
            var tr= $(this);

            if (tr.find(".codigo").is(":checked")) {
                pedido+= tr.find(".codigo").val() + "+";
                cantidad+= tr.find(".cantidad").val() + "+";
                tipomovimiento+= tr.find(".tipomovimiento").val() + "+";
            }
        });

        var datos= {"pedido" : pedido, "cantidades" : cantidad, "tipomovimiento":tipomovimiento};

        $.ajax({
            type : "POST",
            url : "php/procesorequisicion.php",
            dataType : "json",
            data : datos,
            success : function (query) {
                if (query.exito== 1) {
                    alert("Requisicion realizada Satisfactoriamente");
                }
                if (query.error== 1) {
                    alert("No Ha Seleccionado Ningun Producto");
                }
            }, 
            error : function (xhr, status) {
                alert("Hubo un error");
            }
        });
    });
});