#!/bin/bash

#Abrimos un archivo en blanco
> oldFiles.txt

#Buscamos en una lista de direcciones de archivos el nombre de jane y nos quedamos con
# la parte que nos interesa que es el relative path, por que viene como ; (nº usuario relativePath)

#Hemos usado un pipe para conectar el input de una función con el output de otra

files=$(grep " jane " /home/student-02-cce92bdb7506/data/list.txt | cut -d ' ' -f 3)

#Recorremos cada línea y vemos si se encuentra en el sistema operativo con --> (test -e "..$line")
#Si se encuentra la añadimos al fichero de testo
for line in $files;do
  if test -e "..$line";then
    echo "/home/student-02-cce92bdb7506$line" >> oldFiles.txt
  fi
done



