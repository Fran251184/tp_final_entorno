El programa hace un analisis de texto de un archivo .txt que usted le ingrese en base a un menú de opciones. El programa muestra por pantalla los resultados del análisis a medida que ejecuta las opciones del menú. Al finalizar el programa se imprimen por pantalla todos los resultados de su análisis. El contenedor tiene cargado un archivo que se llama rayuela.txt para que usted indage cómo funciona el programa. Pero la idea es que lo utilice con cualquier archivo .txt que usted ingrese al contenedor. Para poder ejecutar el programa primero debe clonar el repositorio mediante el siguiente comando:

$ git clone https://github.com/Fran251184/tp_final_entorno

Luego debe correr el contenedor mediante el siguiente comando:

$ docker run -it tp_entorno_prog inicio.sh

A partir de aquí el programa lo guiará de acuerdo a las opciones que vaya eligiendo. Si usted decide hacer el análisis de un archivo propio, deberá agregarlo mediante el comando "$docker cp". El procedimiento para agregarlo se encuentra descripto en la ejecución del programa. Es importante que el archivo sea agregado una vez inicializado el programa siguiendo las instrucciones que se detallan, es decir, usted no debe montar un volumen al ejecutar el run del docker. Hemos resuelto usar el comando "docker cp" dado que es eficiente para copiar archivos estáticos del host al contenedor o viceversa, y como el programa no modifica el archivo que analiza (sólo lo lee, es decir, deviene estático), si usted sigue los pasos de cómo agregar el archivo, no tendrá dificultades para analizarlo. Sólo debe saber que una vez agregado el archivo al contenedor, si usted hace modificaciones de su archivo en el host, no serán tomados en cuenta por el programa. En caso de querer hacer modificaciones de su archivo de origen que desea analizar, procure hacerlas antes de agregar el archivo al contenedor.       



Saludos! 


