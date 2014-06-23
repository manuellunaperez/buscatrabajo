<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>BuscaTrabajo-Informacion</title>
	<link rel="Shortcut Icon" type="image/x-icon" href="/static/css/imagenes/periodico.jpg" /> 
	<link href="/static/css/respuesta.css" rel="stylesheet" type="text/css">
	<link href='http://fonts.googleapis.com/css?family=Indie+Flower' rel='stylesheet' >
	<link href='http://fonts.googleapis.com/css?family=Francois+One' rel='stylesheet' >
  </head>
<body>	%encontradas = 0
		%for oferta in ofertas:
				%encontradas = encontradas+1
		%end	
		<div class="ofertas">Ofertas encontradas: encontradas</div>
		
		%count = 0 
		%for oferta in ofertas:
		<div id="textos">
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
			<h3><A HREF="{{link[count]}}">{{link[count]}}</A><h3>
		%count = count+1
		%end
		</div>
</body>
</html>
