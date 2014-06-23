<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>BuscaTrabajo-Informacion</title>
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
		<div id="respuesta">
			%count = 0 
			%for oferta in ofertas:	
					%count = count+1
			%end
		<div class="ofertas">Ofertas encontradas: {{ count }}</div>
		
		%count = 0 
		%contador = 1
		%for oferta in ofertas:
			<h2>Oferta número: {{contador}}</h2>
			<h1>{{ titulo [count] }}</h1>
			<h2> Ciudad:</h2>
			{{ciudad[count] }}
			<h2>Nombre de la empresa:</h2>
			{{ nombreempresa [count] }}
			<h2>Experiencia mínima requerida:</h2>
			{{experienciaminima[count]}}
			<h2>Tipo de jornada:</h2>
			{{jornada[count]}}
			<h2>Estudios requeridos:</h2>
			{{estudios[count]}
			<h2>Requisitos minimos: </h2>
			{{requisitosmin[count]}}
			<h2>¿Estás interesado en esta oferta?<h2>
			<h3><A HREF="{{link[count]}}">Vistia el siguiente enlace.</A><h3>
			<hr style="color: #FFF;" />
			%count = count+1
			%contador = contador+1
		%end
		</div>
	</section>
		<form action="index.tpl"> 
			<input type=submit id="botonvolverabuscar" value="Buscar otras ofertas">
		</form>
</body>	
