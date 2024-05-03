El programa está dockerizado y escrito en lenguaje Bash, pensado para ser ejecutado desde una consola de linux. Hace un analisis de texto de un archivo.txt que se ingrese en base a un menú de opciones y muestra por pantalla los resultados del análisis a medida que ejecuta las opciones del menú. Al finalizar el programa se imprimen por pantalla todos los resultados de su análisis. El contenedor (docker) posee un archivo que rayuela.txt para que se pueda indager cómo funciona el programa. Pero la idea es que lo utilice con cualquier archivo .txt que usted ingrese al contenedor. Para poder ejecutar el programa primero debe clonar el repositorio mediante el siguiente comando:

$ git clone https://github.com/Fran251184/tp_final_entorno

Luego debe construir el contenedor mediante el siguiente comando: 

$ docker build -t tp_entorno_prog

Por último debe correr el contenedor mediante el siguiente comando:

$ docker run -it tp_entorno_prog inicio.sh

A partir de aquí el programa guía al usuario de acuerdo a las opciones que vaya eligiendo. Si se decide hacer el análisis de un archivo propio, deberá ser agregado  mediante el comando "$docker cp". El procedimiento para agregarlo se encuentra descripto en la ejecución del programa. Es importante que el archivo sea agregado una vez inicializado el programa siguiendo las instrucciones que se detallan. Es decir, no se debe montar un volumen al ejecutar el run del docker. Hemos resuelto usar el comando "docker cp" dado que es eficiente para copiar archivos estáticos del host al contenedor o viceversa, y, como el programa no modifica el archivo que analiza (sólo lo lee, es decir, deviene estático), si se siguen los pasos de cómo agregar el archivo, no habrá dificultades para que el programa lo analice. Sólo se debe tener en cuenta que una vez agregado el archivo al contenedor, si se le modifican en el host, no serán tomados en cuenta por el programa. En caso que se queiera modificar el archivo de origen a analizar, las acciones deben ser hechas antes de agregar el archivo al contenedor.       


