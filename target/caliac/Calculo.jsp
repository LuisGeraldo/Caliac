<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.lang.Math.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="Imagen/Icon.png" />
			<script src="webjars/jquery/2.1.4/jquery.min.js"></script>
			<script src="JS/JQuer.js"></script>
			<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<link rel="stylesheet" href="css/Estilos-bases.css">
	<title>Calcular indice</title>
</head>

<body>
	<header>
		<hgroup class="Contenedor">
			<a href="index.jsp" id="principal"><h1 id="C">CAL</h1><h1 id="Principal">-iac</h1></a>
			<label for="check"><img src="Imagen/Excla.png" alt="Imagen de menu" id="ImgMenu"/></label>
			<input type="Checkbox" id="check">	
				<nav>
					<p id="IMenu">Menú</p>
						<label for="Cerrar"><img src="Imagen/Delete.png" alt="Imagen de menu" id="x"/></label>
						<input type="checkbox" id="Cerrar"/>
					<a href="index.jsp">Inicio</a>
					<a href="Acerca.jsp">Acerca del proyecto</a>
				</nav>
		</hgroup>
	</header>
	
	<main>
		<section class="Contenedor">
			<hgroup id="Informacion">
				<h1 id="ComoUsar">¿Que necesito saber?</h1>
		
					<ul id="Lista">
						<li><p>Cuántos créditos tiene la materia</p></li>
						<li><p>Cual fue o será la nota obtenida</p></li>
						<li><p>La matemática pre-universitaria, inglés y el deporte no influyen en el cálculo del índice</p></li>
						<li><p>Complete los datos correspondiente, presione calcular y listo!!</p></li>
					</ul>
			</hgroup>
		
		
		<form action="" method="post">
			<fieldset>	
				<article id="Calculo">
					<p>Ingrese los siguientes datos:</p>
						<table>
							<tr>
								<td><p>Materia</p></td>
								<td><p>Créditos</p></td>
								<td><p>Calificación</p></td>
							</tr>
<% 
		String Valores = request.getParameter("CMaterias");
		int Materias = 0;
		
		if(Valores.equals("")){
			
		}else{
			Materias = Integer.parseInt(Valores);
		}
		
		int Credito, Calificacion;
		
		if(Materias > 0 && Materias < 12){
				
			for(int i=1; i<=Materias; i++){
				
					int [] Array = new int[Materias];
					
    					out.print("<tr>");	
						out.print("<td><h2>No. "+ i+"</h2>");
						out.print("<td><input type='number' name='Credito"+i+"'"+" id='NoCredito"+i+"'"+" required />");	
						out.print("<p id='Error'> </p>");
						out.print("<td><select name='Calificacion"+i+"'"+">"
						
						+ "<option value='4'>A</option>"
						+ "<option value='3'>B</option>"
						+ "<option value='2'>C</option>"
						+ "<option value='1'>D</option>"
						+ "<option value='0'>F</option>"
						+ "</select>");
			}
			
		}else{ %>
			<script type="text/javascript">
			swal("Oops!", "Numero de materias incorrecto!", "error");
			</script>			
<% 	
		}
%>
							</tr>
					</table>
		
		<input type="submit" name="Calcular" value="Calcular" id="calcular"/>
		
<% 

	if(request.getParameter("Calcular") != null){
		
			double [] Punto = new double[20];
			double [] Creditos = new double[20];
			double SumaPunto = 0;
			double SumaCredito = 0;
			double Puntos = 0;
			double Indice = 0;
		
	for(int i=1; i<=Materias; i++){
				
			String Complemento = Integer.toString(i);
			
			Credito = 0;
			Calificacion = 0;
			
			Credito = Integer.parseInt(request.getParameter("Credito"+Complemento));
			Calificacion = Integer.parseInt(request.getParameter("Calificacion"+Complemento));
				
			Puntos = (Credito * Calificacion);
			
			Punto[i] = Puntos;
			SumaPunto += Punto[i];
			
			Creditos[i] = Credito;
			SumaCredito += Creditos[i];
			
			Indice = (SumaPunto/SumaCredito);
		}
		
	if(SumaCredito > 27){
		%>
		<script type="text/javascript">
			swal("Oops!", "La cantidad de créditos excede el maximo!", "error");
		</script>	
		<%
		}else{
			double IndiceRed = Math.round(Indice*Math.pow(10,2))/Math.pow(10,2);
			%>
			<script type="text/javascript">
			swal("Listo!", "Tu indice es: <%= IndiceRed%>", "success");
			</script>		
		<% 
		
		}
	} 
%>
						</article>
					</fieldset>
				</form>
			</section>
		</main>
	</body>
</html>