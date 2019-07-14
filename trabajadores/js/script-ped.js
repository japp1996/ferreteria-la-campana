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
            url : "php/procesopedido.php",
            dataType : "json",
            data : datos,
            success : function (query) {
                if (query.exito== 1) {
                 alert("EL Pedido Fue creado Satisfactoriamente");
                 window.location="consultarpedidos.php";
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