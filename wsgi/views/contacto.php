<?php 
if(isset($_POST['nombre']) && !empty($_POST['nombre']) &&
isset($_POST['email']) && !empty($_POST['email']) &&
isset($_POST['edad']) && !empty($_POST['edad']) &&
isset($_POST['comentario']) && !empty($_POST['comentario']))
{
	$nombre = $_POST['nombre']; 	
	$correo_electronico= $_POST['email']; 
	$comentario= $_POST['comentario']; 
	$para = "manue_lp@hotmail.com"; 
	$asunto = "BUSCATRABAJO-COMENTARIO";
	$desde = "From:". "Buscatrabajo" ;
	mail($para, $asunto, $comentario,$desde);
	echo 'Comentario Enviado'; 
}else{
	echo "Problemas al enviar";
} 
?> 
