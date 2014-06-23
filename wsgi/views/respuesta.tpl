<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>BuscaTrabajo-Informacion</title>
	<link rel="Shortcut Icon" type="image/x-icon" href="/static/imagenes/periodico.jpg" /> 
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
		<iframe src="datos.tpl" id="respuesta" marginwidth="0" marginheight="0" frameborder="0" border="0">
		</iframe>
	</section>
		<p></p>

		<form action="index.tpl"> 
			<input type=submit id="botonvolverabuscar" value="Buscar otras ofertas">
		</form>
</body>	
