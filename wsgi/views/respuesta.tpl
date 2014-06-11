<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC '-// W3C // DTD XHTML 1.0 Strict //EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'>
<html xmlns="http://www.w3.org/1999/xhtml"xml:lang="es">
	<head>
		<title> BuscaTrabajo </title>
	</head>
	<body>
		<h2> Ofertas buscadas: </h2>
		%count = 0 
		%for oferta in ofertas:
		<table border="2" width="40%" cellpadding="10" cellspacing="0" align="center" >
			<tr>
				<td colspan="2"><center><h3>{{ titulo [count] }}</h3></center></td>
			</tr>
			<tr>
				<td><h4>Ciudad: </h4></td>
				<td>{{ciudad [count] }}</td>
			</tr>
			<tr>
				<td><h4>Nombre de la empresa: </h4></td>
				<td>{{ nombreempresa [count] }}</td>
			</tr>
			<tr>
				<td><h4>Experiencia minima requerida: </h4></td>
				<td>{{experienciaminima[count]}}</td>
			</tr>
			<tr>
				<td><h4>Tipo de jornada: </h4></td>
				<td>{{jornada[count]}}</td>
			</tr>
			<tr>
				<td><h4>Estudios requeridos: </h4></td>
				<td>{{estudios[count]}}</td>
			</tr>
			<tr>
				<td><h4>Requisitos minimos: </h4></td>
				<td>{{requisitosmin[count]}}</td>
			</tr>
				<td><h4>LINK: </h4></td>
				<td><A HREF="{{link[count]}}">{{link[count]}}</A></td>
			</tr>
			
		</table>
		<p></p>
		%count = count+1
		%end
		<form action="../">
			<input type=submit width="10%" value="Volver a buscar una nueva oferta">
		</form>
	</body>	
