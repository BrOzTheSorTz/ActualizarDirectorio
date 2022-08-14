# ActualizarDirectorio


Imaginemos la situación en la que estamos en una empresa y actualiza la política de nombre de usuarios.
Por tanto nos tocaría cambiarlos y lo que esto conlleva, es decir, todos los archivos,etc. del ordenador con el nombre
de usuario antiguo cambiarlos pro el nuevo.

Para ello hemos creado un script con Bash que permite coger aquellas direcciones almacenadas en un archivo de texto
de aquel usuario que ha sido cambiado, posteriormente verificar que están en el SO y después enviarlas a un fichero de texto.

Luego hemos creado otro script en Python, que permite reemplazar el usuario antiguo por el nuevo usando el fichero de texto
creado por el script anterior.Y con un subproceso hemos simulado el comando "mv" para cambiar el nombre de todas esas direcciones
