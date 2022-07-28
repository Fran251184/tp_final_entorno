#!/bin/bash
   
FILE="/home/pancho/tuia/data/$(basename $1)"

echo "$FILE"
echo "PWD: $(pwd)"

[ ! -e  $FILE ] && echo "El archivo no existe. Procure que el archivo exista y vuelva a ejecutar el programa." && exit 1
[ ! -f  $FILE ] && echo "El archivo no es un archivo regular. Procure que el archivo sea un archivo regular y vuelva a ejecutar el programa." && exit 2
[ ! -r  $FILE ] && echo "El archivo no tiene permiso de lectura. Cambie los permisos de lectura del archivo y vuelva a ejecutar el programa." && exit 3
[ ! -x  $FILE ] && echo "El archivo no tiene permiso de ejecución. Cambie los permisos de ejecución del archivo y vuelva a ejecutar el programa. " && exit 4
[ ! -s  $FILE ] && echo "El archivo esta vacio. Procure que el archivo no este vacío y vuelva a ejecutar el programa." && exit 5
[ $# -ne  1 ] && echo "El programa solo admite un archivo como argumento. Procure ingresar sólo un archivo .txt y vuelva a ejecutar el programa." && exit 6

if [[ $FILE =~ ^.+\.txt$ ]]
then
	echo
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
	echo "El siguiente programa hará un análisis sobre el texto del archivo $FILE de aucuerdo a un menú de opciones. El programa irá mostrando por pantalla los resultados. Al finalizar, los resultadados se motrarán también por pantallas. Si usted quiere volver a consultar los resultados de su análisis, ellos quedarán guardados en el archivo resultados_"$NOM"_$FILE en este mismo directorio. Para finalizar el programa, eliga la opcion correspondiente en el menú."
	echo
	echo "¿Desea hacer el análisis del texto del archivo $FILE? (S/N)"; read RESP
	echo
	until ([ "$RESP" == "S" ] || [ "$RESP" == "N" ])
	do 
	       	echo "El valor ingresado no es correcto (S para SI y N para no)"        
	        echo
		echo "¿Desea hacer el análisis del texto del archivo $FILE? (S/N)"; read RESP
		echo
	done   
	if [[ "$RESP" == "S" ]]
	then
        	source menu.sh $FILE $NOM
	elif [[ "$RESP" == "N" ]]
	then
		clear
		echo "HA FINALIADO EL PROGRAMA" 
		echo
		echo "Hasta luego $NOM!"
	      	echo
	fi

	exit 0
  
else
	echo "El archivo debe tener terminación .txt. Corriga esto y vuelva a ejecutar el programa."
        exit 6

fi

