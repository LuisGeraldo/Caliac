	/*
	 * JQuery app caliac
	 * 
	 * */

$(document).ready(function(){
	var Siguiente = $('#Check');
	var NoMaterias = $('#NoMaterias');
	var Menu = $('#check');
	var Cerrar = $('#Cerrar');
	
	for(var i=1; i > 10; i++){
		var Complemento = parseToString(i);
		var NoCreditos = $('#NoCredito'+Complemento);
	}
	
	
	/*
	 * Menu de opciones
	 * 
	 * */
	
	Menu.click(function(){ $('nav').css({ 'display': 'block'}); $('#ImgMenu').css({'display': 'none'}); });
	
	Cerrar.click(function(){ $('nav').css({'display': 'none'}); $('#ImgMenu').css({'display': 'block'}); });
		
	/*
	 * Validacion de las materias
	 * 
	 * */
	
	Siguiente.click(function(){ 
	var Validacion = parseInt(NoMaterias.val());

	if(NoMaterias.val() > 0 && NoMaterias.val() < 12 && (NoMaterias.val()-Validacion) == 0){ 
			var Materia = parseInt(NoMaterias.val());	
			$(window.location).attr('href', 'Calculo.jsp?CMaterias='+ Materia); 

	}else{ 
		$('#Error').text("Numero de materias incorrecto");
		swal("Oops!", "Numero de materias incorrecto!", "error");
	
	}});
	
	
	/*
	 * Validar cantidad credito
	 * 
	 * */
		
});


