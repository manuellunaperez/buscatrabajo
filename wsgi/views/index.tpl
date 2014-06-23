<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Busca trabajo utlizando la API de Infojobs.">
	<meta name="keywords" content="buscatrabajo, infojobs, trabajo">
	<meta name="author" content="Manuel Luna Pérez">
    <title> BuscaTrabajo-Inicio</title>
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
		<div id="textos">
    <form method="post" action="/busqueda">
				<div class="titulo">¿De dónde eres?</div>Selecciona la província en la vives para encontrar trabajo.</br>
				<select name="provincia" class="estiloinput">
					<option value="a-coruna">A Coruña</option>
					<option value="alava-araba">Álava</option>
					<option value="albacete">Albacete</option>
					<option value="alicante-alacant">Alicante</option>
					<option value="almeria">Almería</option>
					<option value="asturias">Asturias</option>
					<option value="avila">Ávila</option>
					<option value="badajoz">Badajoz</option>
					<option value="barcelona">Barcelona</option>
					<option value="burgos">Burgos</option>
					<option value="caceres">Cáceres</option>
					<option value="cadiz">Cádiz</option>
					<option value="cantabria">Cantabria</option>
					<option value="castellon-castello">Castellón</option>
					<option value="ceuta">Ceuta</option>
					<option value="ciudad-real">Ciudad Real</option>
					<option value="cordoba">Córdoba</option>
					<option value="cuenca">Cuenca</option>
					<option value="girona">Girona</option>
					<option value="granada">Granada</option>
					<option value="guadalajara">Guadalajara</option>
					<option value="guipuzcoa-gipuzkoa">Guipúzcua</option>
					<option value="huelva">Huelva</option>
					<option value="huesca">Huesca</option>
					<option value="illes-balears">Islas Baleares</option>
					<option value="jaen">Jaén</option>
					<option value="la-rioja">La Rioja</option>
					<option value="las-palmas">Las Palmas</option>
					<option value="leon">León</option>
					<option value="lleida">Lleida</option>
					<option value="lugo">Lugo</option>
					<option value="madrid">Madrid</option>
					<option value="malaga">Málaga</option>
					<option value="melilla">Melilla</option>
					<option value="murcia">Murcia</option>
					<option value="navarra">Navarra</option>
					<option value="ourense">Ourense</option>
					<option value="palencia">Palencia</option>
					<option value="pontevedra">Pontevedra</option>
					<option value="salamanca">Salamanca</option>
					<option value="santa-cruz-de-tenerife">Santa Cruz de Tenerife</option>
					<option value="segovia">Segovia</option>
					<option value="sevilla">Sevilla</option>
					<option value="soria">Soria</option>
					<option value="tarragona">Tarragaona</option>
					<option value="teruel">Teruel</option>
					<option value="toledo">Toledo</option>
					<option value="valencia-valencia">Valencia</option>
					<option value="valladolid">Valladolid</option>
					<option value="vizcaya-bizkaia">Vizcaya</option>
					<option value="zamora">Zamora</option>
					<option value="zaragoza">Zaragoza</option>
				</select></br>
				<br><div class="titulo">¿A qué te dedicas?</div>Selecciona la categoría que más se adecúe a tus prestaciones.</br>		
				<select name="categoria" class="estiloinput">
					<option value="">Todas</option>
					<option value="administraciones-europeas">Administraciones europeas</option>
					<option value="administracion">Administración</option>
					<option value="administracion-autonomica">Administración autonómica</option>
					<option value="administracion-bases-datos">Administración de bases de datos</option>
					<option value="administracion-estado">Administración del Estado</option>
					<option value="administracion-inmobiliaria">Administración inmobiliaria</option>
					<option value="administracion-local">Administración local</option>
					<option value="aeronautico">Aeronáutico</option>
					<option value="agente-comercial">Agente comercial</option>
					<option value="agricultura-jardineria">Agricultura y jardinería</option>
					<option value="agronomo-montes">Agrónomo y montes</option>
					<option value="almacen">Almacén</option>
					<option value="analisis">Análisis</option>
					<option value="arquitectura">Arquitectura</option>
					<option value="arquitectura-proyeccion">Arquitectura y proyección</option>
					<option value="artes-interpretativas">Artes interpretativas</option>
					<option value="artes-plasticas">Artes plásticas</option>
					<option value="artesania">Artesanía</option>
					<option value="atencion-a-cliente">Atención al cliente</option>
					<option value="auditoria">Auditoría</option>
					<option value="automocion">Automoción</option>
					<option value="banca-empresarial">Banca empresarial</option>
					<option value="banca-privada">Banca privada</option>
					<option value="bolsa-valores-inversion">Bolsa, valores e inversión</option>
					<option value="calidad">Calidad</option>
					<option value="carpinteria">Carpintería</option>
					<option value="certificacion-calidad">Certificación de calidad</option>
					<option value="comercial">Comercial</option>
					<option value="comercio-exterior">Comercio exterior</option>
					<option value="compras-aprovisionamiento">Compras y aprovisionamiento</option>
					<option value="comunicacion-corporativa">Comunicación corporativa</option>
					<option value="confeccion">Confección</option>
					<option value="consultoria">Consultoría</option>
					<option value="consumo-alimentacion">Consumo y alimentación</option>
					<option value="creacion-audiovisual">Creación audiovisual</option>
					<option value="cuerpos-seguridad">Cuerpos de seguridad</option>
					<option value="derecho-civil-penal-constitucional">Derecho civil, penal y constitucional</option>
					<option value="derecho-internacional">Derecho internacional</option>
					<option value="derecho-procesal">Derecho procesal</option>
					<option value="derecho-empresa">Derecho y empresa</option>
					<option value="desarrollo-marca-producto">Desarrollo de marca y producto</option>
					<option value="direccion-gerencia">Dirección y gerencia</option>
					<option value="direccion-gestion-obras">Dirección y gestión de obras</option>
					<option value="diseno-grafico">Diseño gráfico</option>
					<option value="diseno-industrial">Diseño industrial</option>
					<option value="diseno-web">Diseño web</option>
					<option value="distribucion-logistica">Distribución y logística</option>
					<option value="erp-crm-business-intelligence">ERP, CRM, Business Intelligence</option>
					<option value="editorial-imprenta">Editorial e imprenta</option>
					<option value="educacion-especial">Educación especial</option>
					<option value="educacion-social">Educación social</option>
					<option value="electricidad">Electricidad</option>
					<option value="electronica">Electrónica</option>
					<option value="electronica-automatica-industrial">Electrónica y automática industrial</option>
					<option value="empresas-publicas">Empresas públicas</option>
					<option value="energias-renovables">Energias Renovables</option>
					<option value="enfermeria">Enfermería</option>
					<option value="ensenanza">Enseñanza</option>
					<option value="estetica-cosmetica">Estética y cosmética</option>
					<option value="facturacion-cobros-pagos">Facturación, cobros y pagos</option>
					<option value="farmacia">Farmacia</option>
					<option value="finanzas-contabilidad">Finanzas y contabilidad</option>
					<option value="fontaneria">Fontanería</option>
					<option value="formacion">Formación</option>
					<option value="fotografia">Fotografía</option>
					<option value="geologia-geodesia-cartografia">Geología, geodesia y cartografía</option>
					<option value="gestion-centros-educativos">Gestión de centros educativos</option>
					<option value="gestion-calidad">Gestión de la calidad</option>
					<option value="calidad-produccion-gestion-proyectos">Gestión de proyectos</option>
					<option value="gran-cuenta">Gran cuenta</option>
					<option value="hardware-redes-seguridad">Hardware, redes y seguridad</option>
					<option value="helpdesk">Helpdesk</option>
					<option value="hosteleria">Hostelería</option>
					<option value="industrial">Industrial</option>
					<option value="ingenieria-civil-obras-publicas">Ingeniería civil y obras públicas</option>
					<option value="ingenieria-materiales">Ingeniería de materiales</option>
					<option value="interiorismo">Interiorismo</option>
					<option value="investigacion-mercados">Investigación de mercados</option>
					<option value="investigacion-desarrollo">Investigación y desarrollo</option>
					<option value="limpieza">Limpieza</option>
					<option value="mantenimiento">Mantenimiento</option>
					<option value="marketing">Marketing</option>
					<option value="medicina-especializada">Medicina especializada</option>
					<option value="medicina-general">Medicina general</option>
					<option value="medicinas-alternativas">Medicinas alternativas</option>
					<option value="medio-ambiente">Medio ambiente</option>
					<option value="metrologia">Metrología</option>
					<option value="minas">Minas</option>
					<option value="moda-confeccion">Moda y confección</option>
					<option value="naval-oceanico">Naval y oceánico</option>
					<option value="negociacion-contratacion">Negociación y contratación</option>
					<option value="notaria-registros">Notaría y registros</option>
					<option value="oficios-construccion">Oficios de la construcción</option>
					<option value="operaciones">Operaciones</option>
					<option value="operaciones-societarias">Operaciones societarias</option>
					<option value="organizacion-empresa">Organización de la empresa</option>
					<option value="organizacion-industrial">Organización industrial</option>
					<option value="otras-ingenierias">Otras ingenierías</option>
					<option value="otros-oficios">Otros oficios</option>
					<option value="pedagogia">Pedagogía</option>
					<option value="periodismo-edicion">Periodismo y edición</option>
					<option value="prevencion-riesgos">Prevención de riesgos</option>
					<option value="produccion">Producción</option>
					<option value="productos-servicios-bancarios">Productos y servicios bancarios</option>
					<option value="profesiones-sanitarias">Profesiones sanitarias</option>
					<option value="programacion">Programación</option>
					<option value="promocion-ferias">Promoción y ferias</option>
					<option value="psicologia">Psicología</option>
					<option value="publicidad">Publicidad</option>
					<option value="puericultura">Puericultura</option>
					<option value="quimico">Químico</option>
					<option value="rrpp-eventos">RRPP y eventos</option>
					<option value="recepcion">Recepción</option>
					<option value="relaciones-laborales">Relaciones laborales</option>
					<option value="restauracion">Restauración</option>
					<option value="secretariado">Secretariado</option>
					<option value="seguridad-vigilancia">Seguridad y vigilancia</option>
					<option value="seguros">Seguros</option>
					<option value="seleccion-personal">Selección de personal</option>
					<option value="sistemas">Sistemas</option>
					<option value="sistemas-defensa">Sistemas de defensa</option>
					<option value="telecomunicaciones">Telecomunicaciones</option>
					<option value="televenta-marketing-telefonico">Televenta y marketing telefónico</option>
					<option value="traduccion-interpretacion">Traducción e interpretación</option>
					<option value="transporte">Transporte</option>
					<option value="turismo">Turismo</option>
					<option value="tecnicas-audiovisuales">Técnicas audiovisuales</option>
					<option value="venta-detalle">Venta al detalle</option>
				</select></br>
				<br><div class="titulo">¿Durante cuánto tiempo necesitas empleo?</div>Selecciona el tipo de contrato que más te convenga.</br>		
				<select name="contratos" class="estiloinput">
					<option value="">Todos</option>
					<option value="a-tiempo-parcial">A tiempo parcial</option>
					<option value="autonomo">Autónomo</option>
					<option value="de-duracion-determinada">De duración determinada</option>
					<option value="de-relevo">De relevo</option>
					<option value="fijo-discontinuo">Fijo discontinuo</option>
					<option value="formativo">Formativo</option>
					<option value="indefinido">Indefinido</option>
					<option value="otros-contratos">Otros contratos</option>
				</select></br>
				<br><div class="titulo">¿Cuál es tu formación?</div>Indica cuáles son tus estudios.</br>		
				<select name="formacion" class="estiloinput">
					<option value=""></option>
					<option value="otros-titulos-certificaciones-y-carnes">Otros títulos, certificaciones y carnés</option>
					<option value="otros-cursos-y-formacion-no-reglada">Otros cursos y formación no reglada</option>
					<option value="sin-estudios">Sin estudios</option>
					<option value="educacion-secundaria-obligatoria">Educación Secundaria Obligatoria</option>
					<option value="ensenanzas-artisticas-regladas">Enseñanzas artísticas</option>
					<option value="ensenanzas-deportivas-regladas">Enseñanzas deportivas</option>
					<option value="formacion-profesional-grado-medio">Formación Profesional Grado Medio</option>
					<option value="bachillerato">Bachillerato</option>
					<option value="formacion-profesional-grado-superior">Formación Profesional Grado Superior</option>
					<option value="ciclo-formativo-superior">Ciclo Formativo Superior</option>
					<option value="diplomado">Diplomado</option>
					<option value="ingeniero-tecnico">Ingeniero Técnico</option>
					<option value="grado">Grado</option>
					<option value="licenciado">Licenciado</option>
					<option value="ingeniero-superior">Ingeniero Superior</option>
					<option value="postgrado">Postgrado</option>
					<option value="master">Master</option>
					<option value="doctorado">Doctorado</option>
				</select>
				<br>
				</br>
				<input  type="submit" value="Buscar" id="botonSubmit"/></br>
				                    <!-- inicio codigo contador --><div><a href="http://contador-de-visitas.com"><img style="border: 0px solid ; display: inline;" alt="contador de visitas"
        src="http://contador-de-visitas.com/hit.php?id=2040473&counter=19"></a><br /><a href="http://contador-de-visitas.com"></a></div><!-- fin codigo contador -->
                
		</form>
	</div>
  </body>
</html>

