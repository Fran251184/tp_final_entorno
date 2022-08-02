#!/bin/bash
     
clear
echo "Ingrese su nombre (sólo el nombre, sin espacios, utilizando letras mayúsculas o minúsculas): "; read NOM
echo

until [[ $NOM =~ ^[A-Za-sÑñ]+$ ]]
do
	echo "El nombre ingresado no es correcto. Utilizce sólo letras mayúsculas y minúsculas sin espacios."
       	echo
        echo "Ingrese nuevamente su nombre: "; read NOM
        echo
done

clear
echo "Hola $NOM!"
echo
echo "El siguiente programa hace un análisis sobre el texto de un archivo .txt de aucuerdo a un menú de opciones. El programa muestra por pantalla los resultados. Al finalizar, los resultadados se muestran también por pantallas. Para concluir el programa, eliga la opcion correspondiente en el menú."
sleep 7
echo
echo "El programa dispone de un ejemplo de analisis sobre un archivo que se llama rayuela.txt. La idea es que usted, mediante este ejemplo, evalue cómo funciona el programa, pero el objetivo es que pueda utilizarlo para el anáilsis de cualquier archivo .txt que disponga en su pc." 
echo 
echo "$NOM, ¿quiere usted (1) evaluar qué hace el programa o (2) utilizar el programa para analizar un archivo .txt de su pc? (Ingrese 1 para la primera opción o 2 para la segunda opción)"; read VAR

until ([ $VAR -eq 1 ] || [ $VAR -eq 2 ])
do
        clear
	echo "El valor ingresado no es correcto. Ingrese 1 para evaluar qué hace el programa o 2 para analizar un archivo .txt de su pc."
        echo
        echo "Ingrese nuevamente la opción."; read VAR
        echo
done

if [ $VAR -eq 1 ]
then
	clear
	echo "El programa ejecutará un analisis como ejemplo del archivo rayuela.txt, el cual contiene el siguiente texto:"
	echo 
	cat rayuela.txt
	sleep 13
	./analisis_texto.sh rayuela.txt $NOM
elif [ $VAR -eq 2 ] 
then	
	clear
	echo "Para analizar un archivo .txt que usted desee, primero deberá agregar el archivo al contenedor que corre este mismo programa siguiendo las instrucciones que acontinuación se detallan: "
	echo
	echo "(1) Abra otra terminal en bash y ejecute el siguiente comando: "
	echo
       	echo "$ docker ps"
	echo
	echo "(2) En esta otra terminal copie el ID del contenedor que está corriendo el actual programa y ejecute el siguente comando:"
	echo
	echo "$ docker cp <ruta_de_su_archivo> <ID>:./<nombre_de_su_archivo>"
	echo "(Ejemplo: $ docker cp /home/pancho/tuia/mi_texto.txt deced46952fa:./mi_texto.txt)" 
	echo 
	echo 
	echo "(3) Cierre la terminal de bash e ingrese aqui mismo el nombre del archivo que desea analizar (sólo el nombre, no la ruta). Procure escribir tal cual agregó al contenedor el nombre del archivo, y que sea .txt. De lo contrario el programa se detendrá con una sentencia de error y tendrá que volver a ejecutar el programa, repitiendo este procedimiento."; read FILE
	./analisis_texto.sh $FILE $NOM
fi
		
