# -*- coding: utf-8 -*-
import os
from bottle import route, run, template, get, post, request, response, redirect, default_app, static_file, TEMPLATE_PATH, error
import bottle
import requests
import json
import httplib, urllib
"""
import httplib, base64
contractType=indefinido&province=madrid&category=informatica-telecomunicaciones 
params= urllib.urlencode({'province':' madrid' ,'contractType':' indefinido' ,'category':' informatica-telecomunicaciones ' })

params = urllib.urlencode({'@contractType': 'indefinido', '@province': 'madrid', '@category': 'informatica-telecomunicaciones'})
#client_id = "d02252860f40443b8afb68ad26137f3c"
#client_secret = ":FTmld3Q4q167v3e8ZY2yZar/GRl8Jgm1QKi4IS7vNfTQk7E6YP"
client = "ZDAyMjUyODYwZjQwNDQzYjhhZmI2OGFkMjYxMzdmM2M6RlRtbGQzUTRxMTY3djNlOFpZMnlaYXIvR1JsOEpnbTFRS2k0SVM3dk5mVFFrN0U2WVA="
#auth = base64.encodestring("%s:%s" % (client_id,client_secret))
headers = {"Authorization" : "Basic %s" % client}
conn = httplib.HTTPConnection("api.infojobs.net")
conn.request("GET", "/api/1/offer?contractType=indefinido&province=madrid&category=informatica-telecomunicaciones", headers=headers)
response = conn.getresponse()
data = response.read()
conn.close()
"""

    
@get('/')
def inicio():
    return template('index.tpl')



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

	client = "ZDAyMjUyODYwZjQwNDQzYjhhZmI2OGFkMjYxMzdmM2M6RlRtbGQzUTRxMTY3djNlOFpZMnlaYXIvR1JsOEpnbTFRS2k0SVM3dk5mVFFrN0U2WVA="
	headers = {"Authorization" : "Basic %s" % client}
	conn = httplib.HTTPConnection("api.infojobs.net")
	conn.request("GET", "/api/1/offer?%s%s%s%s%s" % (oferta,provincia,categoria,contratos,formacion), headers=headers)
	response = conn.getresponse()
	archivo = response.read()
	conn.close()


	"""
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
	archivo = json.loads(f.text)
	
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
	
	"""
	
	return template('respuesta2.tpl', {'archivo':archivo})#, {'ofertas':ofertas,'titulo':listatitulos,'ciudad':listaciudad,'nombreempresa':listanombreempresa,'experienciaminima':listaexperiencia,'jornada':listajornada,'estudios':listaestudios,'requisitosmin':listarequisitosmin,'link':listalink})
	

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
