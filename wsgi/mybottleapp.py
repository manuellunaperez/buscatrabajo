# -*- coding: utf-8 -*-
import os
from bottle import route, run, template, get, post, request, response, redirect, default_app, static_file, TEMPLATE_PATH, error
import bottle
import requests
import json
import httplib, urllib

    
@get('/')
def inicio():
    return template('index.tpl')

@get('/index.tpl')
def inicio():
    return template('index.tpl')


@get('/contacto.tpl')
def inicio():
    return template('contacto.tpl')

@get('/informacion.tpl')
def inicio():
    return template('informacion.tpl')
 
@post('/contacto.php')
def inicio():
    return template('contacto.php')


@post('/busqueda')
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

	clave = 'ZDAyMjUyODYwZjQwNDQzYjhhZmI2OGFkMjYxMzdmM2M6RlRtbGQzUTRxMTY3djNlOFpZMnlaYXIvR1JsOEpnbTFRS2k0SVM3dk5mVFFrN0U2WVA='
	headers = {"Authorization" : "Basic %s" % clave}
	conn = httplib.HTTPConnection("api.infojobs.net")
	conn.request("GET", "/api/1/offer?%s%s%s%s" % (provincia,categoria,contratos,formacion), headers=headers)
	response = conn.getresponse()
	data = response.read()
	jsondata = json.loads(data)
	conn.close()
	listatitulos = []
	listaciudad = []
	listanombreempresa = []
	listaexperiencia = []
	listajornada = []
	listaestudios = []
	listarequisitosmin = []
	listalink = []
	ofertas = jsondata["offers"]	
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
	
	return template('respuesta.tpl')
@get('/datos.tpl')
def inicio():
    return template('datos.tpl', {'ofertas':ofertas,'titulo':listatitulos,'ciudad':listaciudad,'nombreempresa':listanombreempresa,'experienciaminima':listaexperiencia,'jornada':listajornada,'estudios':listaestudios,'requisitosmin':listarequisitosmin,'link':listalink})
	

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
