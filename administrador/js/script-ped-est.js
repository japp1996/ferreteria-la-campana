$(document).ready(function() {

})

function changePurchase(id, estatus) {
    var datos = {
        "estadoped" : estatus, 
        "noped" : id
    }

    axios.post("php/actualizarestatus.php", datos)
    .then(query => {
        
    }).catch(erro => {
        Swal.fire("hubo un error");
    })    
}