# -*- coding: utf-8 -*-
import os
from bottle import route, run, template, get, post, request, response, redirect, default_app, static_file, TEMPLATE_PATH, error

""""import urllib2, base64
request = urllib2.Request("api.infojobs.net")
base64string = base64.encodestring('%s:%s' % ('d7b9252346754165aac4a7e0eb6e3f15', '/h6n6V0pi6WrmF+yxg/4Gld6O4jW7+9Oldi92KHlJZGJ2Yxngg'))
request.add_header("Authorization", "Basic %s" % base64string)   
result = urllib2.urlopen(request)


@get('/')
def index():
	    return template('login.tpl')
  """ 
  
  

@route('/')
def inicio():
    return template('index.tpl')



@route('/busqueda')
def busqueda():
	provincia = bottle.request.forms.get("provincia")
	if len(provincia) > 1:
		provincia = "province=%s" % provincia
	else:
		provincia = ""
	categoria = bottle.request.forms.get("categoria")
	if len(categoria) > 1:
		categoria = "&subcategory=%s" % categoria
	else:
		categoria = ""
	contratos = bottle.request.forms.get("contratos")
	if len(contratos) > 1:
		contratos = "&contractType=%s" % contratos
	else:
		contratos = ""
	formacion = bottle.request.forms.get("formacion")
	if len(formacion) > 1:
		formacion = "&study=%s" % formacion
	else:
		formacion = ""
	oferta = "https://api.infojobs.net/api/1/offer?"
	url = "%s%s%s%s%s" % (oferta,provincia,categoria,contratos,formacion)
	listatitulos = []
	listaciudad = []
	listanombreempresa = []
	listaexperiencia = []
	listajornada = []
	listaestudios = []
	listarequisitosmin = []
	listalink = []
	f = requests.get(url)
	archivo = json.load(f)
	ofertas = archivo["offers"]	
	for oferta in ofertas:
		titulo = oferta["title"]
		ciudad = oferta["city"]
		nombreempresa = oferta["author"]["name"]
		experienciaminima = oferta["experienceMin"]["value"]
		jornada = oferta["workDay"]["value"]
		estudios = oferta["study"]["value"]
		requisitosmin = oferta["requirementMin"]
		link = oferta["link"]
		listatitulos.append(titulo)
		listaciudad.append(ciudad)
		listanombreempresa.append(nombreempresa)
		listaexperiencia.append(experienciaminima)
		listajornada.append(jornada)
		listaestudios.append(estudios)
		listarequisitosmin.append(requisitosmin)
		listalink.append(link)
	
		
	
	return template('respuesta.tpl', {'ofertas':ofertas,'titulo':listatitulos,'ciudad':listaciudad,'nombreempresa':listanombreempresa,'experienciaminima':listaexperiencia,'jornada':listajornada,'estudios':listaestudios,'requisitosmin':listarequisitosmin,'link':listalink})


# This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
ON_OPENSHIFT = False
if os.environ.has_key('OPENSHIFT_REPO_DIR'):
    ON_OPENSHIFT = True

if ON_OPENSHIFT:
    TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_HOMEDIR'], 
                                      'app-root/repo/wsgi/views/'))
    
    application=default_app()
else:
    run(host='localhost', port=8080)
