#!/usr/bin/env python3
import sys
import subprocess

#Vamos a pasar el fichero de texto(El que tiene
#las dirrecciones de aquellos archivos con el nombre desactualizado) por la línea de comando
#de ahí que usemos el módulo sys

with open(sys.argv[1]) as f:
  #Almacenamos las lineas en una lista
  lineas = f.readlines()
  for linea in lineas:

    #Remplazamos el antiguo nombre de usuario
    nueva_ruta = linea.replace("jane","jdoe")

    #Creamos un subproceso que consiste en cambiar el nombre del directorio, en actualizarlo vaya
    subprocess.run(["mv",linea.strip(),nueva_ruta.strip()])


