El programa hace un analisis de texto de un archivo txt que usted le ingrese en base a un menu de opciones. El programa muestra por pantalla los resultados del análisis a medida que ejecuta las opciones del menu. Al finalizar el programa se imprimen por pantalla todos los resultados de su análisis. El contenedor tiene cargado un archivo que se llama  rayuela.txt para que usted indage cómo funciona el programa. Pero la idea es que lo utilice con cualquier archivo txt que usted ingrese indicando la ruta al correr el contenedor. Para poder ejecutar el programa primero debe clonar el repositorio mediante el siguiente comando:

$ git clone https://github.com/Fran251184/tp_final_entorno

Luego debe correr el contenedor mediante el siguiente comando:

$ docker run -it tp_entorno_prog inicio.sh

A aprtir de aquí el programa lo guiará de acuerdo a las opciones que vaya eligiendo. Si usted decide hacer el análisis de un archivo propio, deberá agregarlo mediante el comando "$docker cp". El procedimiento para agregarlo se encuentra descripto en la ejecuención del programa. Es importante que el archivo sea agregado una vez inicializado el programa siguiendo las intrucciones que se detallan, es decir, usted no debe montar un vulumen al ejecurtar el run del docker. Hemos resuelto usar el comando "docker cp" dado que es eficiente para copiar arvhivos estáticos del host al contenedor o viceversa, y como el programa no modifica el arvhivo que analiza (sólo lo lee), si usted sigue los pasos de cómo agregar el archivo, no tendrá dificultades para analizarlo. Sólo debe saber que una vez agregado el arvhivo al contenedor, si usted hace modificaciones en su arvhivo, no serán tomados encuenta por el programa. En caso de querer hacer alguna modificación en su arvhivo de orgien que desea analizar, procuere hacer las modificaciones antes de agregar el arvhivo al contenedor.       



Saludos! 


