<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
						<a href="Acerca.jsp">Acerca del proyecto</a>
					</nav>

			</hgroup>
		</header>
		
	<main>
		<section class="Contenedor">
	
			<hgroup id="Informacion">
			<h1 id="ComoUsar">¿Cómo usar la App?</h1>
		
				<ul id="Lista">
					<li><p>Ingrese la cantidad de materias que cursó o está cursando en el cuatrimestre</p></li>
					<li><p>Ingrese la cantidad de créditos correspondiente a la materia</p></li>
					<li><p>Ingrese la nota literal que obtuvo u obtendrá en la materia</p></li>
				</ul>
			</hgroup>
			
			<form action="" method="post">
						<fieldset>
							<article id="Materias">
								<hgroup id="CantidadMaterias">
									<label for="NoMaterias">Cantidad de materias:</label>
									<input type="Number" name="CMaterias" id="NoMaterias" required/>
								</hgroup>
						
								<hgroup id="Siguiente"> 
									<label for="Check">Siguiente</label>
									<input type="checkbox" id="Check">
								</hgroup>
									<p id="Error"></p>
							</article>
						</fieldset>
					</form>
				</section>
			</main>
		</body>
	</html>