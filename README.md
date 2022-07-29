El programa hace un analisis de texto de un archivo txt que usted le ingrese como parámetro en base a un menu de opciones. El programa muestra por pantalla los resultados del análisis a medida que ejecuta las opciones del menu. Al finalizar el programa se imprimen por pantalla todos los resultados de su análisis. El contenedor tiene cargados dos arcivhos txt: rayuela.txt y el_tiempo_de_borges.txt para que usted indage cómo funciona el programa. Pero el programa funciona con cualquier archivo txt que ingrese como parámetro indicando su ruta relativa o absoluta al correr el contenedor. Para poder ejecutar el programa primero clonar en su pc el repositorio mediante el siguiente comando:

$ git clone https://github.com/Fran251184/tp_final_entorno

Luego debe correr el contenedor mediante el siguiente comando:

$ docker run -it tp_entorno_prog <nombre de archivo> 

A modo de ejemplo, usted puede evaluar qué hace el programa mediante el siguiente comando:

$ docker run -it tp_entorno_prog rayuela.txt


