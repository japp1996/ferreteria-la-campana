jQuery(document).ready(function(){
	$(".accordion-titulo").click(function(){
		var contenido=$(this).next(".accordion-content");
		if (contenido.css("display")=="none") {
			contenido.slideDown(250);
			$(this).addClass("open");
		} else {
			contenido.slideUp(250);
			$(this).removeClass("open");
		}
	});
});
