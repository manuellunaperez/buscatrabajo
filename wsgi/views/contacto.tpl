<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>BuscaTrabajo-Contacto</title>
	<link rel="Shortcut Icon" type="image/x-icon" href="/static/css/imagenes/periodico.jpg" /> 
	<link href="/static/css/index.css" rel="stylesheet" type="text/css">
	<link href='http://fonts.googleapis.com/css?family=Indie+Flower' rel='stylesheet' >
	<link href='http://fonts.googleapis.com/css?family=Francois+One' rel='stylesheet' >
  </head>
  <body>
  	<div id='contenido'>
  	<header>
		<h1>BUSCATRABAJO</h1> 
		<nav>
			<ul>
				<li><a href='index.tpl'>Inicio</a></li>
				<li><a href='informacion.tpl'>Información</a></li>
				<li><a href='contacto.tpl'>Contacto</a></li>
			</ul>
		</nav>
	</header>
	<section>
  		<div id="formulario">
			<div class="titulo">Contáctanos</div>
			<form action="contacto.php" method="post">
				<label for="nombre">¿Cuál es tu nombre?</label>
				<input type="text" id="nombre"  placeholder='Escribe tu nombre y apellidos' required size="40">
				<label for="email">Escribe tu correo:</label></label>
				<input type="email" id="email"  placeholder='Escribe tu e-mail' required size="30">
				<label for="edad">¿Cuántos años tienes?</label>
				<input type="number" id="edad"  min="0" max="100" placeholder='18' size="10">
				<label for="fecha">¿Qué día es hoy?</label>
				<input type="date" id="fecha"   size="15">
				<label for="comentario">Escríbenos tu pregunta o comentario:</label>
				<textarea name="comentario" rows="6" cols="60" maxlength="372" required></textarea></br>
				<input  type="submit" value="Enviar" id="botonenviar"/>
				<input type="Reset" value="Borrar datos" id="botonreset">  
			</form>
		</div>
	</section>
  </body>
</html>

