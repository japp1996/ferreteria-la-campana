function sololetras(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toString();
    //Se define todo el abecedario que se quiere que se muestre.
    letras = " áéíóúâêîôûabcdefghijklmnñopqrstuvwxyzÁÉÍÓÚÂÊÎÔÛABCDEFGHIJKLMNÑOPQRSTUVWXYZ";
    //Es la validación del KeyCodes, que teclas recibe el campo de texto.
    especiales = [8, 37, 39, 46, 6]; 
    tecla_especial = false
    for(var i in especiales) {
        if(key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }
    if(letras.indexOf(tecla) == -1 && !tecla_especial){
        //alert('Tecla no aceptada');
        return false;
    }
}
