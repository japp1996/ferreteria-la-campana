
function eliminar()
{
	var vareliminar=confirm("¿Desea realmente eliminar este registro?");

	if (eliminar) {

	window.location.href="../php/actualizaruser.php";	
				}
	else{
	window.location="../actualizaruser.php";
		}
}
